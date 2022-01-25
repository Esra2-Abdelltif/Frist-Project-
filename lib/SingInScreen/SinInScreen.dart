import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1_app/HomeScreen/HomeScreen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SingUpScreen extends StatefulWidget {

  @override
  State<SingUpScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<SingUpScreen> {
  var emailController = TextEditingController();
  var FNameController = TextEditingController();
  var LNameController = TextEditingController();
  var passController = TextEditingController();
  var RePassController = TextEditingController();
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
                  Text('SINGUP',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                  Image(
                    image: AssetImage('assets/images/singup.png'),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextFormField(
                      controller: FNameController,
                      //autovalidateMode: AutovalidateMode.always,
                      validator: (value){
                          if(value!.isEmpty)
                             return 'Please Enter Name';
                           return null;
                         },
                      onSaved:(value){
                        FNameController = value as TextEditingController;
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink,),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        labelText: 'Frist Name',
                        hintText: 'Enter Frist Name',
                        labelStyle: TextStyle(color: Colors.pink),
                        prefixIcon: Icon(Icons.person, color: Colors.pink,),
                        border: OutlineInputBorder(),


                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextFormField(
                      validator: (value){
                        if(value!.isEmpty)
                          return 'Please Enter Name';
                        return null;
                      },
                      onSaved:(value){
                        LNameController = value as TextEditingController;
                      },
                      controller: LNameController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink,),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        labelText: 'Last Name',
                        hintText: 'Enter Last Name',
                        labelStyle: TextStyle(color: Colors.pink),
                        prefixIcon: Icon(Icons.person, color: Colors.pink,),
                        border: OutlineInputBorder(),


                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,),
                  Padding(

                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextFormField(
                      validator: (value){
                        if(value!.isEmpty)
                          return 'Please Enter Email';
                        if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
                          return 'Please a valid Email';
                          }
                        return null;
                      },
                      onSaved:(value){
                        emailController = value as TextEditingController;
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
                    height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextFormField(

                      controller: passController,
                      keyboardType: TextInputType.text,
                      obscureText: _secirty,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Password';
                        }
                        if(value.length <=5)
                        {
                          return 'Please enter long password';
                        }
                        return null;
                      },
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
                        prefixIcon: Icon(Icons.vpn_key_sharp ,color: Colors.pink,),
                        border: OutlineInputBorder(),


                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextFormField(
                      controller: RePassController,
                      //autovalidateMode: AutovalidateMode.always,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Password';
                        }
                        if(value.length <=5)
                        {
                          return 'Please enter long password';
                        }
                   if(passController.text!=RePassController.text) {
                                return "Password does not match";
                      }
                        return null;
                      },
                      keyboardType: TextInputType.text,
                      obscureText:true,
                      decoration:
                      InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink,),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        labelText: 'Confirm Password',
                        hintText: 'Enter Password',
                        labelStyle: TextStyle(color: Colors.pink),
                        prefixIcon:  Icon(Icons.vpn_key_sharp ,color: Colors.pink,),

                        border: OutlineInputBorder(),


                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,),
                  Container(
                    color: Colors.pink,
                    width: 250,

                    child: MaterialButton(
                      onPressed: () {
                        if (formkey.currentState!.validate()){
                        print(FNameController);
                        print(LNameController);
                        print(emailController);
                        print(passController);
                        print(RePassController);
                        Navigator.push(context,MaterialPageRoute(builder: (context) => HomeScreen()));
                        }


                      },
                      child: Text('Sing Up',
                        style: TextStyle(color: Colors.white, fontSize: 20),),),
                  ),
                  SizedBox(
                    height: 20,),


                ],
              ),
            ),
          ),
        ),)

    );
  }

}
