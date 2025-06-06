import 'package:flutter/material.dart';
import 'package:flutter_app/scroll.dart';

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
      home: const ScrollPage(),
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
          children: <Widget>[
            Text(
              'Flutter App !!',
              style: TextStyle(
                fontSize: 26,
                color: Colors.black, 
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      )
    );
  }
}