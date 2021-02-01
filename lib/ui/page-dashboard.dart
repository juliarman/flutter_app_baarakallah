import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_baarakallah/model/list-doa.dart';
import 'package:flutter_app_baarakallah/ui/dzikir/page-dzikir.dart';
import 'package:flutter_app_baarakallah/ui/page-doa.dart';
import 'package:flutter_app_baarakallah/ui/page-tasbih.dart';
import 'package:flutter_app_baarakallah/ui/page-nabi.dart';



var styleTitle =TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, fontFamily: 'Poppins');
var cardTitle = TextStyle(fontWeight: FontWeight.bold);
var cardTagline = TextStyle(fontSize: 9, color: Colors.black54);
var listTitle = TextStyle(color: Colors.black87, fontWeight: FontWeight.bold);

class MainScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    return Scaffold(


    body: SingleChildScrollView(
      child: Column(
        children: [
          MainHeader(),
          MainMenu(),
          Doa(),

        ],
      ),
    ),




    );
  }
}





class MainMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Main Menu', style: styleTitle),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                height: 70,
                child: ListView(

                  scrollDirection: Axis.horizontal,
                  children: [

                    Expanded(
                      flex: 3,
                      child: Card(
                        elevation: 2,
                        child: FlatButton(
                          onPressed: (){

                            Navigator.push(
                                context,
                                PageRouteBuilder(
                                  transitionDuration: Duration(seconds: 1),
                                  transitionsBuilder: (context, animation, animationTime, child){
                                    animation = CurvedAnimation(parent: animation, curve: Curves.elasticOut);
                                    return ScaleTransition(
                                      scale: animation,
                                      alignment: Alignment.center,
                                      child: child,
                                    );
                                  },
                                  pageBuilder: (context, animation, animationTime){

                                    return PageDzikir();

                                  },
                                ));

                          },
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Hero(
                                        tag: 'dzikir1',
                                        child: Image(image: AssetImage('images/quran.png'))),
                                  ),


                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Hero(
                                        tag: 'dzikir2',
                                        child: Image(image: AssetImage('images/quran.png'))),
                                  ),
                                ],
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Dzikir', style: cardTitle),
                                      Text('Dzikir pagi dan Sore', style: cardTagline),
                                    ],
                                  ),
                                ),
                              ),
                            ],

                          ),
                        ),

                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Card(
                        elevation: 2,
                        child: FlatButton(
                          onPressed: (){


                            Navigator.push(
                                context,
                                PageRouteBuilder(
                                  transitionDuration: Duration(seconds: 1),
                                  transitionsBuilder: (context, animation, animationTime, child){
                                    animation = CurvedAnimation(parent: animation, curve: Curves.elasticOut);
                                    return ScaleTransition(
                                      scale: animation,
                                      alignment: Alignment.center,
                                      child: child,
                                    );
                                  },
                                  pageBuilder: (context, animation, animationTime){

                                    return ViewNabi();

                                  },
                                ));

                          },
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image(image: AssetImage('images/buku.png')),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('25 Nabi', style: cardTitle),
                                      Text('Biodata 25 Nabi', style: cardTagline),
                                    ],
                                  ),
                                ),
                              ),
                            ],

                          ),
                        ),

                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Card(
                        elevation: 2,
                        child: FlatButton(
                          onPressed: (){


                            Navigator.push(
                                context,
                                PageRouteBuilder(
                                  transitionDuration: Duration(seconds: 1),
                                  transitionsBuilder: (context, animation, animationTime, child){
                                    animation = CurvedAnimation(parent: animation, curve: Curves.elasticOut);
                                    return ScaleTransition(
                                      scale: animation,
                                      alignment: Alignment.center,
                                      child: child,
                                    );
                                  },
                                  pageBuilder: (context, animation, animationTime){

                                    return Tasbih();

                                  },
                                ));

                          },
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image(image: AssetImage('images/tasbih.png')),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Tasbih', style: cardTitle),
                                      Text('Bacaan Tasbih', style: cardTagline),
                                    ],
                                  ),
                                ),
                              ),
                            ],

                          ),
                        ),

                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Card(
                        elevation: 2,
                        child: FlatButton(
                          onPressed: (){


                            Navigator.push(
                                context,
                                PageRouteBuilder(
                                  transitionDuration: Duration(seconds: 1),
                                  transitionsBuilder: (context, animation, animationTime, child){
                                    animation = CurvedAnimation(parent: animation, curve: Curves.elasticOut);
                                    return ScaleTransition(
                                      scale: animation,
                                      alignment: Alignment.center,
                                      child: child,
                                    );
                                  },
                                  pageBuilder: (context, animation, animationTime){

                                    return DataListDoa();

                                  },
                                ));

                          },
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image(image: AssetImage('images/islamic.png')),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Kumpulan Doa', style: cardTitle),
                                      Text('Doa Sehari-hari', style: cardTagline),
                                    ],
                                  ),
                                ),
                              ),
                            ],

                          ),
                        ),

                      ),
                    ),









                  ],

                ),



              ),



            ],
          ),


        ],



      ),


    );


  }
}







class MainHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.teal[200],
                  Colors.teal[900],
                  /* Color(0xFF3383CD),
                  Color(0xFF11249F),
                  */
                ],
              ),
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.only(top: 90),
          child: Row(
            children: [
              Container(
                child: Image(image: AssetImage('images/muslim.png'), width: 100,),
              ),
              Container(
                child: Column(
                  children: [
                    Text('Barakallah App',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,  color: Colors.white, ),),
                    Text('Allah cinta kepada orang-orang', style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),


            ],
          ),
        )

      ],



    );
  }
}

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
   var path = Path();
   path.lineTo(0, size.height - 80);
   path.quadraticBezierTo(size.width/2, size.height, size.width, size.height - 80);
   path.lineTo(size.width, 0);
   path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {

    return false;
  }
}




class Doa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
                  child: Text('Kumpulan Doa', style: styleTitle)),
            ],
          ),

          Container(
            height: 205,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: dataListDoa.map((list){

                return Container(
                  height: 55,
                  margin: EdgeInsets.only(left: 15, right: 15, bottom: 5),
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black12))
                  ),
                  child: RaisedButton(
                    elevation: 0,
                    color: Colors.white,
                    onPressed: (){

                    },
                    child: Container(
                      child: ListTile(

                        title: Text(list.title, style: listTitle),
                        trailing: Icon(Icons.arrow_forward, color: Colors.orange),

                      ),
                    ),
                  ),
                );

              }).toList(),
            ),
          ),

          Container(

            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black12,)),
            ),
            child: RaisedButton(
              elevation: 0,
              color: Colors.teal,
              onPressed: (){

                Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: Duration(seconds: 1),
                      transitionsBuilder: (context, animation, animationTime, child){
                        animation = CurvedAnimation(parent: animation, curve: Curves.elasticOut);
                        return ScaleTransition(
                          scale: animation,
                          alignment: Alignment.center,
                          child: child,
                        );
                      },
                      pageBuilder: (context, animation, animationTime){

                        return DataListDoa();

                      },
                    ));

              },
              child: Container(
                child: ListTile(
                  title: Center(child: Text('LIHAT SEMUA!', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),

                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}



