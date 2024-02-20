import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";
import 'package:myapp/pages/auth/sign_in_page.dart';



class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key, });


  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  late String currentUserEmail;

  @override
  void initState(){
    super.initState();
  }
  //sign user in method
  Future<void> signUserUp() async {
    try{
      if(emailController.text.isNotEmpty && passwordController.text.isNotEmpty ) {
        showDialog(context: context,
            builder: (context) => const Center(child: CircularProgressIndicator()));
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,);

        await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text);
        Navigator.pop(context);
        final currentUserEmail = FirebaseAuth.instance.currentUser!.email.toString();
        await FirebaseFirestore.instance.collection("Exercise").doc(currentUserEmail).set(
            {"userEmail": currentUserEmail});

      } else {
        Navigator.pop(context);
        showErrorMessage("Register Your Email and Password");
      }
    } on FirebaseAuthException catch(e){
      Navigator.pop(context);
      showDialog(
          context: context,
          builder:(context) => AlertDialog(
            title: Text("$e"),
          )
      );
    }

  }


  //error message to show user
  void showErrorMessage(String message){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          backgroundColor: Colors.blueAccent,
          title: Center(
            child: Text(
              message,
              style: const TextStyle(color: Colors.white),

            ),
          ),
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],

      body:
      SafeArea(
        child:Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 15,),
                //logo
                const Icon(
                    Icons.person_add_alt_1_rounded,
                    size: 80,
                    color: Color(0xffbbceee)
                ),

                const SizedBox(height: 20,),

                //welcome back
                const Text(
                  "Join Us",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16
                  ),
                ),

                const SizedBox(height: 20,),

                //user name text field
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    hintText: "Email"
                  ),
                  obscureText: false,
                ),

                const SizedBox(height: 8,),

                //password textfield
                TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    hintText: "Create Password"
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 8,),

                const SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:48.0),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        overlayColor:MaterialStateProperty.all(const Color.fromARGB(255, 182, 203, 240)) ,
                        backgroundColor:MaterialStateProperty.all(const Color(0xffbbceee)),
                      ),

                      onPressed: (){
                        signUserUp();
                      },
                      child: const Text("Registar", style: TextStyle(color: Colors.white, fontSize: 18),)),
                ),


                const SizedBox(height: 20,),
                //naver sign in
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0, top: 8, left:25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Registered?',
                        style: TextStyle(color: Colors.grey, fontSize: 16),),

                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context)=> const SignInPage()));
                        },

                        child: const Row(
                          children: [
                            Text(
                              'Sign Up',
                              style: TextStyle(color: Colors.blue, fontSize: 20),),
                            Icon(Icons.lock_open_rounded, size: 14, color: Colors.blueAccent,)
                          ],
                        ),
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }  }

