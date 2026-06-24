import 'package:eventura/core/app_route.dart';
import 'package:eventura/widgets/my_button.dart';
import 'package:eventura/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  final _emailcotroller = TextEditingController();
  final _namecontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

bool _obsecurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical:32),
            child: Form(child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // logo
                Image.asset(
                  "assets/logo.png",
                  width: 90,
                  height: 90,
                  color: Colors.tealAccent,
                ),
            
                const SizedBox(height: 50,),
                //text
                const Text("Create account",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.tealAccent
                ),
                
                ),
                const SizedBox(height: 25,),
                //subtext
                const Text("Sign up to get started",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey
                ),
              
            ),
             const SizedBox(height: 25,),
            //textfields
            
                //full name
                MyTextField(controller: _namecontroller, 
                hint: "Full Name", 
                icon: Icons.person_outlined
                ),
        
                 const SizedBox(height: 25,),
        
                //email
                MyTextField(
                  controller: _emailcotroller, 
                  hint: "Enter Your Email", 
                  icon: Icons.email_outlined, 
                  keyboardType: TextInputType.emailAddress,
                  ),
                 const SizedBox(height: 25,),
                //password
                MyTextField(controller: _passwordcontroller,
                 hint: "Password",
                icon: Icons.lock_outlined, 
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
                ),
                ),
                const SizedBox(height: 50,),
              

                //button
                MyButton(
                  text: "Sign up",
                 color: Colors.tealAccent,
                 onPressed: () {
                  context.goNamed(AppRoute.homepage);                 },
                 ),
        
                const SizedBox(height: 25,),
                //subtext
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   const Text("Already have an account",
                   style: TextStyle(color: Colors.grey),),
                   
                  ],
                ),
                
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("Signin",
                    style: TextStyle(
                      color: Colors.tealAccent,
                      fontWeight: FontWeight.w500
                    ),)
                  ],
                )
            ]
            ),
            ),
          ),
        ),
      ),
    );
  }
}
