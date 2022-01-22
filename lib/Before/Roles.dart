import 'package:dairymanagement/AnimalList.dart';
import 'package:dairymanagement/FarmForm.dart';
import 'package:flutter/material.dart';
class Roles extends StatefulWidget {
  const Roles({ Key? key }) : super(key: key);

  @override
  _RolesState createState() => _RolesState();
}

class _RolesState extends State<Roles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('Roles'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text('Admin and Moderators', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            DropdownButton(
              focusColor:Colors.white,
             elevation: 7,
              items: [],),

              SizedBox(height: 70,),
              Text('Workers and Farmers', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            DropdownButton(
              focusColor:Colors.white,
             elevation: 7,
              items: [],),

              SizedBox(height: 40,),

               Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => FarmForm()));
                    }, child: Text ("Back") ),
                    SizedBox(width: 120,),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AnimalList()));
                    }, child: Text ("Next"))
                  ],)
          ],

          
        ),
      ),
      
      
      
    );
  }
}