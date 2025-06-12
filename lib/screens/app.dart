import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/modals/bottom_modal.dart';

class AppPage extends StatefulWidget {

  const AppPage({ super.key });

  @override
  State<AppPage> createState() => AppPageState();

}

class AppPageState extends State<AppPage> {


  @override
  void initState() {
    Future.delayed(Duration(seconds: 1)).then( (_) async {
      await BottomModal().open(context);
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

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