import 'package:flutter/material.dart';
import 'package:flutter_web_routing/widgets/texts.dart';

class AppSolidButton extends StatelessWidget {
  final String text;
  final Function onTap;

  const AppSolidButton({Key key, this.text, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(6),
        ),
        width: 300,
        height: 70,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 20),
        child: AppTexts.white13900Roboto(text: text,),
      ),
    );
  }
}
