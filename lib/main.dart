import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_register/application/bussiness_logic/Navigations/navigations_bloc.dart';
import 'package:student_register/domain/core/di/injuctable.dart';
import 'prasentetion/splash/splash_screen.dart';

void main() async {
  await configInjuction();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<NavigationsBloc>(),
        ),
      ],
      child: MaterialApp(
        home: SplashScreen(),
      ),
    );
  }
}
