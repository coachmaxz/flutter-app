import 'package:flutter/material.dart';
import 'package:flutter_app/screen/page03.dart';

class Page02 extends StatelessWidget {

  const Page02({
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
              'Page 02',
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
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) {
                      return const Page03();
                    }
                  ),
                );
              },
              child: const Text('Go to Page 03'),
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