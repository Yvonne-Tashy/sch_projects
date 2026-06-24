import 'package:eventura/core/app_route.dart';
import 'package:eventura/widgets/my_button.dart';
import 'package:eventura/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final _namecontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

bool _obsecurePassword = true;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //logo
                  Image.asset(
                  "assets/logo.png",
                  width: 90,
                  height: 90,
                  color: Colors.tealAccent,
                ),
                const SizedBox(height: 15,),
                //lock
                Icon(
                  Icons.lock,
                  size: 100,
                ),
                const SizedBox(height: 15,),
                //welcome back
                Text("Welome Back",
                style: TextStyle(fontSize: 12,
                color: Colors.greenAccent),
                ),
                const SizedBox(height: 15,),
                //username
                MyTextField(
                  controller: _namecontroller, 
                  hint: "Enter Username",
                   icon: Icons.person),
                //password
                MyTextField(
                  controller: _passwordcontroller,
                   hint: "Enter your password", 
                   icon: Icons.lock_outline,
                   obsecureText: _obsecurePassword, 
                suffix: IconButton(
                  onPressed:(){setState(() {
                  _obsecurePassword = !_obsecurePassword;
                });
                },
                 icon: Icon(
                  _obsecurePassword
                  ?Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
                  color: Colors.grey,
                  )
                ),),
                const SizedBox(height: 15,),
                //forgot password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forgot Password?",
                      style: TextStyle(color: Colors.white10),),
                    ],
                  ),
                ),
                const SizedBox(height: 15,),
                //signin
                MyButton(
                  text: "Sign In", 
                  color: Colors.tealAccent,
                  onPressed: () {
                    context.goNamed(AppRoute.homepage);
                  },
                  ),
                  const SizedBox(height: 50,),
                //or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                        )
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "Or Continue with",
                            style: TextStyle(color: Colors.white),
                            ),
                        ),
                        Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                        )
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 50,),
                //google logo + apple sign in buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //google button
                    Image.asset(
                  "assets/google1.png",
                  width: 50,
                  height: 72,
                  ),
                  const SizedBox(height: 25,),
                  //apple logo
                  Image.asset(
                  "assets/Apple1.png",
                  width: 50,
                  height: 72,
                  color: Colors.white60,)
                  ],
                ),
                const SizedBox(height: 50,),
                //not a member, sign up
                Row(
                  children: [
                    Text("Not a member?",
                    style: TextStyle(color: Colors.grey),),
                    const SizedBox(width: 4,),
                    GestureDetector(
                      onTap: () {
                        context.goNamed(AppRoute.signup);
                      },
                      child: Text(
                        "Register Now",
                        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ), 
                ],
              )),
          ),
        )),
    );
  }
}