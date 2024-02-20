import 'package:flutter/material.dart';

class GoBackButton extends StatelessWidget {
  const GoBackButton({super.key});

  @override
  Widget build(BuildContext context) {
        double baseWidth = 1366;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return Container(
                      // unionKC9 (28:331)
                      margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 557.89*fem, 0*fem),
                      width: 20.61*fem,
                      height: 40*fem,
                      child: Image.asset(
                        'assets/page-1/images/union-KHw.png',
                        width: 20.61*fem,
                        height: 40*fem,
                      ),
                    );
  }
}