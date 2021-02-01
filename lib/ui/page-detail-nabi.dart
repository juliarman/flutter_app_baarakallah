import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_baarakallah/model/list-nabi.dart';

class DetailNabi extends StatelessWidget {

final ListNabi name;
DetailNabi({@required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Detail Nabi',
          style: TextStyle(color: Colors.black),
        ),
      ),



      body: ListView(
        children: [

          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(


                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.topLeft,
                    colors: [

                      Colors.teal[300],
                      Colors.teal[900],

                    ],

                  ),
                ),
                width: double.infinity,
                height: 200,

                child: Center(child: Text(name.arab, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 60),)),
              ),
            ],
          ),

          Row(
            children: [

              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(right: BorderSide(color: Colors.black12)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 15),
                          child: Icon(
                            Icons.calendar_today,
                            color: Colors.teal,
                          ),
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name.historical,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black54),
                            ),
                            Text(
                              'Periode Sejarah',
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),


                      ],
                    ),
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(right: BorderSide(color: Colors.black12)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 15),
                            child: Icon(
                              Icons.account_circle_rounded,
                              color: Colors.teal,
                            ),
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name.age,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.black54),
                              ),
                              Text(
                                'Usia',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),


                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12),
            ),
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Deskripsi',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black54),
                  ),
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                ),
                Text(
                  name.description,
                  style: TextStyle(fontSize: 17, color: Colors.black87),
                ),

              ],
            ),
          ),
          Expanded(

            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Biodata',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black54),
                    ),
                    margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  ),

                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 8),
                                child: Container(child: Icon(Icons.account_circle_outlined, color: Colors.teal, ))),
                            Text(
                              'Nama : ',
                              style: TextStyle(fontSize: 20, color: Colors.black87, fontWeight: FontWeight.bold),
                            ),
                            Expanded(
                              child: Text(
                                name.name,
                                style: TextStyle(fontSize: 17, color: Colors.black87),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 8),
                                child: Container(child: Icon(Icons.place_outlined, color: Colors.teal, ))),
                            Text(
                              'Wafat : ',
                              style: TextStyle(fontSize: 20, color: Colors.black87, fontWeight: FontWeight.bold),
                            ),
                            Expanded(
                              child: Text(
                                name.wafat,
                                style: TextStyle(fontSize: 17, color: Colors.black87),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 8),
                                child: Container(child: Icon(Icons.account_balance_sharp, color: Colors.teal, ))),
                            Text(
                              'Diutus : ',
                              style: TextStyle(fontSize: 20, color: Colors.black87, fontWeight: FontWeight.bold),
                            ),
                            Expanded(
                              child: Text(
                                name.placeSent,
                                style: TextStyle(fontSize: 17, color: Colors.black87),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 8),
                                child: Container(child: Icon(Icons.all_inclusive_sharp, color: Colors.teal, ))),
                            Text(
                              'Kaum : ',
                              style: TextStyle(fontSize: 20, color: Colors.black87, fontWeight: FontWeight.bold),
                            ),
                            Expanded(
                              child: Text(
                                name.clan,
                                style: TextStyle(fontSize: 17, color: Colors.black87),
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




