import 'package:apm_mobile_flutter/screen/add_screen.dart';
import 'package:apm_mobile_flutter/screen/delete_screen.dart';
import 'package:apm_mobile_flutter/screen/read_screen.dart';
import 'package:apm_mobile_flutter/screen/sample_screen.dart';
import 'package:apm_mobile_flutter/screen/update_screen.dart';
import 'package:flutter/material.dart';
import 'package:apm_mobile_flutter/screen/home_screen.dart';
import 'package:apm_mobile_flutter/widget/bottom_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CRUD Mobile with Flutter',
      theme: ThemeData(
          colorScheme: ColorScheme(
        primary: Colors.amber,
        primaryVariant: Colors.amber.shade600,
        secondary: Colors.black87,
        secondaryVariant: Colors.black,
        surface: Colors.black38,
        background: Colors.black,
        error: Colors.red,
        onPrimary: Colors.amber.shade300,
        onSecondary: Colors.black26,
        onSurface: Colors.black45,
        onBackground: Colors.black,
        onError: Colors.red.shade800,
        brightness: Brightness.dark,
      )),
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              HomeScreen(),
              SampleScreen(),
              AddScreen(),
              ReadScreen(),
              UpdateScreen(),
              DeleteScreen(),
            ],
          ),
          bottomNavigationBar: BottomBar(),
        ),
      ),
    );
  }
}
