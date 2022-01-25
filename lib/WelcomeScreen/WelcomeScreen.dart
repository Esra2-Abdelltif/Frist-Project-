import 'package:flutter/material.dart';
import 'package:flutter1_app/LoginScreen/LoginScreen1.dart';
import 'package:flutter1_app/SingInScreen/SinInScreen.dart';
import 'package:flutter1_app/shared/components.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image:AssetImage('assets/images/welcome.png'),height: 400,),
          Text('FLUTTER',
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
          Text('WELCOME TO FRIST PROJECT',
            style: TextStyle(fontSize: 15,fontWeight: FontWeight.w100),),
          SizedBox(
            height: 20,),
          SizedBox(
            height: 10,),
          Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: MaterialButton(color:Colors.pink,hoverColor: Colors.black,
              onPressed: (){
              NavigateTo(router: LoginScreen1(),context: context);

              },
                child:Text('LOGIN',style: TextStyle(fontSize: 20,color: Colors.white),), ),
          ),
          SizedBox(
            height: 20,),
          Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: FlatButton(color:Colors.grey[100],
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>SingUpScreen()));
              },
              child:Text('SIGNUP',style: TextStyle(fontSize: 20,color: Colors.black87),), ),
          )
        ],
      ),
    );

  }
}
