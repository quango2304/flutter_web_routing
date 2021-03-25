import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:js' as js;

class DemoJSScreen extends StatefulWidget {
  @override
  _DemoJSScreenState createState() => _DemoJSScreenState();
}

class _DemoJSScreenState extends State<DemoJSScreen> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.back();
        return false;
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  final value = js.context.callMethod('alertMessage', ['Flutter is calling upon JavaScript!']);
                  print("result is $value");
                },
                child: Icon(Icons.access_alarm, size: 50,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
