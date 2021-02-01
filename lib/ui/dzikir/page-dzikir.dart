import 'package:flutter/material.dart';
import 'package:flutter_app_baarakallah/ui/dzikir/page-list-dzikir-pagi.dart';


class PageDzikir extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text('Dzikir', style: TextStyle(color: Colors.black),),
      ),


      body: CardDzikir(),


    );
  }
}

class CardDzikir extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            margin: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Expanded(
              child: Container(
                width: double.infinity,
                height: 160,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [

                      Colors.teal[300],
                      Colors.teal[900],

                    ],
                  ),
                ),
                child: FlatButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ListDzikirPagi();
                    }));
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                            width: 130,
                            child: Hero(
                                tag: 'dzikir1',
                                child: Image(image: AssetImage('images/quran.png')))),
                      ),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Dzikir Pagi', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),),
                          Text('Mengingat Allah di pagi hari', style: TextStyle(fontSize: 13, color: Colors.white),),

                        ],
                      )

                    ],

                  ),
                ),

              ),
            ),





          ),
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            margin: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Expanded(
              child: Container(
                width: double.infinity,
                height: 160,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [

                      Colors.teal[300],
                      Colors.teal[900],

                    ],
                  ),
                ),
                child: FlatButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ListDzikirPagi();
                    }));
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                            width: 130,
                            child: Hero(
                                tag: 'dzikir2',
                                child: Image(image: AssetImage('images/quran.png')))),
                      ),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Dzikir Sore', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),),
                          Text('Mengingat Allah di sore hari', style: TextStyle(fontSize: 13, color: Colors.white),),

                        ],
                      )

                    ],

                  ),
                ),

              ),
            ),





          )









          
        ],
        
      ),
    );
  }
}
