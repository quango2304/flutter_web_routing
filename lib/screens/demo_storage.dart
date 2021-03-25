import 'package:flutter/material.dart';
import 'package:flutter_web_routing/widgets/texts.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class DemoStorageScreen extends StatefulWidget {
  @override
  _DemoStorageScreenState createState() => _DemoStorageScreenState();
}

class _DemoStorageScreenState extends State<DemoStorageScreen> {
  int currentCounter;

  @override
  void initState() {
    super.initState();
    currentCounter = GetStorage().read<int>('counter') ?? 0;
  }

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
              AppTexts.black20900Roboto(
                text: currentCounter.toString(),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    currentCounter++;
                    GetStorage().write('counter', currentCounter);
                  });
                },
                child: Icon(Icons.add_circle, size: 50,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
