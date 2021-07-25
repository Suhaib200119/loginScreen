import 'package:flutter/material.dart';
import 'Screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        '/screen2':(context)=>Screen2(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key? key, required this.title}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  TextEditingController username=new TextEditingController();
  bool obscureText=true;
  TextEditingController password=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
            color: Colors.blueAccent.withOpacity(0.3),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset("assets/images/logo.png",height: 150,width: 150,),
              SizedBox(height: 10,),
              Card(
                color: Colors.white,
                shadowColor: Colors.blue,
                elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                  width: 370,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(4, 0, 4, 0),
                        child: TextField(
                          controller: username,
                          decoration: InputDecoration(
                            labelText: "First Name: ",
                            labelStyle: TextStyle(fontWeight: FontWeight.w500,color: Colors.blueAccent,fontSize:18),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 2,color:Colors.blueAccent),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            prefixIcon: Icon(Icons.account_circle_outlined,color: Colors.blueAccent),
                          ),
                          keyboardType: TextInputType.text,
                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.blueAccent),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        margin: EdgeInsets.fromLTRB(4, 0, 4, 0),
                        child: TextField(
                          controller: password,
                          decoration: InputDecoration(
                              labelText: "Password: ",
                              labelStyle: TextStyle(fontWeight: FontWeight.w500,color: Colors.blueAccent,fontSize:18),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 2,color: Colors.blueAccent),
                                borderRadius: BorderRadius.circular(20),
                              ),

                              prefixIcon: Icon(Icons.lock,color: Colors.blueAccent),
                              suffixIcon: IconButton(
                                onPressed:(){
                                  setState(() {
                                    obscureText=!obscureText;
                                  });
                                } ,
                                icon:Icon(
                                    obscureText?Icons.visibility:Icons.visibility_off,color: Colors.blueAccent
                                ) ,
                              )
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.blueAccent),
                          obscureText: obscureText,
                        ),

                      ),
                      SizedBox(height: 30,),
                      FlatButton(
                        color: Colors.blueAccent,
                        splashColor: Colors.white54,
                        padding: EdgeInsets.symmetric(vertical: 5,horizontal: 60),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Colors.blue,width: 2),
                          ),
                          onPressed: (){
                          setState(() {
                                Navigator.of(context).pushNamed(
                                    '/screen2',
                                    arguments: {
                                      'username':username.text,
                                      'password':password.text,
                                    }
                                );
                          });
                          },
                          child: Text("sign in",style: TextStyle(color: Colors.white,fontSize: 24,),)
                      ),
                      SizedBox(height: 50,),

                    ],
                  ),
                ),
              ),

            ],

          ),


        ),
      ),
    );
  }
}
