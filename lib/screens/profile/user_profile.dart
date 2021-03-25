import 'package:flutter/material.dart';
import 'package:flutter_web_routing/utils/cast_type.dart';
import 'package:flutter_web_routing/widgets/texts.dart';
import 'package:get/get.dart';

class UserProfile extends StatefulWidget {
  static Widget newInstance() {
    //pass provider here
    //get param from path here
    return UserProfile._(
      name: castToString(Get.parameters['name']),
      age: castToString(Get.parameters['age']),
    );
  }

  final String name;
  final String age;

  UserProfile._({this.name, this.age});

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppTexts.black15900Roboto(
                text: 'UserProfile',
              ),
              SizedBox(
                height: 10,
              ),
              AppTexts.black13400Roboto(
                text: 'name is ${widget.name}',
              ),
              AppTexts.black13400Roboto(
                text: 'age is ${widget.age}',
              )
            ],
          ),
        ),
      ),
    );
  }
}
