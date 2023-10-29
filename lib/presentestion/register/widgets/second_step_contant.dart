import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_register/application/bussiness_logic/Register/register_bloc.dart';
import 'package:student_register/core/constants.dart';
import 'package:student_register/presentestion/register/widgets/class_list_drop_down.dart';
import 'package:student_register/presentestion/register/widgets/filling_filed.dart';
import 'package:student_register/presentestion/register/widgets/image_picker_widget.dart';

class SecondStepContant extends StatelessWidget {
  SecondStepContant(
      {super.key,
      required this.whatsAppNumController,
      required this.gurdianNameController,
      required this.contactNumController,
      required this.secndKey});
  final TextEditingController whatsAppNumController;
  final TextEditingController gurdianNameController;
  final TextEditingController contactNumController;
  final GlobalKey<FormState> secndKey;
  List<String> list = [
    "Select course",
  ];
  bool isGet = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      key: secndKey,
      child: Column(
        children: [
          BlocBuilder<RegisterBloc, RegisterState>(
            builder: (context, state) {
              if (state.isClassListFetchSuccess) {
                for (var element in state.classModelList!) {
                  list.add(element.course);
                }
                return DropDownMenuForClassList(size: size, list: list);
              } else {
                return const Text("Data is Fetching...");
              }
            },
          ),
          kHeight25,
          FillingFileds(
            controller: whatsAppNumController,
            fill: true,
            headText: "WhatsApp Number",
            hintText: "Enter WhatsApp Number here",
            maxLines: 1,
          ),
          kHeight25,
          ImagePickerWidget(
            size: size,
            headText: "Image",
          ),
          FillingFileds(
            controller: gurdianNameController,
            fill: true,
            headText: "Guardian Name",
            hintText: "Enter Guardian Name here",
            maxLines: 1,
          ),
          kHeight25,
          FillingFileds(
            controller: contactNumController,
            fill: false,
            headText: "Contact Number",
            hintText: "Enter Contact Number Here",
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
