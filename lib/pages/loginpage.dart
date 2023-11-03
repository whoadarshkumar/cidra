import 'package:collegeapp/functions/button.dart';
import 'package:collegeapp/functions/text_fiels.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text editing controller
  final email = TextEditingController();
  final password = TextEditingController();

  void signUserIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email.text,
      password: password.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'IIIT Bhagalpur',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff9C2040),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Image.asset('assets/logo.png',
                      height: h / 5, width: w / 2),
                ),

                const SizedBox(
                  height: 20,
                ),

                // email
                MyTextField(
                    controller: email, hintText: 'Email', obscureText: false),

                const SizedBox(
                  height: 20,
                ),

                //password
                MyTextField(
                    controller: password,
                    hintText: 'Password',
                    obscureText: true),

                const SizedBox(
                  height: 20,
                ),

                //button
                MyButton(
                  onTap: signUserIn,
                  text: 'Sign In',
                ),

                const SizedBox(
                  height: 10,
                ),

                Row(
                  children: [
                    const Text("Not a IIIT Bhagalpur Student"),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        "Explore IIITBh",
                        style: TextStyle(fontWeight: FontWeight.bold),
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
