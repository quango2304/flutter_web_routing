import 'package:flutter/material.dart';
import 'package:flutter_web_routing/constants.dart';

class AppTexts extends StatelessWidget {
  factory AppTexts.black13900Roboto({
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style
  }) =>
      AppTexts(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
            fontWeight: FontWeight.w900,
            color: AppColors.black,
            fontSize: 13,
            fontFamily: 'Roboto'
        ).merge(style),
      );

  factory AppTexts.black20900Roboto({
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style
  }) =>
      AppTexts(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
            fontWeight: FontWeight.w900,
            color: AppColors.black,
            fontSize: 20,
            fontFamily: 'Roboto'
        ).merge(style),
      );

  factory AppTexts.black13700Roboto({
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style
  }) =>
      AppTexts(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
            fontWeight: FontWeight.w700,
            color: AppColors.black,
            fontSize: 13,
            fontFamily: 'Roboto'
        ).merge(style),
      );

  factory AppTexts.black11400Roboto({
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style
  }) =>
      AppTexts(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
            fontWeight: FontWeight.w400,
            color: AppColors.black,
            fontSize: 11,
            fontFamily: 'Roboto'
        ).merge(style),
      );

  factory AppTexts.black13400Roboto({
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style
  }) =>
      AppTexts(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
            fontWeight: FontWeight.w400,
            color: AppColors.black,
            fontSize: 13,
            fontFamily: 'Roboto'
        ).merge(style),
      );

  factory AppTexts.black15400Roboto({
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style
  }) =>
      AppTexts(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
            fontWeight: FontWeight.w400,
            color: AppColors.black,
            fontSize: 15,
            fontFamily: 'Roboto'
        ).merge(style),
      );

  factory AppTexts.white13900Roboto({
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style
  }) =>
      AppTexts(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
            fontWeight: FontWeight.w900,
            color: AppColors.white,
            fontSize: 13,
            fontFamily: 'Roboto'
        ).merge(style),
      );

  factory AppTexts.black15900Roboto({
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style
  }) =>
      AppTexts(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
            fontWeight: FontWeight.w900,
            color: AppColors.black,
            fontSize: 15,
            fontFamily: 'Roboto'
        ).merge(style),
      );

  final String data;
  final TextStyle style;
  final TextAlign textAlign;
  final TextOverflow textOverflow;
  final int maxLines;

  const AppTexts(
      this.data, {
        @required this.style,
        this.textAlign,
        this.textOverflow,
        this.maxLines,
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: style,
      maxLines: maxLines,
      overflow: textOverflow,
      textAlign: textAlign ?? TextAlign.start,
    );
  }
}