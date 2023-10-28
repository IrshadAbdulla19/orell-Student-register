import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:student_register/application/bussiness_logic/Navigations/navigations_bloc.dart';
import 'package:student_register/application/bussiness_logic/Register/register_bloc.dart';
import 'package:student_register/core/string_constants.dart';
import 'package:student_register/presentestion/register/register_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<NavigationsBloc>(context)
        .add(NavigationsEvent.navToRegisterPage());
    BlocProvider.of<RegisterBloc>(context).add(RegisterEvent.getAccdamicYear());
    return Scaffold(
        body: BlocListener<NavigationsBloc, NavigationsState>(
      listener: (context, state) {
        if (state.toReristerPage == true) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => StudentRegisterScreen(),
              ));
        }
      },
      child: Center(
        child: Lottie.asset("assets/lottie/Animation - 1698467664051.json"),
      ),
    ));
  }
}
