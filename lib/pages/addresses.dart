import 'package:flutter/material.dart';

class Addresses extends StatelessWidget {
  const Addresses({super.key});
  static const routeName = '/addresses';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
         Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 5, top: 18),
          margin: EdgeInsets.all(10),
          child:  IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              }, 
              icon: Icon(
              size: 30,
              Icons.arrow_back,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ]),
    );
  }
}