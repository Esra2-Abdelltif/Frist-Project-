import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1_app/CounterScreen/cubit/cubit.dart';
import 'package:flutter1_app/CounterScreen/cubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>CounterCubit(),
      child: BlocConsumer<CounterCubit,CounterState>(
       listener: (context,state){
         if(state is CounterIntialState) print('intial state');
         if(state is CounterPlusState) print('plus state');
         if(state is CounterMinusState) print('minus state');
         if(state is CounterRestsState) print('rest state');


       },
        builder: (context,state){
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

                         CounterCubit.get(context).plus();


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
                       child: Text('${CounterCubit.get(context).counter}',style: TextStyle(fontSize: 30,color: Colors.pink),),
                     ),
                     TextButton(
                       onPressed: (){

                         CounterCubit.get(context).minus();
                       

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

                     CounterCubit.get(context).rest();

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
        },
      ),
    );
  }
}
