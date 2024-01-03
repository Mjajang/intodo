import 'package:flutter/material.dart';
import 'package:intodo/src/values/constants/constants.dart';

class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key});

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  TextEditingController judulController = TextEditingController();
  TextEditingController catatanController = TextEditingController();

  @override
  void dispose() {
    judulController.dispose();
    catatanController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: AppColors.lightBackgroundColor,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_outlined,
              color: AppColors.textColor,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.push_pin,
                color: AppColors.textColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_alert,
                color: AppColors.textColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.archive,
                color: AppColors.textColor,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: judulController,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Judul",
                    hintStyle:
                        AppTextStyles.whiteTextStyle.copyWith(fontSize: 20),
                    border: InputBorder.none,
                  ),
                ),
                TextFormField(
                  controller: catatanController,
                  textInputAction: TextInputAction.newline,
                  maxLines: null,
                  autofocus: true,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: "Catatan",
                    hintStyle: AppTextStyles.whiteTextStyle,
                    border: InputBorder.none,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
