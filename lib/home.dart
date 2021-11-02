import 'dart:html';

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
                  fontWeight: FontWeight.bold
                ),),

                SizedBox(height: 40,),

                ElevatedButton(onPressed: (){}, child: Text('Milk produced today')),

                SizedBox(height: 40,),

                ElevatedButton(onPressed: (){}, child: Text('Daily Tracker')),

                SizedBox(height: 40,),

                ElevatedButton(onPressed: (){}, child: Text('Cow tracker')),

                SizedBox(height: 40,),

                ElevatedButton(onPressed: (){}, child: Text('Income Tracker')),
              ],

            ),
          )


      
    );
  }
}