import 'package:dairymanagement/DailyMilkList.dart';
import 'package:dairymanagement/FarmForm.dart';
import 'package:flutter/material.dart';


class FarmList extends StatefulWidget {
  const FarmList({ Key? key }) : super(key: key);

  @override
  _FarmListState createState() => _FarmListState();
}

class _FarmListState extends State<FarmList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
       appBar: AppBar(
        title: Text("Your Farm List"),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => FarmForm()));
        },
         child: Icon(Icons.add),),

         body: ListView(children: [
           Padding(
             padding: const EdgeInsets.only(left: 12, right: 12),
             child: ListTile(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => DailyMilkList()));
               },
               title: Text('Farm 1'),
               subtitle: Text('Cow Farm'),
               trailing: Icon(Icons.delete),

             ),
           ),
           
           Padding(
             padding: const EdgeInsets.only(left: 12, right: 12),
             child: ListTile(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => DailyMilkList()));
               },
               title: Text('Farm 2'),
               subtitle: Text('Buffalo Farm'),
               trailing: Icon(Icons.delete),
             ),
           )
         ],),
    );
  }
}
