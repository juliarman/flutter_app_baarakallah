import 'package:flutter/material.dart';
import 'package:flutter_app_baarakallah/model/list-dzikir-pagi.dart';



class ListDzikirPagi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text('Dzikir Pagi', style: TextStyle(color: Colors.black),),
      ),

      body: ListDzikir(),
    );
  }
}




class ListDzikir extends StatefulWidget {
  @override
  _ListDzikirState createState() => _ListDzikirState();
}

class _ListDzikirState extends State<ListDzikir> {

  List<DzikirPagi> _data = listItems;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(


      child: Container(

        child: _dzikirPanel(),
      ),
    );
  }


  Widget _dzikirPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((DzikirPagi item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              leading: Icon(Icons.api_rounded,color: Colors.teal,),
              title: Text(item.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
            );
          },
          body: ListTile(
              title: Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: [
                    Center(child: Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Text(item.times, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                    )),
                    Center(child: Text(item.ayat, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23), textAlign: TextAlign.justify, textDirection: TextDirection.rtl,)),
                  ],
                ),
              ),

              subtitle: Center(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text('Artinya:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                    Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        child: Column(
                          children: [
                            Text(item.translate, style: TextStyle(fontSize: 15, letterSpacing: 1.2), textDirection: TextDirection.ltr, textAlign: TextAlign.center,),

                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Card(
                                elevation: 1,
                                child: Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                        margin: EdgeInsets.only(top: 20, bottom: 10),
                                        child: Center(child: Text('Manfaat', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),))),
                                    Padding(
                                      padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
                                      child: Text(item.benefit, style: TextStyle(fontSize: 15, letterSpacing: 1.2, color: Colors.black87), textAlign: TextAlign.center,),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              )),
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
