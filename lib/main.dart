import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled1/util/button.dart';
import 'package:untitled1/const/color.dart';
import 'package:untitled1/util/util_dialog.dart';

import 'create_password_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: seedColor),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  _showCreatePasswordDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return UtilDialog(
              dialogImage: SvgPicture.asset('assets/icons/alert.svg'),
              dialogTitle: 'Email already exists!',
              dialogDescription: 'Dear customer, we seem to already have your email. '
                           'Kindly proceed to create password',
              dialogButton: UtilButton(onTap: ( ){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CreatePasswordScreen()));
              }, textSize: 18, text: 'Create password'),

          );
        });
  }

  _showVerificationDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return UtilDialog(
            dialogImage: SvgPicture.asset('assets/icons/star.svg'),
            dialogTitle: 'Complete your verification',
            dialogDescription: 'Almost there! Kindly complete your level 2 verification to proceed.',
            dialogButton: UtilButton(onTap: ( ){}, textSize: 18, text: 'Proceed to level 2'),

          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UtilButton(
              onTap: () {
                _showCreatePasswordDialog(context);
              },
              text: 'Tap to see Create password dialog',
              textSize: 15),
          UtilButton(
              onTap: () {
                _showVerificationDialog(context);
              },
              text: 'Tap to see verification dialog',
              textSize: 18),
        ],
      ),
    );
  }
}
