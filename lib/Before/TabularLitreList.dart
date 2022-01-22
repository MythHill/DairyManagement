import 'package:flutter/material.dart';

class TabularLitreList extends StatefulWidget {
  const TabularLitreList({ Key? key }) : super(key: key);

  @override
  _TabularLitreListState createState() => _TabularLitreListState();
}

class _TabularLitreListState extends State<TabularLitreList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.green,

      appBar: AppBar(title: Text('Litres Produced Today'),),


      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Table(defaultColumnWidth: FixedColumnWidth(150),
              border: TableBorder.all(color: Colors.black87,
              style: BorderStyle.solid,
              width: 2),
              children: [
                TableRow(
                  children: [
                    Column( children: [Text("Name",style: TextStyle(fontSize: 20),)],),
                    Column( children: [Text("Gender",style: TextStyle(fontSize: 20),)],),
                    Column( children: [Text("Litres",style: TextStyle(fontSize: 20),)],)
                  ]
                ),

                 TableRow(
                  children: [
                    Column( children: [Text("Name")],),
                    Column( children: [Text("Gender")],),
                    Column( children: [Text("Litres")],)
                  ]
                ),

                 TableRow(
                  children: [
                    Column( children: [Text("Name")],),
                    Column( children: [Text("Gender")],),
                    Column( children: [Text("Litres")],),
                  ]
                ),

                 TableRow(
                  children: [
                    Column( children: [Text("Name")],),
                    Column( children: [Text("Gender")],),
                    Column( children: [Text("Litres")],)
                  ]
                )
              ],),
            ),
          ],
        ),
      )
      
    );
  }
}