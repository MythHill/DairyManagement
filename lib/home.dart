

import 'package:dairymanagement/FarmList.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text("Dairy Management"),
        ),
        body: 
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text('Home Page', style: TextStyle(
                  fontSize: 40,
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold
                ),),

                SizedBox(height: 40,),

                ElevatedButton(onPressed: (){}, child: Text('Add New Participant')),

                SizedBox(height: 40,),

                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FarmList()));
                }, child: Text('Farm List')),
              ],

            ),
          )


      
    );
  }
}