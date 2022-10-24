import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget{

  final IconData icon;
  final String placeholder;
  final TextEditingController textEditingController;
  final TextInputType keyboardType;
  final bool isPassword;

  const InputWidget({
    Key? key, 
    required this.icon, 
    required this.placeholder, 
    required this.textEditingController, 
    this.keyboardType = TextInputType.text,
    this.isPassword = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.only(right: 20,),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: Offset(0, 5),
            blurRadius: 5
          )
        ]
      ),

      child: TextField(
        controller: this.textEditingController,
        autocorrect: false,
        keyboardType: this.keyboardType,
        obscureText: this.isPassword,
        decoration: InputDecoration(
          hintStyle: TextStyle(fontWeight: FontWeight.bold),
          prefixIcon: Icon(this.icon, color: Colors.grey[600]),
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          hintText: this.placeholder
        ),
      ),
    );
  }
}