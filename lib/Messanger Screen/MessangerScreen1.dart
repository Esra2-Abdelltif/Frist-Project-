import 'package:flutter/material.dart';
import 'package:flutter1_app/HomeScreen/HomeScreen.dart';
import 'package:flutter1_app/WelcomeScreen/WelcomeScreen.dart';

class MessangerScreen1 extends StatelessWidget {
  const MessangerScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            InkWell(
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) =>MessangerScreen1()));},
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/esraa.jpg'),
              ),
            ),
            SizedBox(
              width: 10,),
            InkWell(
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) =>HomeScreen()));},
              child: Text('Chats',
                style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w500),),
            )
          ],
        ),
        actions: [
          IconButton(onPressed: (){},
              icon: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey[200],
                  child: Icon(Icons.camera_alt,color: Colors.black ,size: 17,))),

          IconButton(onPressed: (){},
              icon: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey[200],
                  child: Icon(Icons.edit,color: Colors.black,size: 17,)))
        ],
        titleSpacing: 20,
      ),
      //ListView
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: SingleChildScrollView(
          child: Column(children: [
            //Search
            InkWell(
              onTap: (){},
              child: Container(
                //  height: 40,
                padding: EdgeInsetsDirectional.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),

                ),
                child: Row(
                  children: [
                    Icon(Icons.search,color: Colors.grey[500],),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Search',style: TextStyle(color: Colors.grey[500]),),
                  ],
                ),

              ),
            ),
            SizedBox(
              height: 20,),
            Container(
              height: 100,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemBuilder:(context,index)=> BuildStoryItem(),
                  separatorBuilder:(context,index)=> SizedBox(width: 10,),
                  itemCount: 10),
            ),
            ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder:(context,index)=> BuildChatItem(),
                separatorBuilder:(context,index)=> SizedBox(height: 15,),
                itemCount: 10),
            //Story

            //Chats



          ],),
        ),
      ),
    );
  }
}
Widget BuildStoryItem()=>  Container(
  width: 60,
  child:
  Column(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/Ebthal.jpg'),
          ),
          CircleAvatar(
            radius: 8,
            backgroundColor: Colors.white,
          ),
          CircleAvatar(
            radius: 7,
            backgroundColor: Colors.green,
          ),
        ],
      ),
      Center(
        child: Text('Ebthal Abdellatif',style: TextStyle(fontSize: 13),
          maxLines: 2,overflow: TextOverflow.ellipsis,),
      ),
    ],
  ),

);
Widget BuildChatItem()=> Row(
children: [
Stack(
alignment: AlignmentDirectional.bottomEnd,
children: [
CircleAvatar(
radius: 30,
backgroundImage: AssetImage('assets/images/esraa.jpg'),
),
CircleAvatar(
radius: 8,
backgroundColor: Colors.white,
),
CircleAvatar(
radius: 7,
backgroundColor: Colors.green,
),
],
),
SizedBox(width: 5,),
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text('Esraa Abdellatif',
style: TextStyle(fontSize: 15,
fontWeight: FontWeight.w500,color: Colors.grey[700]),
maxLines: 1,overflow: TextOverflow.ellipsis,),
SizedBox(height: 5,),
Row(children: [
Expanded(
child:
Text('you send attachment .',
style:
TextStyle(
color: Colors.grey[700],fontWeight: FontWeight.w500)
,maxLines: 1,overflow: TextOverflow.ellipsis,),

),
Text('2:00 Pm',
style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.w500),),


],),
],),
),

],
);
