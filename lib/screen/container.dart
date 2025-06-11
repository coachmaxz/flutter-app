import 'package:flutter/material.dart';

class ContainerScreen extends StatefulWidget {

  const ContainerScreen({ 
    super.key,
  });

  @override
  State<ContainerScreen> createState() => ContainerScreenState();

}

class ContainerScreenState extends State<ContainerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // start, center, end, spaceEvenly, spaceAround, spaceBetween
          crossAxisAlignment: CrossAxisAlignment.start, // start, center, end, stretch, baseline
          children: <Widget> [
            Container(
              margin: const EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 20),
              padding: const EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
              decoration: BoxDecoration(
                color: Colors.amber[200],
              ),
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 20),
              padding: const EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
              decoration: BoxDecoration(
                color: Colors.amber[400],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 0),
              padding: const EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/background.png'),
                  alignment: Alignment.center, // center, topCenter, bottomCenter
                  fit: BoxFit.cover,
                ),
              ),
              height: 150,
            ),
          ],
        ),
      )
    );
  }
}