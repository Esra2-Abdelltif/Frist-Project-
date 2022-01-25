import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class UserModel{
  final int id;
  final int phone;
  final String name;

  UserModel(@required this.id, @required this.phone, @required this.name);
}
class UserScreen extends StatelessWidget {
  List<UserModel> Users =[
   UserModel(1,01093723604,'Esraa Abdellatif'),
    UserModel(2,01093723604,'Alaa Abdellatif'),
    UserModel(3,01093723604,'Ebthal Abdellatif'),
    UserModel(4,01093723604,'Esraa Abdellatif'),
    UserModel(5,01093723604,'Esraa Abdellatif'),
    UserModel(6,01093723604,'Esraa Abdellatif'),
    UserModel(7,01093723604,'Esraa Abdellatif'),
    UserModel(8,01093723604,'Esraa Abdellatif'),
    UserModel(9,01093723604,'Esraa Abdellatif'),
    UserModel(10,01093723604,'Esraa Abdellatif'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('UserScreen'),
      ),
      body:ListView.separated(itemBuilder: (context,index)=>BuildUserItem(Users[index]),
          separatorBuilder: (context,index)=> Container(
        width: double.infinity,
        height: 1,
        color: Colors.grey[400],
      ),
          itemCount: Users.length)
    );
  }
}
Widget BuildUserItem(UserModel User)=> Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row(
    children: [
      CircleAvatar(radius: 30,
        backgroundColor: Colors.blue[500],
        child: Text('${User.id}',style: TextStyle(fontSize: 25),),

      ),
      SizedBox(
        width: 10,
      ),
      Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${User.name}',style: TextStyle(fontSize: 18),),
            Text('${User.phone}',style: TextStyle(fontSize: 15),),

          ],),
      ),

    ],
  ),
);

