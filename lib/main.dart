import 'package:flutter/material.dart';

import 'package:flutter_app/components/text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ super.key });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({ super.key });
  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 2,
          children: <Widget> [
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              padding: EdgeInsets.only(left: 15, right: 15, top: 8),
              color: Colors.grey.withOpacity(0.4),
              width: double.infinity,
              height: 50,
              child: Text(
                'ไทย / Default',
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black, 
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              padding: EdgeInsets.only(left: 15, right: 15, top: 8),
              color: Colors.white,
              width: double.infinity,
              height: 50,
              child: Text(
                'ไทย / Kanit',
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.black, 
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Kanit'
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              padding: EdgeInsets.only(left: 15, right: 15, top: 8),
              color: Colors.grey.withOpacity(0.4),
              width: double.infinity,
              height: 50,
              child: P1(
                text: 'ไทย / FC_Iconic',
                size: 32,
                color: Colors.black, 
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              padding: EdgeInsets.only(left: 15, right: 15, top: 2),
              color: Colors.white,
              width: double.infinity,
              height: 50,
              child:Text(
                'ไทย / FC_Minimal',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.black, 
                  fontWeight: FontWeight.w400,
                  fontFamily: 'FC_Minimal'
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              padding: EdgeInsets.only(left: 15, right: 15, top: 8),
              color: Colors.grey.withOpacity(0.4),
              width: double.infinity,
              height: 50,
              child: Text(
                'ไทย / FC_Subject_Rounded',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black, 
                  fontWeight: FontWeight.w400,
                  fontFamily: 'FC_Subject_Rounded'
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              padding: EdgeInsets.only(left: 15, right: 15, top: 8),
              color: Colors.white,
              width: double.infinity,
              height: 50,
              child: Text(
                'ไทย / Font: Montserrat',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black, 
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Montserrat'
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}