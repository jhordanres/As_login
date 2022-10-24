import 'dart:ui';

import 'package:flutter/material.dart';

class GestureZoneWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: "Zona de gestos, activada",
      child: Container(
        width: double.infinity,
        height: 200,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        decoration: BoxDecoration(
          color: Colors.green[50],
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.lightGreenAccent[700]!, width: 3),
        ),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Semantics(
              label: "Zona de gestos, etiqueta de texto",
              child: Text(
                "Zona de gestos",
                style: TextStyle(
                    color: Colors.lightGreenAccent[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
            ),
            SizedBox(height: 40,),
            Semantics(
              label: "La zona de gestos está activada, etiqueta de texto",
              child: Text(
                "La zona de gestos está activada.",
                style: TextStyle(
                  color: Colors.green[900],
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                ),
                ),
            )
          ],
        ),
      ),
    );
  }
}
