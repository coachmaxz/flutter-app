import 'package:flutter/material.dart';

class HelloWorldPage extends StatefulWidget {

  const HelloWorldPage({
    super.key, 
  });

  @override
  State<HelloWorldPage> createState() => HelloWorldState();

}

class HelloWorldState extends State<HelloWorldPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Flutter App', 
          style: TextStyle(
            color: Colors.white, 
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello World !!',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black, 
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }

}
