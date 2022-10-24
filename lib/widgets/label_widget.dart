import 'package:flutter/material.dart';

class LabelsWidget extends StatelessWidget {
  final String? title;
  final String? subTitle;

  const LabelsWidget({
    Key? key, 
    this.title, 
    this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                this.subTitle!,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.5,
                    fontWeight: FontWeight.bold),
              ),
            ),
            onTap: (){
            },
          )
        ],
      ),
    );
  }
}
