import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";
import 'package:myapp/pages/auth/register.dart';
import 'package:myapp/pages/home/home_page.dart';
import 'package:myapp/utils/utils.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});


  @override
  State<SignInPage> createState() => _SignInPage();
}

class _SignInPage extends State<SignInPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  late String appUserId;

  //sign user in method
  void signUserIn() async {
    //show loading circle
    showDialog(
      context: context,
      builder: (context){
        return const Center(
          child: CircularProgressIndicator(),
        );},
    );
    //try sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text).then(
            (value) => Navigator.push(
           context,
           MaterialPageRoute(
               builder: (context) => HomePage())));
        Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      //Wrong Email
      if (e.code == 'user-not-found'){
        //Show error to user
        showErrorMessage(
            'User not Found');
        //Wrong password
      } else if (e.code == 'wrong-password'){
        //show error to user
        showErrorMessage('Wrong Password');
      }
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
  void initState(){
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    double baseWidth = 1366;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      body:
      Padding(
        padding: EdgeInsets.fromLTRB(24, 100*fem, 24, 100*fem),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 15,),
                const Icon(
                  Icons.lock_open_rounded,
                  size: 90,
                  color: const Color(0xff0061ff),
                ),
                const SizedBox(height: 25,),
                //welcome back
                const Text(
                  "WELCOME",
                  style: TextStyle(
                      color: const Color(0xff0061ff),
                      fontSize: 18,
                      fontWeight: FontWeight.w700
                  ),
                ),
                
                const SizedBox(height: 25,),
                //user name text field
                TextField(
                  decoration: const InputDecoration(
                    hintText: "Email"
                  ),
                  controller: emailController,
                  obscureText: false,
                
                ),
                const SizedBox(height: 10,),
                //password textfield
                TextField(
                  decoration: const InputDecoration(
                    hintText: "Password"
                  ),
                  controller: passwordController,
                
                  obscureText: true,
                ),

                const SizedBox(height: 25,),
                //sign in button
                Container(
                margin: const EdgeInsets.only(bottom: 23),
                child: TextButton(
                  onPressed: signUserIn,
                  style: TextButton.styleFrom (
                    padding: EdgeInsets.all(10),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration (
                      color: const Color(0xffffba35),
                      borderRadius: BorderRadius.circular(20*fem),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x4c000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 7.5*fem,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Sign In',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Wanted Sans Variable',
                          fontSize: 40*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2575*ffem/fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
                
                const SizedBox(height: 50,),
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
                
                //Naver sign in buttons
                /* Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      SquareTile(imagePath: 'lib/assets/naver.png'),
                        //naver button
                      ],
                    ),
                
                    const SizedBox(height: 50,),*/
                
                //not a member? register now
                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0, top: 8, left:25, right: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Not a Memeber?',
                            style: TextStyle(color: Colors.grey, fontSize: 16),),
                          const SizedBox(height: 2,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (countext)=> const RegisterPage()));
                            },
                            child: const Center(
                              child: Text(
                                ' Register',
                                style: TextStyle(color:const Color(0xff0061ff) ,fontSize: 16),),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15,),
                
                      /*GestureDetector(
                
                        child: const Text("비밀번호를 잊으셨나요?", style: TextStyle(color: Colors.grey, fontSize: 12),),
                        onTap: (){
                          Navigator.pop(context);
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => const ForgotPasswordMailScreen())
                          );
                        },
                      ),*/
                
                
                
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

