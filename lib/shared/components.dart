
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void NavigateTo({context,router})=>  Navigator.push(context,MaterialPageRoute(builder: (context) => router));
Widget defultMaterialButton ({
   double width=double.infinity,
  Color backColor = Colors.pink,
  double borderRadius=25,
  double fontsize=20,
  Color ColorText : Colors.white,
  required double height,
  required String text,
  required Function function,
})=> Container(
  width: width,
  height: height,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(borderRadius)),
  clipBehavior: Clip.antiAliasWithSaveLayer,
  child:MaterialButton(color:backColor,hoverColor: Colors.black,
    onPressed: function(),
    child:Text(text,style: TextStyle(fontSize:fontsize ,color:ColorText),), ),
);


Widget defulutTextFormFild ({
 required TextEditingController controller,
  required Function  validator,
  required TextInputType type,
  required String label,
   Color BorderSideColor:Colors.pink,
  Color TextStyleColor:Colors.pink,
  required IconData prefixIcon
})=>TextFormField(
  validator:validator(),
  controller:controller,
  keyboardType: type,
  decoration: InputDecoration(
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: BorderSideColor ),
      borderRadius: BorderRadius.circular(25.0),
    ),
    labelText: label,
    labelStyle: TextStyle(color: TextStyleColor),
    prefixIcon: Icon(prefixIcon,color: Colors.pink,),
    border: OutlineInputBorder(),


  ),

);