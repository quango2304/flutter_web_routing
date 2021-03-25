import 'package:flutter/material.dart';
import 'package:flutter_web_routing/screens/demo_js.dart';
import 'package:flutter_web_routing/screens/demo_responsive.dart';
import 'package:flutter_web_routing/screens/demo_storage.dart';
import 'package:flutter_web_routing/screens/home.dart';
import 'package:flutter_web_routing/screens/profile/profiles.dart';
import 'package:flutter_web_routing/screens/profile/user_profile.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


void main() async {
  await GetStorage.init();
  runApp(
      GetMaterialApp(
        initialRoute: '/',
        getPages: [
          GetPage(
            name: '/',
            page: () => MyHomePage(),
          ),
          GetPage(
            name: '/profile/',
            page: () => Profiles(),
          ),
          GetPage(
            name: '/profile/user',
            page: () => UserProfile.newInstance(),
          ),
          GetPage(
            name: '/demo_storage',
            page: () => DemoStorageScreen(),
          ),
          GetPage(
            name: '/demo_js',
            page: () => DemoJSScreen(),
          ),
          GetPage(
            name: '/demo_responsive',
            page: () => DemoResponsiveScreen(),
          ),
        ],
      )
  );
}