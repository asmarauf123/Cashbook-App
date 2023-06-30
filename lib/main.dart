import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:js_app/Registration.dart';
import 'package:js_app/app_theme.dart';
import 'package:js_app/pracpage.dart';

import 'LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(builder: (context, child) {
      return MaterialApp(
        theme: AppTheme.appTheme,
        debugShowCheckedModeBanner: false,
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      );
    });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 60, 50, 20),
              child: Image.asset('assets/images/appisnap.jpeg'),
            ),
            // SizedBox(height: 5,),
            Text("Cash Book",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: HexColor("#F8A91B"),
                    fontSize: 42,
                    fontWeight: FontWeight.w700),),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 30, 50, 40),
              child: Image.asset('assets/images/splashillustration.png'),
            ),
            Container(
              height: 40,
              width: 1000,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffF8A91B), // background
                  // onPrimary: Colors.yellow, // foreground
                ),
                child: const Text('Registration'),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Registration()),
                  );
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 40,
              width: 1000,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffF8A91B), // background
                  // onPrimary: Colors.yellow, // foreground
                ),
                child: const Text('Login'),
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (context) => LoginPage()),
                  Navigator.of(context).push(
                     MaterialPageRoute(builder: (context) => Pracpage()),
                  );
                },
              ),
            )
          ],
        )),
      ),
    );
  }
}
