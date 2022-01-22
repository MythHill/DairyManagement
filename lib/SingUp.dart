import 'package:dairymanagement/Controllers/SignUpController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);



  @override
  _SignUpState createState() => _SignUpState();
}


class _SignUpState extends State<SignUp> {

  var signupController = Get.put(SignUpController());
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
                controller: signupController.usernamecontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide(
                    color: Colors.red)
                  )),
                  ),),
                  
                  SizedBox(
              width: 400,
              child: TextField(
                controller: signupController.emailcontroller,
                decoration: InputDecoration(
                 
                  border: OutlineInputBorder(borderSide: BorderSide(
                    color: Colors.red)
                  )),


                ),
              ),

                  SizedBox(
              width: 400,
              child: TextField(
                controller: signupController.passwordcontroller,
                decoration: InputDecoration(
                 
                  border: OutlineInputBorder(borderSide: BorderSide(
                    color: Colors.red)
                  )),


                ),
              ),


              SizedBox(
              width: 400,
              child: TextField(
                controller: signupController.passwordconfirmcontroller,
                decoration: InputDecoration(
                  
                  border: OutlineInputBorder(borderSide: BorderSide(
                    color: Colors.red)
                  )),


                ),
              ),

              

              SizedBox(height: 30,),
              InkWell(onTap: signupController.SignUp,
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