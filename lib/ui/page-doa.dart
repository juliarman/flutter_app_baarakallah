import 'package:flutter/material.dart';
import 'package:flutter_app_baarakallah/model/list-doa.dart';
import 'package:flutter_app_baarakallah/ui/page-detail-doa.dart';




class DataListDoa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
        backgroundColor: Colors.white,
        title: Text('Kumpulan Doa', style: TextStyle(color: Colors.black87)),

      ),

      body:  Container(
        height: double.infinity,
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: dataListDoa.map((list){
            return Card(
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

                          return PageListDoa(title: list);

                        },
                      ));
                },
                child: Container(
                  height: 50,
                  child: ListTile(
                    leading: Text(list.title, style: TextStyle(fontWeight: FontWeight.bold),),
                    trailing: Icon(Icons.arrow_forward_ios_sharp, color: Colors.orange,),



                    /* child: Text(
                    '$list',
                    style: TextStyle(fontSize: 10),
                  ),
                 */



                  ),

                ),
              ),
            );


          }).toList(),

        ),
      ),
    );
  }
}








