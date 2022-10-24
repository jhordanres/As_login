import 'package:flutter/material.dart';

class GreenButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
      child: InkWell(
        onTap: () {
          
        },
        child: Semantics(
          label: 'Boton',
          child: Container(
            width: double.infinity,
            height: 40,
            padding: EdgeInsets.only(right: 10),
            decoration: new BoxDecoration(
              color: Colors.lightGreen,
              border: new Border.all(color: Colors.green[800]!, width: 2.0),
              borderRadius: new BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Spacer(flex: 3,),
                Text("Siguiente", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),),
                Spacer(flex: 2,),
                Icon(Icons.arrow_forward_ios_rounded, color: Colors.black,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
