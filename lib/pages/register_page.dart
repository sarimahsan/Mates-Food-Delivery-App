// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:myapp/components/my_button.dart';
import 'package:myapp/components/my_textfield.dart';
import 'package:myapp/services/auth/auth_service.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({
    super.key,
    required this.onTap,
  });
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void register() async {
    // get  auth service
    final _authService = AuthService();

    // check if passwords match create user
    if (passwordController.text == confirmPasswordController.text) {
      // try creating a user
      try {
        await _authService.signUpWithEmailPassword(
          emailController.text,
          passwordController.text,
        );
      } 
      
      catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    } 
    // if password dont match show error
    else {
      showDialog(
          context: context,
          builder: (context) => const AlertDialog(
            title: Text("Passwords do not match"),
          ),
        );
      }
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),

                // logo
                Icon(
                  Icons.lock_open,
                  size: 80,
                  color: Colors.grey.shade600,        
                ),

                const SizedBox(height: 50),

                // msg app slogan
                Text(
                  "Let's create an account for you",
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),

                const SizedBox(height: 25),

                // email textfield
                MyTextfield(
                  controller: emailController,
                  hinttext: "Email",
                  obsecuretext: false,
                ),

                const SizedBox(height: 15),

                // password textfield
                MyTextfield(
                  controller: passwordController,
                  hinttext: "Password",
                  obsecuretext: true,
                ),

                const SizedBox(height: 15),
                MyTextfield(
                  controller: confirmPasswordController,
                  hinttext: "Confirm Password",
                  obsecuretext: true,
                ),
                const SizedBox(height: 15),

                // sign-in button
                MyButton(text: "Sign Up", onTap: register),

                const SizedBox(height: 15),

                // already have an account
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "already have an account?",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        "Login Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
