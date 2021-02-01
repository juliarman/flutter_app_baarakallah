import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_baarakallah/model/tasbih.dart';



class Tasbih extends StatefulWidget {

  @override
  _TasbihState createState() => _TasbihState();
}

class _TasbihState extends State<Tasbih> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text('TASBIH', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),


      ),

      body: Slide(),



    );
  }
}



class CounterTasbih extends StatefulWidget {



  @override
  _CounterTasbihState createState() => _CounterTasbihState();
}

class _CounterTasbihState extends State<CounterTasbih> {

  int _counterTasbih = 0;


  void _counter(){
    setState(() {
      _counterTasbih++;
      if (_counterTasbih == 34){
        _counterTasbih = 0;
      }

    });
  }




  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10.0),
      child: Center(
        child: Column(

          children: [
            Text('$_counterTasbih', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 220),),
            Container(
              width: 200,
              height: 60,
              margin: EdgeInsets.only(top: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: RaisedButton(
                  color: Colors.teal,
                  onPressed: _counter,
                  child: Text('HITUNG', style: TextStyle(color: Colors.white, fontSize: 25),),

                ),
              ),
            ),

            Container(
              width: 200,
              height: 60,
              margin: EdgeInsets.only(top: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: RaisedButton(
                  color: Colors.black54,
                  onPressed: (){
                    setState(() {
                      _counterTasbih = 0;
                    });
                  },
                  child: Text('RESET', style: TextStyle(color: Colors.white, fontSize: 25),),

                ),
              ),
            ),


          ],




        ),

      ),
    );
  }
}





class Slide extends StatefulWidget {
  @override
  _SlideState createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ListView(
          children: [
            SizedBox(height: 15.0),
            CarouselSlider(
              items: dataTasbih.map((listTasbih){
                return Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        gradient:LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.teal[300],
                            Colors.teal[900],
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(listTasbih.arab,style: TextStyle(fontSize: 40, color: Colors.white),),
                          Text(listTasbih.latin, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white, fontStyle: FontStyle.italic),),
                          Text(listTasbih.translate,style: TextStyle(color: Colors.white),),

                        ],
                      ),
                    ),
                  ],

                );



              }).toList(),
              options: CarouselOptions(
                height: 150.0,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlay: false,
                enableInfiniteScroll: true,
                enlargeCenterPage: true,
                aspectRatio: 16/9,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),

            ),

            CounterTasbih(),
          ],


        ),
      ),
    );
  }
}