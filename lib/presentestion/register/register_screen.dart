import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_register/application/bussiness_logic/Navigations/navigations_bloc.dart';
import 'package:student_register/application/bussiness_logic/Register/register_bloc.dart';
import 'package:student_register/core/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:student_register/core/string_constants.dart';

class StudentRegisterScreen extends StatelessWidget {
  StudentRegisterScreen({super.key});
  TextEditingController studentNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  final firstKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<NavigationsBloc, NavigationsState>(
        builder: (context, state) {
          return Stepper(
              currentStep: state.currentFormInt,
              onStepCancel: () {
                int currentIndex = state.currentFormInt;
                if (state.currentFormInt > 0) {
                  BlocProvider.of<NavigationsBloc>(context).add(
                      NavigationsEvent.forFormNavigation(currentIndex -= 1));
                }
              },
              onStepContinue: () async {
                int currentIndex = state.currentFormInt;
                String accadmYr = await getAccadamicYear();
                if (state.currentFormInt == 0) {
                  if (firstKey.currentState!.validate()) {
                    if (accadmYr != "Select the Accadamic Year") {
                      // ignore: use_build_context_synchronously
                      BlocProvider.of<NavigationsBloc>(context).add(
                          NavigationsEvent.forFormNavigation(
                              currentIndex += 1));
                    } else {
                      // ignore: use_build_context_synchronously
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Please Select the Accadamic Year')),
                      );
                    }
                  }
                } else if (state.currentFormInt == 1) {
                  if (firstKey.currentState!.validate()) {
                    BlocProvider.of<NavigationsBloc>(context).add(
                        NavigationsEvent.forFormNavigation(currentIndex += 1));
                  }
                } else {}
              },
              onStepTapped: (int index) {
                BlocProvider.of<NavigationsBloc>(context)
                    .add(NavigationsEvent.forFormNavigation(index));
              },
              steps: [
                Step(
                  title: Text("Fill the parts"),
                  content: FirstStepContant(
                    studentNameController: studentNameController,
                    emailController: emailController,
                    addressController: addressController,
                    firstKey: firstKey,
                  ),
                ),
                Step(
                  title: Text("fill the form"),
                  content: Text("fill part"),
                ),
                Step(
                  title: Text("fill the form"),
                  content: Text("fill part"),
                ),
              ]);
        },
      ),
    );
  }

  Future<String> getAccadamicYear() async {
    SharedPreferences sharepref = await SharedPreferences.getInstance();
    String? accadamYr = sharepref.getString(accadamicYear);
    return accadamYr ?? "Select the Accadamic Year";
  }
}

class FirstStepContant extends StatelessWidget {
  FirstStepContant(
      {super.key,
      required this.studentNameController,
      required this.addressController,
      required this.emailController,
      required this.firstKey});
  final TextEditingController studentNameController;
  final TextEditingController emailController;
  final TextEditingController addressController;
  final GlobalKey<FormState> firstKey;
  List<String> list = [
    "Select the Accadamic Year",
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      key: firstKey,
      child: Column(
        children: [
          BlocBuilder<RegisterBloc, RegisterState>(
            builder: (context, state) {
              if (state.isAccademicFetchSuccess) {
                for (var element in state.accdamicYearList!) {
                  list.add(element.academicYear);
                }
              }
              return state.isAccademicFetchSuccess == true
                  ? Container(
                      alignment: Alignment.center,
                      width: size.width * 0.8,
                      decoration: BoxDecoration(border: Border.all()),
                      child: DropdownMenu<String>(
                        width: size.width * 0.7,
                        initialSelection: list.first,
                        onSelected: (String? value) {
                          addStringToSharePref(
                              value ?? "Select the Accadamic Year");
                        },
                        inputDecorationTheme: InputDecorationTheme(),
                        dropdownMenuEntries:
                            list.map<DropdownMenuEntry<String>>((String value) {
                          return DropdownMenuEntry<String>(
                              value: value, label: value);
                        }).toList(),
                      ),
                    )
                  : NonDropDownMenu(
                      size: size,
                    );
            },
          ),
          kHeight25,
          FillingFileds(
            studentNameController: studentNameController,
            fill: false,
            headText: "Student Name",
            hintText: "Enter Student Name",
            maxLines: 1,
          ),
          kHeight25,
          FillingFileds(
            studentNameController: emailController,
            fill: false,
            headText: "Email",
            hintText: "Enter Email",
            maxLines: 1,
          ),
          kHeight25,
          FillingFileds(
            studentNameController: addressController,
            fill: true,
            headText: "Address",
            hintText: "Enter Address",
            maxLines: 4,
          ),
        ],
      ),
    );
  }

  addStringToSharePref(String value) async {
    SharedPreferences sharepref = await SharedPreferences.getInstance();
    sharepref.setString(accadamicYear, value);
  }
}

class FillingFileds extends StatelessWidget {
  const FillingFileds(
      {super.key,
      required this.studentNameController,
      required this.fill,
      required this.headText,
      required this.hintText,
      required this.maxLines});

  final TextEditingController studentNameController;
  final bool fill;
  final String headText;
  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headText,
          style: headTextStyle,
        ),
        kHeight10,
        TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please Fill the Form";
            }
            return null;
          },
          maxLines: maxLines,
          controller: studentNameController,
          decoration: InputDecoration(
              filled: fill,
              fillColor: kFillClrBlue.shade300,
              hintText: hintText,
              hintStyle: hintTextStyle,
              border: OutlineInputBorder()),
        ),
      ],
    );
  }
}

class NonDropDownMenu extends StatelessWidget {
  NonDropDownMenu({super.key, required this.size});
  final Size size;
  String accadamicYear = "Select the Accadamic Year";
  List<String> list = [
    "Select the Accadamic Year",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: size.width * 0.8,
      decoration: BoxDecoration(border: Border.all()),
      child: DropdownMenu<String>(
        initialSelection: list.first,
        onSelected: (String? value) {
          accadamicYear = value!;
        },
        dropdownMenuEntries:
            list.map<DropdownMenuEntry<String>>((String value) {
          return DropdownMenuEntry<String>(value: value, label: value);
        }).toList(),
      ),
    );
  }
}
