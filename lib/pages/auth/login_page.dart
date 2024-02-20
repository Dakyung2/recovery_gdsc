
import 'package:myapp/pages/auth/register.dart';
import 'package:myapp/pages/auth/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:myapp/utils/utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 1366;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      padding: EdgeInsets.fromLTRB(500*fem, 100*fem, 500*fem, 100*fem),
      decoration: const BoxDecoration (
        color: Color(0xfff5f5f5),
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            //APP LOGO
              Container(
                margin: const EdgeInsets.only(bottom: 18),
                width: 259,
                height: 161,
                child: Image.asset(
                  fit: BoxFit.contain,
                  'assets/page-1/images/-8Vb.png',
                ),
              ),
              //APP TITLE
              Container(
                margin: const EdgeInsets.only(bottom: 23),
                child: Text(
                  'RECOVERY',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'Wanted Sans Variable',
                    fontSize: 50*ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2575*ffem/fem,
                    color: const Color(0xff0061ff),
                  ),
                ),
              ),
            
             //SIGN IN BUTTON
              Container(
                margin: const EdgeInsets.only(bottom: 23),
                child: TextButton(
                  onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  const SignInPage()),
                        );
                  },
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
                
              Container(
                margin: EdgeInsets.only(bottom: 23),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  const RegisterPage()),);
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(10),
                    ),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration (
                      color: const Color(0xff00d86e),
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
                        'Sign Up',
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
            /*
              Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                  child: Text(
                    'Find an account',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Wanted Sans Variable',
                      fontSize: 20*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2575*ffem/fem,
                      decoration: TextDecoration.underline,
                      color: const Color(0xff000000),
                      decorationColor: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            */
            ],
          ),
        ),
      ),
    );
  }
}