import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_register/application/bussiness_logic/Register/register_bloc.dart';
import 'package:student_register/core/constants.dart';
import 'package:student_register/presentestion/register/widgets/accadamic_drop_down.dart';
import 'package:student_register/presentestion/register/widgets/filling_filed.dart';

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
                return AccadamicDropDownMenu(size: size, list: list);
              } else {
                return TextButton(
                    onPressed: () {
                      BlocProvider.of<RegisterBloc>(context)
                          .add(RegisterEvent.getAccdamicYear());
                    },
                    child: const Text("Get Accadamic Years"));
              }
            },
          ),
          kHeight25,
          FillingFileds(
            controller: studentNameController,
            fill: false,
            headText: "Student Name",
            hintText: "Enter Student Name",
            maxLines: 1,
          ),
          kHeight25,
          FillingFileds(
            controller: emailController,
            fill: false,
            headText: "Email",
            hintText: "Enter Email",
            maxLines: 1,
          ),
          kHeight25,
          FillingFileds(
            controller: addressController,
            fill: true,
            headText: "Address",
            hintText: "Enter Address",
            maxLines: 4,
          ),
        ],
      ),
    );
  }
}
