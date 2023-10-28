import 'package:injectable/injectable.dart';

@LazySingleton()
class Navigations {
  toRegisterPage() async {
    await Future.delayed(const Duration(seconds: 3));
    return true;
  }

  forFormNavigation(int index) {
    int currentIndex = index;
    return currentIndex;
  }
}
