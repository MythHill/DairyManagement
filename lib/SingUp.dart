import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text("Dairy Management"),
        ),

 body: Container(
        height: Get.height,
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: const EdgeInsets.only(left: 10.0, bottom: 4.0),
            child: Text(
              'Login',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),

            ),),
            SizedBox(
              width: 400,
              child: TextField(
                controller: getController.usernameController,
                decoration: InputDecoratoion(
                  label: Text('User Name'),
                  border: OutlineInputBorder(borderSide: Borderside(
                    color: Colors.red)
                  )),
                  ),),
                  
                  SizedBox(
              width: 400,
              child: TextField(
                controller: getController.usernameController,
                decoration: InputDecoratoion(
                  label: Text('Email Id'),
                  border: OutlineInputBorder(borderSide: Borderside(
                    color: Colors.red)
                  )),


                ),
              ),

                  SizedBox(
              width: 400,
              child: TextField(
                controller: getController.usernameController,
                decoration: InputDecoratoion(
                  label: Text('Password'),
                  border: OutlineInputBorder(borderSide: Borderside(
                    color: Colors.red)
                  )),


                ),
              ),


              SizedBox(
              width: 400,
              child: TextField(
                controller: getController.usernameController,
                decoration: InputDecoratoion(
                  label: Text(' Confirm Password'),
                  border: OutlineInputBorder(borderSide: Borderside(
                    color: Colors.red)
                  )),


                ),
              ),

              

              SizedBox(height: 30,),
              InkWell(onTap: () {},
              child: Container(
                height: 50,
                width: 400,
                alignment : Alignment.center,
                decoration : BoxDecoration(borderRadius: BorderRadius.circular(5),
                color: Colors.purple,
                ),
                child: Text("Sign Up",
                style: TextStyle(fontSize: 20, color: Colors.white),),
                

              ),)

            
          ],
        ),),

        
    );
  }
}