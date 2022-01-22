import 'package:dairymanagement/Api/Roles.dart';
import 'package:flutter/material.dart';

class FarmForm extends StatefulWidget {
  const FarmForm({ Key? key }) : super(key: key);

  @override
  _FarmFormState createState() => _FarmFormState();
}

class _FarmFormState extends State<FarmForm> {
 
  TextEditingController farmnameControler = TextEditingController();
  TextEditingController typeoffarmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text("Add Note"),
        ),
        body:
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, top: 40),
            child: Column(
              children: [
                TextField(
                  controller: farmnameControler,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: "Farm Name",
        
                  ),),
                  SizedBox(height: 20,),
                  TextField(
                  controller: typeoffarmController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: "Farm Type",
        
                  ),),
                  SizedBox(height: 20,),
                 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    ElevatedButton(onPressed: (){}, child: Text ("Cancel") ),
                    SizedBox(width: 120,),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Roles()));
                    }, child: Text ("Next"))
                  ],)
              ],
            ),
          ),
        ),
      
    );
  }
}
