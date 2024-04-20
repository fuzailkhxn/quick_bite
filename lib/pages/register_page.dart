// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:quick_bite/components/my_button.dart';
import 'package:quick_bite/components/my_textfield.dart';
import 'package:quick_bite/pages/home_page.dart';
import 'package:quick_bite/services/auth/auth_service.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //text editing controlleres
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void register() async {
    //get auth servive
    final _authService = AuthService();

    //check if passwords match -> create user
    if (passwordController.text == confirmPasswordController.text) {
      //try creating user
      try {
      final userCreds =  await _authService.signUpWithEmailPassword(
          emailController.text,
          passwordController.text,
        );

        if(userCreds !=null){
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage()),
              );
            
        }
        else{
          showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Something went wrong"),
          ),
        );
        }
      }

      //display any errors
      catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    }

    //if password dont match -> show error
    else{
      showDialog(
          context: context,
          builder: (context) =>const AlertDialog(
            title: Text("Passwords don't match!"),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),

                //logo
                Icon(
                  Icons.lock_open,
                  size: 80,
                  color: Colors.grey.shade600,
                ),

                const SizedBox(height: 50),
                
                Text(
                  "Let's create an account for you",
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(height: 25),
                MyTextField(
                  controller: emailController,
                  hintText: "Email",
                  obscureText: false,
                ),
                const SizedBox(height: 10),
                MyTextField(
                  controller: passwordController,
                  hintText: "Passsword",
                  obscureText: true,
                ),
                const SizedBox(height: 10),
                MyTextField(
                  controller: confirmPasswordController,
                  hintText: "Confirm passsword",
                  obscureText: true,
                ),
                const SizedBox(height: 25),
                MyButton(
                  text: "Sign Up",
                  onTap: () {
                    register();
                  },
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        "Login now",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
