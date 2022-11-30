import 'package:flutter/material.dart';

class DocumentIdentifiers extends StatelessWidget {
  const DocumentIdentifiers({super.key});
  static const routeName = '/document-identifier';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 5, top: 18),
          margin: EdgeInsets.all(10),
          child: IconButton(
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
        Container(
          padding: EdgeInsets.only(left: 5, top: 5),
          margin: EdgeInsets.all(10),
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'All Document Identities',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 7),
              Text(
                'Manage your legal documents identities',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.add,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  Expanded(child: Text('Add a document Identifier'))
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
