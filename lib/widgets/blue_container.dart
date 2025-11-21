import 'package:flutter/material.dart';

class BlueContainer extends StatelessWidget {
  const BlueContainer({super.key, required this.txt, });


    final String txt;

  @override
  Widget build(BuildContext context) {
    return Container(width: 60,height: 80,
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                 color: Colors.blue),
                 child: Center(
                   child: Text(txt,style: TextStyle(color: Colors.white,
                   fontSize: 30),),
                 ),
                 );
  }
}