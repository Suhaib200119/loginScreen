import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Person.dart';
import 'MyList.dart';

class Screen2 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    Map<String,String> data=ModalRoute.of(context)!.settings.arguments as Map<String,String>;
    Person p=new Person(data['username'].toString(),data['password'].toString());
    list.add(p);

    return Scaffold(
        appBar: AppBar(
          title: Text("Screen2"),
        ),
        body: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
          child: ListView.builder(
            itemCount: list.length,
              itemBuilder: (con,index){
                  return Card(
                    color: Colors.white,
                    shadowColor: Colors.blueAccent,
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("username: ${list[index].useranme} ",style: TextStyle(color: Colors.blueAccent,fontSize: 32,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                          SizedBox(height: 20,),
                          Text("password: ${list[index].password}",style: TextStyle(color: Colors.blueAccent,fontSize: 32,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                        ],
                      ),
                    ),
                  );
              }
          ),

        ),
      );
  }

}
/*

child: Card(
            color: Colors.white,
            shadowColor: Colors.blueAccent,
            elevation: 20,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              width: double.infinity,
             height: 150,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("username: ${data['username']}",style: TextStyle(color: Colors.blueAccent,fontSize: 32,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                 SizedBox(height: 20,),
                 Text("password: ${data['password']}",style: TextStyle(color: Colors.blueAccent,fontSize: 32,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
               ],
             ),
            ),
          ),
 */