import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DemoResponsiveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => Container(color:Colors.blue, alignment: Alignment.center, child: Text("mobile"),),
      tablet: (BuildContext context) => Container(color:Colors.yellow, alignment: Alignment.center, child: Text("tablet"),),
      desktop: (BuildContext context) => Container(color:Colors.red, alignment: Alignment.center, child: Text("desktop"),),
      watch: (BuildContext context) => Container(color:Colors.purple, alignment: Alignment.center, child: Text("watch"),),
    );
  }
}
