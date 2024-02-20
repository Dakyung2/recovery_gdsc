import 'package:flutter/material.dart';
import 'package:myapp/utils/utils.dart';

class PageTitleFont extends StatelessWidget {

  const PageTitleFont({super.key, 
    required this.text,    
    this.height
  });

  final String text;
  final double? height;

  //Implementing the build Method
  @override
  Widget build(BuildContext context){
       double baseWidth = 1366;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Center(
                    // myactivitydyX (28:330)
                    child: Text(
                      text,
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Wanted Sans Variable',
                        fontSize: 30*ffem,
                        fontWeight: FontWeight.w700,
                        height: height,
                        color: const Color(0xff000000),
                      ),
                    ),
                  );
  }
}