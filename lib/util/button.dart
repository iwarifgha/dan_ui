import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../const/color.dart';

class UtilButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final double textSize;

  const UtilButton({super.key, required this.onTap,required this.textSize, required this.text});

  //
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(20),
        width: double.maxFinite,
        height: 61,
        decoration: BoxDecoration(
          color: seedColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white,
                fontSize: textSize,
                fontWeight: FontWeight.normal,
                fontFamily: 'Nunito Sans'),
          ),
        ),
      ),
    );
  }
}
