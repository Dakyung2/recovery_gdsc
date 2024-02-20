import 'package:flutter/material.dart';

class ToggleButtonStyle extends StatelessWidget {
  const ToggleButtonStyle({required this.text, super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 1366;
    double fem = MediaQuery.of(context).size.width / baseWidth;

    return Container(
      width: 104*fem,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6*fem)
      ),
      child:Center(
        child: Text(text,
          textAlign: TextAlign.center,
          selectionColor: const Color(0xff0061ff),
          
                                    
            ),
      ),);
  }
}