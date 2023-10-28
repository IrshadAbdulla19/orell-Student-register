import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_register/application/bussiness_logic/Navigations/navigations_bloc.dart';

class StudentRegisterScreen extends StatelessWidget {
  const StudentRegisterScreen({super.key});

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
              onStepContinue: () {
                int currentIndex = state.currentFormInt;
                print(state.currentFormInt);
                if (state.currentFormInt >= 0 && state.currentFormInt <= 1) {
                  print(state.currentFormInt);
                  BlocProvider.of<NavigationsBloc>(context).add(
                      NavigationsEvent.forFormNavigation(currentIndex += 1));
                }
              },
              onStepTapped: (int index) {
                BlocProvider.of<NavigationsBloc>(context)
                    .add(NavigationsEvent.forFormNavigation(index));
              },
              steps: [
                Step(
                  title: Text("fill the form"),
                  content: Text("fill part"),
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
}
