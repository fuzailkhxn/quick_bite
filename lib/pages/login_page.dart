import 'package:flutter/material.dart';
import 'package:quick_bite/components/my_button.dart';
import 'package:quick_bite/components/my_textfield.dart';
import 'package:quick_bite/pages/home_page.dart';
import 'package:quick_bite/services/auth/auth_service.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //login method
  void login()async{
    //get instance of auth service 
    final _authService=AuthService();

    //try sign in
    try{
      await _authService.signInWithEmailPassword(emailController.text, passwordController.text,);
    }
   
   //display any errors
   catch(e){
    showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );

        //forgot password
        void forgotPw(){
          showDialog(
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: Theme.of(context).colorScheme.background,
            title: const Text("User tapped forgot password."),
          ),
        );  
        }
   }

    // //NAVOIGATE TO HOME PAGE
    // Navigator.push(context,MaterialPageRoute(builder: (context) => const HomePage(),),);
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
                  Icons.lock_open_rounded,
                  size: 80,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),

                const SizedBox(height: 50),

                 
                Text(
                  "QuickBite",
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),

                const SizedBox(height: 25),

                //email textfield
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

                const SizedBox(height: 25),

                MyButton(
                  text: "Login",
                  onTap: login,
                ),

                const SizedBox(height: 25),

                //not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a member?",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                    child:Text(
                      "Register now",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.bold,),
                    ),),
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
