import 'package:diw/pages/access_request.dart';
import 'package:diw/pages/addresses.dart';
import 'package:diw/pages/document_identifiers.dart';
import 'package:diw/pages/tabs.dart';
import 'package:diw/pages/user_profile.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DIW',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor:  Color.fromRGBO(0, 48, 135, 1),
        //accentColor: Colors.amber,
        canvasColor: Color.fromARGB(255, 249, 249, 240),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyLarge: const TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          bodyMedium: const TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          titleLarge: const TextStyle(
            fontSize: 24, 
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
          )
        )
      ),
     // home: Categories(),
      routes: {
        '/' : (context) => Tabs(),
        UserProfile.routeName :(context) => UserProfile(),
        AccessRequest.routeName :(context) => AccessRequest(),
        Addresses.routeName:(context) => Addresses(),
        DocumentIdentifiers.routeName :(context) => DocumentIdentifiers()
      },
    );
  }
}
