import 'package:flutter/material.dart';
import 'package:flutter_web_routing/widgets/buttons.dart';
import 'package:flutter_web_routing/widgets/texts.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppSolidButton(
              text: 'Test named routing',
              onTap: () {
                Get.toNamed("/profile");
              },
            ),
            SizedBox(height: 10,),
            AppSolidButton(
              text: 'Demo storage',
              onTap: () {
                Get.toNamed("/demo_storage");
              },
            ),
            SizedBox(height: 10,),
            AppSolidButton(
              text: 'Demo communicate with js',
              onTap: () {
                Get.toNamed("/demo_js");
              },
            ),
          ],
        ),
      ),
    );
  }
}
