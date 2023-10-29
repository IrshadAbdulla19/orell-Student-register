import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:student_register/core/string_constants.dart';

class DropDownMenuForClassList extends StatelessWidget {
  DropDownMenuForClassList({super.key, required this.size, required this.list});
  final Size size;
  String accadamicYear = "Select course";
  List<String> list;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: size.width * 1,
      decoration: BoxDecoration(border: Border.all()),
      child: DropdownMenu<String>(
        width: size.width * 0.7,
        initialSelection: list.first,
        onSelected: (String? value) {
          addStringToSharePref(value!);
        },
        inputDecorationTheme: InputDecorationTheme(),
        dropdownMenuEntries:
            list.map<DropdownMenuEntry<String>>((String value) {
          return DropdownMenuEntry<String>(value: value, label: value);
        }).toList(),
      ),
    );
  }

  addStringToSharePref(String value) async {
    SharedPreferences sharepref = await SharedPreferences.getInstance();
    sharepref.setString(course, value);
  }
}
