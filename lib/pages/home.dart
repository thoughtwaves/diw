import 'package:diw/pages/access_request.dart';
import 'package:diw/pages/user_profile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 5, top: 18),
          margin: EdgeInsets.all(10),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 20,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(UserProfile.routeName);
              }, 
              icon: Icon(
              size: 30,
              Icons.person,
              color: Theme.of(context).primaryColor,
              )
            ),
          ),
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.only(left: 10, right: 10),
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AccessRequest.routeName);
            },
            child: Text('Request Access'),
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
              ),),
              backgroundColor:
                  MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
            ),
          ),
        )
      ],
    );
  }
}
