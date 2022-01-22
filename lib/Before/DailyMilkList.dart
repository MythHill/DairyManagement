import 'package:dairymanagement/TabularLitreList.dart';
import 'package:flutter/material.dart';

class DailyMilkList extends StatefulWidget {
  const DailyMilkList({ Key? key }) : super(key: key);

  @override
  _DailyMilkListState createState() => _DailyMilkListState();
}

class _DailyMilkListState extends State<DailyMilkList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.green,
      appBar: AppBar(title: Text('Daily Milk Chart'),),

       body: ListView(children: [
           Padding(
             padding: const EdgeInsets.only(left: 12, right: 12),
             child: ListTile(
               onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => TabularLitreList()));},
               title: Text('Date'),
               subtitle: Text('Litres'),
               trailing: Icon(Icons.delete),

             ),
           ),
           
           Padding(
             padding: const EdgeInsets.only(left: 12, right: 12),
             child: ListTile(
               onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => TabularLitreList()));},
               title: Text('Date'),
               subtitle: Text('Litres'),
               trailing: Icon(Icons.delete),
             ),
           )
         ],),
    );
  }
}