import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/const/text_styles.dart';

class UtilHeader extends StatelessWidget {
  final VoidCallback onBackButtonPressed;
  final VoidCallback onCloseButtonPressed;

  const UtilHeader(
      {super.key,
      required this.onBackButtonPressed,
      required this.onCloseButtonPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
              onTap: onBackButtonPressed,
              child: Icon(
                Icons.arrow_back_ios,
                size: 24,
              )),
          Text(
            ' Create Password ',
            style: kStyle1,
          ),
          InkWell(
            onTap: onCloseButtonPressed,
            child: Icon(
              Icons.close,
            ),
          ),
        ],
      ),
    );
  }
}
