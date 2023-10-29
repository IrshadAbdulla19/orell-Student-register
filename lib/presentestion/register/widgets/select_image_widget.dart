import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:student_register/core/constants.dart';

class SelectImage extends StatelessWidget {
  const SelectImage({super.key, required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                actionsAlignment: MainAxisAlignment.center,
                actions: [
                  TextButton.icon(
                      onPressed: () async {
                        String img = '';
                        ImagePicker picker = ImagePicker();
                        var image =
                            await picker.pickImage(source: ImageSource.gallery);
                        if (image != null) {
                          img = image.path;
                        }
                        // ignore: use_build_context_synchronously
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.photo_library_sharp),
                      label: const Text(
                        "Gallery",
                        style: TextStyle(color: kBlack),
                      ))
                ],
              );
            },
          );
        },
        child: Container(
          alignment: Alignment.center,
          width: size.width * 0.24,
          height: size.width * 0.1,
          color: kBlack.withOpacity(0.4),
          child: Text("Choose File"),
        ));
  }
}
