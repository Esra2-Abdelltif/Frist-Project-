import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter1_app/CounterScreen/CounterScreen.dart';
import 'package:flutter1_app/LoginScreen/LoginScreen.dart';
import 'package:flutter1_app/LoginScreen/LoginScreen1.dart';
import 'package:flutter1_app/Messanger%20Screen/MessangerScreen.dart';
import 'package:flutter1_app/Messanger%20Screen/MessangerScreen1.dart';
import 'package:flutter1_app/UserScreen/UserScreen.dart';
import 'package:flutter1_app/WelcomeScreen/WelcomeScreen.dart';
import 'package:flutter1_app/card_birthady/card_birthady.dart';
import 'package:flutter1_app/main.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      // leading: Icon(Icons.ac_unit),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen()));
          },
              icon: Icon(Icons.login)),

         ],
        title: InkWell(
          onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) =>WelcomeScreen()));
          },
            child: Text('Frist App',)),
        elevation: 50,
        //centerTitle: true,
        //titleSpacing: 50,
       //primary: false,
       // brightness: Brightness.light,

    ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Container(
          //width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Stack(
              alignment:Alignment.center,
                        children: [
                          Image(image:
                          NetworkImage('https://cdn.pixabay.com/photo/2013/07/21/13/00/rose-165819_1280.jpg'),
                            height: 200,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            width: 200,
                            height: 50,
                            alignment: Alignment.center,
                            color: Colors.black.withOpacity(.2),
                              child: Text('Welcome',style:
                              TextStyle(fontSize: 20,color: Colors.white),
                                textAlign: TextAlign.center,))
                        ],
                     ),
                  ),
                ],
              ),
            ),
              SizedBox(height: 15,),
              Center(
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: FlatButton(color:Colors.pink,
                    onPressed: (){
                      // Navigator.pushReplacement(
                      //     context,
                      //     new MaterialPageRoute(
                      //         builder: (BuildContext context) => new MessangerScreen()));
                      Navigator.push(context,MaterialPageRoute(builder: (context) =>MessangerScreen()));
                    },
                    child:Text('MessangerScreen',style: TextStyle(fontSize: 20,color: Colors.white),), ),
                ),
              ),
              SizedBox(height: 15,),
              Center(
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: FlatButton(color:Colors.pink,
                    onPressed: (){
                      // Navigator.pushReplacement(
                      //     context,
                      //     new MaterialPageRoute(
                      //         builder: (BuildContext context) => new MessangerScreen()));
                      Navigator.push(context,MaterialPageRoute(builder: (context) =>MessangerScreen1()));
                    },
                    child:Text('MessangerScreen',style: TextStyle(fontSize: 20,color: Colors.white),), ),
                ),
              ),
              SizedBox(height: 15,),
              Center(
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: FlatButton(color:Colors.pink,
                    onPressed: (){
                      // Navigator.pushReplacement(
                      //     context,
                      //     new MaterialPageRoute(
                      //         builder: (BuildContext context) => new MessangerScreen()));
                      Navigator.push(context,MaterialPageRoute(builder: (context) =>UserScreen()));
                    },
                    child:Text('UserScreen',style: TextStyle(fontSize: 20,color: Colors.white),), ),
                ),
              ),
              SizedBox(height: 15,),
              Center(
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: FlatButton(color:Colors.pink,
                    onPressed: (){
                      // Navigator.pushReplacement(
                      //     context,
                      //     new MaterialPageRoute(
                      //         builder: (BuildContext context) => new MessangerScreen()));
                      Navigator.push(context,MaterialPageRoute(builder: (context) =>CounterScreen()));
                    },
                    child:Text('CounterScreen',style: TextStyle(fontSize: 20,color: Colors.white),), ),
                ),
              ),
              SizedBox(height: 15,),
              Center(
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: FlatButton(color:Colors.pink,
                    onPressed: (){

                      Navigator.push(context,MaterialPageRoute(builder: (context) =>card_birthady()));
                    },
                    child:Text('Birthday Card',style: TextStyle(fontSize: 20,color: Colors.white),), ),
                ),
              ),
              

            ],
          ),
        ),
      ),
    );
  }
  
}
