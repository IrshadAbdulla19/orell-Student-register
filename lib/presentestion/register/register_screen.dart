import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:student_register/application/bussiness_logic/Navigations/navigations_bloc.dart';
import 'package:student_register/application/bussiness_logic/Register/register_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:student_register/core/string_constants.dart';
import 'package:student_register/domain/register/model/strudent_register_models.dart';
import 'package:student_register/domain/student/student_model/student_model.dart';
import 'widgets/first_step_contant.dart';
import 'widgets/second_step_contant.dart';
import 'widgets/third_step_contant.dart';

class StudentRegisterScreen extends StatelessWidget {
  StudentRegisterScreen({super.key});
  TextEditingController studentNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController whatsAppNumController = TextEditingController();
  TextEditingController guardianNameController = TextEditingController();
  TextEditingController contactNumController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();
  final firstKey = GlobalKey<FormState>();
  final secondtKey = GlobalKey<FormState>();
  final thirdKey = GlobalKey<FormState>();
  AccadamicYearModel? acdmcYr;
  ClassListModel? selectCrse;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<NavigationsBloc, NavigationsState>(
        builder: (context, state) {
          return BlocConsumer<RegisterBloc, RegisterState>(
            listener: (context, registerstate) async {
              if (registerstate.userSave) {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: LottieBuilder.asset("assets/lottie/success.json"),
                  ),
                );
                await Future.delayed(const Duration(seconds: 2));
                // ignore: use_build_context_synchronously
                Navigator.pop(context);
                afterSave();
                BlocProvider.of<NavigationsBloc>(context)
                    .add(NavigationsEvent.forFormNavigation(0));
              }
            },
            builder: (context, registerstate) {
              return Stepper(
                  currentStep: state.currentFormInt,
                  onStepCancel: () {
                    int currentIndex = state.currentFormInt;
                    if (state.currentFormInt > 0) {
                      BlocProvider.of<NavigationsBloc>(context).add(
                          NavigationsEvent.forFormNavigation(
                              currentIndex -= 1));
                    }
                  },
                  onStepContinue: () async {
                    int currentIndex = state.currentFormInt;
                    String accadmYr = await getAccadamicYear();
                    if (state.currentFormInt == 0) {
                      if (firstKey.currentState!.validate()) {
                        if (accadmYr != "Select the Accadamic Year") {
                          for (var element in registerstate.accdamicYearList!) {
                            if (element.academicYear == accadmYr) {
                              acdmcYr = element;
                              // ignore: use_build_context_synchronously
                              BlocProvider.of<RegisterBloc>(context).add(
                                  RegisterEvent.getClassList(
                                      element.academicYearId.toString()));
                              break;
                            }
                          }
                          // ignore: use_build_context_synchronously
                          BlocProvider.of<NavigationsBloc>(context).add(
                              NavigationsEvent.forFormNavigation(
                                  currentIndex += 1));
                        } else {
                          // ignore: use_build_context_synchronously
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content:
                                    Text('Please Select the Accadamic Year')),
                          );
                        }
                      }
                    } else if (state.currentFormInt == 1) {
                      String selectCourse = await getCourse();
                      if (secondtKey.currentState!.validate()) {
                        if (selectCourse != "Select course") {
                          for (var element in registerstate.classModelList!) {
                            if (element.course == selectCourse) {
                              selectCrse = element;
                              // ignore: use_build_context_synchronously
                              BlocProvider.of<NavigationsBloc>(context).add(
                                  NavigationsEvent.forFormNavigation(
                                      currentIndex += 1));
                              break;
                            }
                          }
                        } else {
                          // ignore: use_build_context_synchronously
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Please Select the course')),
                          );
                        }
                      }
                    } else {
                      if (passwordController.text ==
                          passwordConfirmController.text) {
                        StudentModel thisStudent = StudentModel(
                          academicYearId: acdmcYr!.academicYearId.toString(),
                          address: addressController.text,
                          createdBy: userNameController.text,
                          emailId: emailController.text,
                          institutionId: 32,
                          mobileNo: contactNumController.text,
                          name: studentNameController.text,
                          password: passwordController.text,
                          classId: selectCrse!.courseTreeId.toString(),
                          userClassId: 0,
                          userId: "0",
                          userType: "STUDENT",
                          whatsappNo: whatsAppNumController.text,
                          userCode: userNameController.text,
                        );
                        // ignore: use_build_context_synchronously
                        BlocProvider.of<RegisterBloc>(context)
                            .add(RegisterEvent.saveUser(thisStudent));
                      } else {
                        // ignore: use_build_context_synchronously
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Password is not match")));
                      }
                    }
                  },
                  onStepTapped: (int index) {
                    BlocProvider.of<NavigationsBloc>(context)
                        .add(NavigationsEvent.forFormNavigation(index));
                  },
                  steps: [
                    Step(
                      title: const Text("Add Detailes"),
                      content: FirstStepContant(
                        studentNameController: studentNameController,
                        emailController: emailController,
                        addressController: addressController,
                        firstKey: firstKey,
                      ),
                    ),
                    Step(
                      title: const Text("Add Detailes"),
                      content: SecondStepContant(
                          whatsAppNumController: whatsAppNumController,
                          gurdianNameController: guardianNameController,
                          contactNumController: contactNumController,
                          secndKey: secondtKey),
                    ),
                    Step(
                      title: const Text("Student Login"),
                      content: ThirdStepContant(
                        thirdtKey: thirdKey,
                        userNameController: userNameController,
                        passwordController: passwordController,
                        passwordConfirmController: passwordConfirmController,
                      ),
                    ),
                  ]);
            },
          );
        },
      ),
    );
  }

  Future<String> getAccadamicYear() async {
    SharedPreferences sharepref = await SharedPreferences.getInstance();
    String? accadamYr = sharepref.getString(accadamicYear);
    return accadamYr ?? "Select the Accadamic Year";
  }

  Future<String> getCourse() async {
    SharedPreferences sharepref = await SharedPreferences.getInstance();
    String? thisCourse = sharepref.getString(course);
    return thisCourse ?? "Select course";
  }

  afterSave() async {
    final sharepref = await SharedPreferences.getInstance();
    sharepref.clear();
    userNameController.clear();
    emailController.clear();
    addressController.clear();
    whatsAppNumController.clear();
    guardianNameController.clear();
    contactNumController.clear();
    studentNameController.clear();
    passwordController.clear();
    passwordConfirmController.clear();
  }
}
