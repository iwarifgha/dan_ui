import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/const/screen_size.dart';

import 'button.dart';

class UtilDialog extends StatelessWidget {
  final Widget dialogImage;
  final String dialogTitle;
  final String dialogDescription;
  final Widget dialogButton;

  const UtilDialog({
    super.key,
    required this.dialogImage,
    required this.dialogTitle,
    required this.dialogDescription,
    required this.dialogButton,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Container(
        height: 300,
        width: getScreenWidth(context) * .7,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: SingleChildScrollView(
            child: Column(
          spacing: 10,
          children: [
            SizedBox(
              height: 100,
              child: dialogImage,
            ),
            Text(dialogTitle,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Plus Jakarta Sans')),
            Center(
              child: Text(
                dialogDescription,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Nunito Sans'),
              ),
            ),
            dialogButton
          ],
        )),
      ),
    );
    ;
  }
}
