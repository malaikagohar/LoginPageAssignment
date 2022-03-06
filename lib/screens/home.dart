import 'package:flutter/material.dart';
import 'package:loginpage/screens/login.dart';
import 'package:loginpage/screens/register.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 100),
          child: Column( 
            children: [ 
              Image.asset("assets/amigos1.png",
              alignment: Alignment.bottomCenter
              ),
              Image.asset("assets/welcome1.png",
              alignment: Alignment.center
              ),
              ElevatedButton(
                onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> const LoginPage()));
              }, 
                child: const Text(
                  "Log in",
                  style: TextStyle(fontSize: 18),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.purple[600],
                  minimumSize: const Size(150,45),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),)
                )
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => const Register()));
              }, 
                child: const Text(
                  "Register",
                  style: TextStyle(fontSize: 18),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.purple[600],
                  minimumSize: const Size(200,45),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),)
                )
              )
            ],
          ),
        ),
      ),
    );   
  }
}