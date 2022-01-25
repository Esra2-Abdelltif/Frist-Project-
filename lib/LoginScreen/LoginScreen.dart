import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1_app/shared/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 var emailController=TextEditingController();

 var passController=TextEditingController();
 var formkey =GlobalKey<FormState>();

  bool _secirty= true;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.pink,),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(children: [
            SizedBox(height: 15,),
            Text('Login',style: TextStyle(fontSize: 50,
              fontWeight: FontWeight.w700,
              foreground: Paint() ..color=Colors.pink ..strokeWidth=2 ..style=PaintingStyle.stroke
            ),),
            SizedBox(height: 30,),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                  return 'Please a valid Email';
                }
                return null;
              },
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink, ),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                labelText: 'Email Adress',
                labelStyle: TextStyle(color: Colors.pink),
                prefixIcon: Icon(Icons.email,color: Colors.pink,),
                border: OutlineInputBorder(),


              ),

            ),

            SizedBox(height: 20,),
            TextFormField(
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                if(value.length <=5)
                  {
                    return 'Please enter long password';
                  }
                return null;
              },
              controller: passController,
              keyboardType: TextInputType.text,
              obscureText: _secirty,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink, ),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.pink),
                suffixIcon: IconButton(onPressed: () {
                  setState(() {
                    _secirty =!_secirty;
                  });
                },
                  icon: Icon(_secirty ? Icons.visibility : (Icons
                      .visibility_off),color: Colors.pink,),),
                border: OutlineInputBorder(),



              ),
            ),
            SizedBox(height: 20,),
            Container(
              color: Colors.pinkAccent,
              width: double.infinity,
              child: MaterialButton(
                onPressed: (){
                  if (formkey.currentState!.validate()){
                    print(emailController);
                    print(passController);
                  }

              },
                child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 20),),),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text('Don\'t have an account ?'),
               TextButton(onPressed: (){},
                   child: Text('Register Now..' ,
                     style: TextStyle(color: Colors.pink),))
             ],
            )


          ],),
        ),
      ),

    );
  }
}
