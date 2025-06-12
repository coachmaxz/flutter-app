import 'package:flutter/material.dart';

// ==========================================================================================
// Example
// ==========================================================================================

class BottomModal {

  // Open
  Future<dynamic> open(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          margin: const EdgeInsets.only(top: 0.0, bottom: 0.0, left: 0.0, right: 0.0),
          padding: const EdgeInsets.only(top: 0.0, bottom: 0.0, left: 0.0, right: 0.0),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .60,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Buttom Modal',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }

}