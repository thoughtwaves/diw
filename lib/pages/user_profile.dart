import 'package:diw/pages/addresses.dart';
import 'package:diw/pages/document_identifiers.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});
  static const routeName = '/user-profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          centerTitle: true,
          title: Text('Profile'),
          backgroundColor: Theme.of(context).primaryColor,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.logout),
            )
          ],
        ),
      ),
      extendBodyBehindAppBar: false,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 100,
            padding: EdgeInsets.only(top: 10),
            child: const ListTile(
              title: Text(
                'Gaurav Chauhan',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                '@gachauhan',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueAccent,
                ),
              ),
              trailing: IconButton(onPressed: null, icon: Icon(Icons.add)),
            ),
          ),
          Divider(
            thickness: 3,
          ),
          ListTile(
            title: Text(
              'Email Addresses',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            subtitle: Text(
              'gachauhan@paypal.com',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            trailing: FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.verified_user,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  IconButton(
                      onPressed: null, icon: Icon(Icons.arrow_forward_ios)),
                ],
              ),
            ),
          ),
          Divider(
            endIndent: 15,
            indent: 15,
            thickness: 1,
          ),
          ListTile(
            title: Text(
              'Phone Numbers',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            subtitle: Text(
              '98353 23380',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            trailing: FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.verified_user,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  IconButton(
                      onPressed: null, icon: Icon(Icons.arrow_forward_ios)),
                ],
              ),
            ),
          ),
          Divider(
            endIndent: 15,
            indent: 15,
            thickness: 1,
          ),
          ListTile(
            //contentPadding: EdgeInsets.all(10),
            title: Text(
              'Document Identifier',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            subtitle: Text(
              'AVNPC8834E',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            trailing: IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(DocumentIdentifiers.routeName);
                },
                icon: Icon(Icons.arrow_forward_ios)),
          ),
          Divider(
            endIndent: 15,
            indent: 15,
            thickness: 1,
          ),
          ListTile(
            //contentPadding: EdgeInsets.all(10),
            title: Text(
              'Addresses',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            subtitle: Text(
              '''1802 ASP
MB Road
Kondapur, Hyderabad
500084''',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            trailing: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Addresses.routeName);
                },
                icon: Icon(Icons.arrow_forward_ios)),
          ),
          Divider(
            endIndent: 15,
            indent: 15,
            thickness: 1,
          ),
        ]),
      ),
    );
  }
}
