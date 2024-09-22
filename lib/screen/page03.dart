import 'package:flutter/material.dart';

class Page03 extends StatelessWidget {

  const Page03({
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            const Text(
              'Page 03',
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            const Divider(
              height: 10, 
              color: Colors.transparent,
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.amber[600],
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }

}