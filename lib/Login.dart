import 'package:dairymanagement/Controllers/LoginController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({ Key? key }) : super(key: key);

  var loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                controller: loginController.usernamecontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide(
                    color: Colors.red)
                  )),


                ),
              ),
              SizedBox(
              width: 400,
              child: TextField(
                controller: loginController.passwordcontroller,
                decoration: InputDecoration(
                  border :OutlineInputBorder(borderSide: BorderSide(color: Colors.red))
                ),


                ),
              ),

              SizedBox(height: 30,),
              InkWell(onTap: loginController.login,
              child: Container(
                height: 50,
                width: 400,
                alignment : Alignment.center,
                decoration : BoxDecoration(borderRadius: BorderRadius.circular(5),
                color: Colors.purple,
                ),
                child: Text("Login",
                style: TextStyle(fontSize: 20, color: Colors.white),),
                

              ),)

            
          ],
        ),),
      
    );
  }
}