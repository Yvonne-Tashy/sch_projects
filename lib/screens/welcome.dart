import 'package:eventura/auth/signup.dart';
import 'package:eventura/core/app_route.dart';
import 'package:eventura/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Column(
              children: [
                //logo
                Center(
                  child: Image.asset("assets/logo.png", height: 170, width: 120,
                  color: Colors.tealAccent,),
                ),
                const SizedBox(height: 20),
            
                //welcome text
                Text(
                  "Welcome to Eventura",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.tealAccent,
                    fontWeight: FontWeight.w300,
                  ),
                ),
            
                //welcome subtext
                Text(
                  "Discover Events,",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                //subtext 2
                Text(
                  "Create lasting memories",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.tealAccent,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 10),
            
                //image
                Container(
                  height: 200,
                  width: 200,
                  child: Image.asset("assets/placeholder.jpeg", fit: BoxFit.cover),
                ),
                const SizedBox(height: 10),
            
                //Get started button
                MyButton(onPressed:() {
                  context.goNamed(AppRoute.signup);
                },
                 text: "Get Started",
                color: Colors.tealAccent,
                
                  ),
                
            
                const SizedBox(height: 20),
            
                //login button
                MyButton(text: "Log In", color: Colors.white,
                onPressed: () {
                 context.goNamed(AppRoute.signin);
                },

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
