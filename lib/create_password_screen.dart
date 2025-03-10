import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/const/color.dart';
import 'package:untitled1/const/screen_size.dart';
import 'package:untitled1/util/button.dart';
import 'package:untitled1/util/util_header.dart';

import 'const/text_styles.dart';

class CreatePasswordScreen extends StatelessWidget {
  const CreatePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(
          children: [
            UtilHeader(
              onBackButtonPressed: () {
                Navigator.pop(context);
              },
              onCloseButtonPressed: () {},
            ),
            Container(
              height: 350,
              width: getScreenWidth(context) * .9,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Password setting',
                        style: kStyle1.copyWith(color: seedColor)),
                    SizedBox(
                      height: 15,
                    ),
                    Text('Password', style: kStyle1),
                    TextField(
                        decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      hintText: 'Enter password',
                      hintStyle: kStyle2.copyWith(color: Colors.grey.shade400),
                    )),
                    Text('Confirm Password', style: kStyle1),
                    TextField(
                        decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      hintText: 'Enter password',
                      hintStyle: kStyle2.copyWith(color: Colors.grey.shade400),
                    ))
                  ],
                ),
              ),
            ),
            UtilButton(
              onTap: () {},
              textSize: 16,
              text: 'Create Password',
            )
          ],
        ),
      ),
    );
  }
}
