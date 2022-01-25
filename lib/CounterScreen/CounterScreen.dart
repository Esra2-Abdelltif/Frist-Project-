import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('CounterScreen'),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: ()
                  {
                    setState(() {
                      counter++;
                      print(counter);
                    });
                  },

                  child:
                  Text('PLUS',
                    style:
                    TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                  ),),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    primary: Colors.white,
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text('$counter',style: TextStyle(fontSize: 30,color: Colors.pink),),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      counter--;
                      print(counter);
                    });
                  },
                  child:Text('MINS',style:
                  TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                  ),),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    primary: Colors.white,
                  ),
                  ),
          ],
        ),
            SizedBox(height: 50,),
            TextButton(
              onPressed: (){
                setState(() {
                  counter=0;
                  print(counter);
                });
              },
              child:Text('REST',style:
              TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),),
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                primary: Colors.white,
              ),
            ),
        ],),
      ),
    );
  }
}
