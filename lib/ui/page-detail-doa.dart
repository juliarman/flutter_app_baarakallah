
import 'package:flutter/material.dart';
import 'package:flutter_app_baarakallah/model/list-doa.dart';




class PageListDoa extends StatelessWidget {

  final ListDoa title;
  PageListDoa({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Doa', style: TextStyle(color: Colors.black)),
          iconTheme: IconThemeData(
            color: Colors.black,
          )),
      body: ListView(


        children: [
          Container(
            margin: EdgeInsets.all(15),
            width: double.infinity,
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text( title.arab ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.teal,), textDirection: TextDirection.rtl, textAlign: TextAlign.justify,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(title.latinArab, style: TextStyle(color: Colors.black54),textAlign: TextAlign.center,),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),



          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            width: double.infinity,
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Artinya', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(title.translate, style: TextStyle(color: Colors.black54),textAlign: TextAlign.center,),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

        ],

      ),

    );
  }
}

