import 'package:flutter/material.dart';
import 'package:flutter_web_routing/widgets/buttons.dart';
import 'package:flutter_web_routing/widgets/texts.dart';
import 'package:get/get.dart';

class Profiles extends StatefulWidget {
  @override
  _ProfilesState createState() => _ProfilesState();
}

class _ProfilesState extends State<Profiles> {
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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppTexts.black15900Roboto(text: 'Profiles',),
              SizedBox(height: 10,),
              AppSolidButton(
                text: 'User 1',
                onTap: () {
                  Get.toNamed("/profile/user?name=quan&age=18");
                },
              ),
              SizedBox(height: 10,),
              AppSolidButton(
                text: 'User 2',
                onTap: () {
                  Get.toNamed("/profile/user?name=quanngo&age=13");
                },
              ),
              SizedBox(height: 10,),
              AppSolidButton(
                text: 'User 3',
                onTap: () {
                  Get.toNamed("/profile/user?name=quanvan&age=12");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
