import 'package:flutter/material.dart';
import 'package:flutter_app_baarakallah/ui/page-detail-nabi.dart';
import 'package:flutter_app_baarakallah/model/list-nabi.dart';



class ViewNabi extends StatelessWidget {
  static const customGreen = const Color(0xff067062);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('25 Nabi', style: TextStyle(color: Colors.black)),
          iconTheme: IconThemeData(
            color: Colors.black,
          )),
      body: Nabi(),
    );
  }
}

class Nabi extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listNabi.map((name) {
        return Container(
          child: Card(
            child: FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailNabi(name: name,);
                }));
              },
              child: Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.all(4.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.api_rounded,
                      color: Colors.teal,
                    ),
                    title: Text(
                      name.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.black,
                    ),
                  )),
            ),
          ),
        );
      }).toList(),
    );
  }
}
