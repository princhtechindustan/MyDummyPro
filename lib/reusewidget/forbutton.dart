import 'package:flutter/material.dart';

class Button extends StatelessWidget{

  Button({required this.onPressed,this.text, this.color});
  final VoidCallback onPressed;
  final String? text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Container(
     margin:const EdgeInsets.all(10),
     child: TextButton(
       onPressed: onPressed,
       child: Text(text!),

     ),
   );
  }

}