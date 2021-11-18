import 'package:dairymanagement/Roles.dart';
import 'package:dairymanagement/home.dart';
import 'package:flutter/material.dart';
class AnimalList extends StatefulWidget {
  const AnimalList({ Key? key }) : super(key: key);

  @override
  _AnimalListState createState() => _AnimalListState();
}

class _AnimalListState extends State<AnimalList> {

  TextEditingController AnimalNameControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('Animal list'),),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Animal Name', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
               TextField(
                    controller: AnimalNameControler,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
                      ),
                      hintText: "Animal Name",
          
                    ),),
                    SizedBox(height: 20,),

                    Text('Animal Gender', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              DropdownButton(
                focusColor:Colors.white,
               elevation: 7,
                items: [],),
                SizedBox(height: 20,),

                Text('Animals Added', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                Text(''),
                SizedBox(height: 20,),

                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Roles()));
                    }, child: Text ("Back") ),
                    SizedBox(width: 80,),
                    ElevatedButton(onPressed: (){}, child: Text ("Add New Animal")),
                    SizedBox(width: 80,),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                    }, child: Text ("Finish"))
                  ],)





                
            ],
          ),
        ),
    );
  }
}