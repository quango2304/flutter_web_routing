flutter 2.0.3

https://www.notion.so/Flutter-web-ca7197ce5e0b4c63ae32eec594ee9985

# Flutter web

[https://github.com/quanngovan98/flutter_web_routing](https://github.com/quanngovan98/flutter_web_routing) demo some features here

1. **Routing**
- use getx with named route
- define route like this:

    ```dart
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
      ],
    )
    ```

- Then navigate like this:

    ```dart
    Get.toNamed("/profile/user?name=quan&age=18");
    ```

- Get param after navigated to screen:

    ```dart
    Get.parameters['name']
    ```

- Safe to get param: create extension on Object like below

    ```bash

    extension CastTypeObjectExtension on Object {
      int get castToInt {
        if (this is int) {
          return this;
        }
        return null;
      }

      double get castToDouble {
        if (this is double) {
          return this;
        }
        return null;
      }

      String get castToString {
        if (this is String) {
          return this;
        }
        return null;
      }

      bool get castToBool {
        if (this is bool) {
          return this;
        }
        return null;
      }
    }
    ```

    ```bash
    //usage
    Get.parameters['name'].castToString,
    ```

2. **Pass provider when navigate:**

- create a factory for widget to get param as well as pass provider

    ```dart
    class UserProfile extends StatefulWidget {

      static Widget newInstance() {
        //pass provider here
        //get param from path here
        return BlocProvider(
            create: (context) {
              return UserBloc();
            },
            child: UserProfile._(
    						name: Get.parameters['name'].castToString,
    			      age: Get.parameters['age'].castToString,
    				);
      }

      final String name;
      final String age;
      UserProfile._({this.name, this.age});
      @override
      _UserProfileState createState() => _UserProfileState();
    }
    ```

3. **Cache libs: get_storage, or hive**

- init:

    ```dart
    void main() async {
      await GetStorage.init();
    	...
    }
    ```

- get:

    ```dart
    currentCounter = GetStorage().read<int>('counter') ?? 0;
    ```

- set:

    ```dart
    GetStorage().write('counter', currentCounter);
    ```

4. **HTML renderer and CanvasKit renderer**

- [https://flutter.dev/docs/development/tools/web-renderers](https://flutter.dev/docs/development/tools/web-renderers)
- HTML renderer: smaller download size, suitable for mobile

    ```bash
    flutter build web --web-renderer html
    ```

- CanvasKit renderer: larger download size (+2MB), but faster performance, suitable for desktop

    ```bash
    flutter build web --web-renderer canvaskit
    ```

- Suggest to choose the auto option (default) if you are optimizing for download size on mobile browsers and optimizing for performance on desktop browsers.

    ```bash
    flutter build web --web-renderer auto
    ```

5. **Browser support:** 

- Chrome (mobile & desktop)
- Safari (mobile & desktop)
- Edge (mobile & desktop)
- Firefox (mobile & desktop)

6. **Cookie, session**

- local storage is enough to save data
- cookie will be automatically managed by browser
- use **Dio** package with option **withCredential = true** to send cookie in the request

7. **Responsive**

- for easy maintain, should separate screen file to 2 separate files: desktop and mobile
- use **LayoutBuilder**, **OrientationBuilder** to listen to width, height and orientation then return suitable desktop/mobile UI file.

8. **Permission**

- use **html.window.navigator.permissions.query**

    ```dart
    final perm = await html.window.navigator.permissions.query({"name": "camera"});
        if (perm.state == "denied") {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text("Oops! Camera access denied!"),
            backgroundColor: Colors.orangeAccent,
          ));
          return;
        }
    final stream = await html.window.navigator.getUserMedia(video: true);
    ```

9. **Select, drag file to upload**

- select file: use [https://pub.dev/packages/file_picker](https://pub.dev/packages/file_picker)

    ```dart
    var picked = await FilePicker.platform.pickFiles();

    if (picked != null) {
      print(picked.files.first.name);
    }
    ```

- drag file to upload: use [https://pub.dev/packages/flutter_dropzone](https://pub.dev/packages/flutter_dropzone)

    ```dart
    Widget buildZone1(BuildContext context) => Builder(
          builder: (context) => DropzoneView(
            operation: DragOperation.copy,
            cursor: CursorType.grab,
            onHover: () {
              setState(() => highlighted1 = true);
              print('Zone 1 hovered');
            },
            onLeave: () {
              setState(() => highlighted1 = false);
              print('Zone 1 left');
            },
            onDrop: (file) {
              setState(() {
                message1 = '${file.name} dropped';
                highlighted1 = false;
              });
            },
          ),
     );
    ```

10. **embed JS code, communicate between dart and js**

- create a file **app.js** under web folder with this content

    ```jsx
    function alertMessage(text) {
        alert(text)
        return 'from js with love';
    }
    ```

- modify the **index.html** file under web folder

    ```html
    <head>
      <script src="app.js" defer></script>
    	...
    ```

- in dart side

    ```dart
    import 'dart:js' as js;

    final value = js.context.callMethod('alertMessage', ['From flutter with love']);
    print("result is $value"); //will print 'result is from js with love'
    ```

11. **SEO**

- as Flutter render on the canvas instead of using html tags, so currently Flutter is **not** SEO-friendly