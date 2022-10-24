import 'package:flutter/material.dart';
import 'dart:math' as math;

class GestureButton extends StatelessWidget {

  final Color? backgroundColor;
  final Color? borderColor;
  final IconData? icon;
  final String labelSemantics;
  final Color? iconColor;
  final bool isRotate;
  final String textIcon;

  const GestureButton({
    Key? key, 
    required this.backgroundColor, 
    required this.borderColor, 
    required this.icon, 
    required this.labelSemantics,
    required this.iconColor,
    required this.isRotate,
    required this.textIcon
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: () {
        
      },
      child: Column(
        children: [
          Semantics(
            label: labelSemantics,
            child: Container(
              
              child: isRotate 
              ? Transform.rotate(
                angle: 180 * math.pi / 180,
                child: Icon(icon,color: iconColor, size: 40, )
              )
              : Icon(icon,color: iconColor, size: 40, ),
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(width: 2, color: borderColor!),
                color: backgroundColor,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Text(textIcon, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
          )
        ],
      ),
    );
  }
}