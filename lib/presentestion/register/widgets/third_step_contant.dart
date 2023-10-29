import 'package:flutter/material.dart';
import 'package:student_register/core/constants.dart';
import 'package:student_register/presentestion/register/widgets/filling_filed.dart';

class ThirdStepContant extends StatelessWidget {
  const ThirdStepContant(
      {super.key,
      required this.userNameController,
      required this.passwordController,
      required this.passwordConfirmController,
      required this.thirdtKey});
  final TextEditingController userNameController;
  final TextEditingController passwordController;
  final TextEditingController passwordConfirmController;
  final GlobalKey<FormState> thirdtKey;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      key: thirdtKey,
      child: Column(
        children: [
          kHeight25,
          FillingFileds(
            controller: userNameController,
            fill: false,
            headText: "Username",
            hintText: "Enter Username",
            maxLines: 1,
          ),
          kHeight25,
          FillingFileds(
            controller: passwordController,
            fill: false,
            headText: "Password",
            hintText: "Enter password",
            maxLines: 1,
          ),
          kHeight25,
          FillingFileds(
            controller: passwordConfirmController,
            fill: false,
            headText: "Confirm password",
            hintText: "Enter password to confirm",
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
