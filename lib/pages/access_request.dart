import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class AccessRequest extends StatefulWidget {
  const AccessRequest({super.key});
  static const routeName = '/access-request';

  @override
  State<AccessRequest> createState() => _AccessRequestState();
}

class _AccessRequestState extends State<AccessRequest> {
  static const _list = [
    'Phone Numbers',
    'Document Identifiers',
    'Date of Birth',
    'Addresses'
  ];
  final _items =
      _list.map((value) => MultiSelectItem<String>(value, value)).toList();

  List<String> _selectedUserData = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Request Access',
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        width: double.infinity,
        alignment: Alignment.topLeft,
        padding: EdgeInsets.only(left: 5, top: 25),
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    width: 1,
                    color: Theme.of(context).primaryColor), //<-- SEE HERE
                borderRadius: BorderRadius.circular(50.0)),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 10),
                border: InputBorder.none,
                hintText: 'Account or ID',
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          MultiSelectDialogField(
            items: _items,
            title: Text("Types"),
            selectedColor: Theme.of(context).primaryColor,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.all(Radius.circular(40)),
              border: Border.all(
                color: Theme.of(context).primaryColor,
                width: 2,
              ),
            ),
            buttonIcon: Icon(
              Icons.arrow_drop_down,
              color: Theme.of(context).primaryColor,
            ),
            buttonText: Text(
              "User Data",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            onConfirm: (results) {
              _selectedUserData = results;
            },
          ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                // color: Colors.white,
                //padding: EdgeInsets.only(left: 10, right: 10),
                //width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Cancel', style: TextStyle(fontSize: 15),),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).primaryColor),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                // color: Colors.white,
                // padding: EdgeInsets.only(left: 10, right: 10),
                // width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Send Request', style: TextStyle(fontSize: 15),),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).primaryColor),
                  ),
                ),
              )
            ],
          ),
          //)
        ]),
      ),
    );
  }
}
