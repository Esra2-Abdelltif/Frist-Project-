import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1_app/HomeScreen/HomeScreen.dart';
import 'package:flutter1_app/SingInScreen/SinInScreen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen1 extends StatefulWidget {

  @override
  State<LoginScreen1> createState() => _LoginScreen1State();
}

class _LoginScreen1State extends State<LoginScreen1> {
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var formkey =GlobalKey<FormState>();
  bool _secirty = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child:
        SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 50,),
                  Text('LOGIN',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                  Image(
                    image: AssetImage('assets/images/loginlogo.png'),),
                  SizedBox(
                    height: 40,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextFormField(
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
                          borderSide: BorderSide(color: Colors.pink,),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        labelText: 'Email Adress',
                        hintText: 'Enter Email Adress',
                        labelStyle: TextStyle(color: Colors.pink),
                        prefixIcon: Icon(Icons.email, color: Colors.pink,),
                        border: OutlineInputBorder(),


                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextFormField(
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
                      decoration:
                      InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink,),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        labelText: 'Password',
                        hintText: 'Enter Password',
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
                  ),
                  SizedBox(
                    height: 20,),
                  Container(
                    color: Colors.pink,
                    width: 250,

                    child: MaterialButton(
                      onPressed: () {
                        if (formkey.currentState!.validate()){
                          print(emailController);
                          print(passController);
                          Navigator.push(context,MaterialPageRoute(builder: (context) => HomeScreen()));
                        }

                      },
                      child: Text('Login',
                        style: TextStyle(color: Colors.white, fontSize: 20),),),
                  ),
                  SizedBox(
                    height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account ?'),
                      TextButton(onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => SingUpScreen()));
                      },
                          child: Text('Register Now..',
                            style: TextStyle(color: Colors.pink),))
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                      child: Divider(
                        color: Colors.grey[500],
                        height: 1.5,
                      ),
                    ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text('OR'),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey[500],
                          height: 1.5,
                        ),
                      ),
                  ],),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    InkWell(onTap: (){},
                      child:
                      Container(
                        //width: 100,height: 100,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Colors.pink,
                          ),
                          shape: BoxShape.circle,

                        ),
                        child: SvgPicture.asset('assets/icons/google.svg' ,height: 20,width: 20,),

                      ),
                    ),
                      SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        onTap: (){
                        },

                        child: Container(
                          //width: 100,height: 100,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: Colors.pink,
                            ),
                            shape: BoxShape.circle,

                          ),
                          child: SvgPicture.asset('assets/icons/facebook.svg' ,height: 20,width: 20,),

                        ),
                      ),

                      SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          //width: 100,height: 100,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: Colors.pink,
                            ),
                            shape: BoxShape.circle,

                          ),
                          child: SvgPicture.asset('assets/icons/twitter.svg' ,height: 20,width: 20,),

                        ),
                      ),
                  ],)
                ],
              ),
            ),
          ),
        ),)

    );
  }

}
