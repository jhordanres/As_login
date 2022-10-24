import 'package:flutter/material.dart';

import 'package:prueba_as_research/widgets/gesture_btn_widget.dart';
import 'package:prueba_as_research/widgets/gesture_zone_widget.dart';
import 'package:prueba_as_research/widgets/green_button_widget.dart';
import 'package:prueba_as_research/widgets/input_widget.dart';
import 'package:prueba_as_research/widgets/label_widget.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Column(
              children: [
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureButton(labelSemantics: "Atrás boton", backgroundColor: Colors.red[300], borderColor: Colors.red[900], icon: Icons.play_arrow_rounded, iconColor: Colors.red[900], isRotate: true, textIcon: "Atrás"),
                        GestureButton(labelSemantics: "Leo por ti boton", backgroundColor: Colors.lightGreenAccent, borderColor: Colors.lightGreen[900], icon: Icons.volume_up_rounded, iconColor: Colors.lightGreen[900], isRotate: false, textIcon: "Leo por ti"),
                        GestureButton(labelSemantics: "Te escucho boton", backgroundColor: Colors.deepPurpleAccent[100], borderColor: Colors.deepPurple[900], icon: Icons.mic, iconColor: Colors.deepPurple[900], isRotate: false, textIcon: "Te escucho"),
                        GestureButton(labelSemantics: "Perfil boton", backgroundColor: Colors.tealAccent, borderColor: Colors.teal[900], icon: Icons.person, iconColor: Colors.teal[900], isRotate: false, textIcon: "Perfil"),
                      ],
                    ),
                  ),
                  GestureZoneWidget(),
                  Text("Inicia sesíon", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                  _Form(),
                  LabelsWidget(subTitle: "Si olvidaste tu contraseña, presiona aquí",),
                  GreenButtonWidget()
                  
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget{

  @override 
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {

  final numberCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [

          Semantics(
            label: "Caja de texto",
            child: InputWidget(
              icon: Icons.phone_iphone_rounded, 
              placeholder: "NUMERO", 
              textEditingController: numberCtrl, 
              keyboardType: TextInputType.phone, 
              
            ),
          ),

          Semantics(
            label: "Cajade texto",
            child: InputWidget(
              icon: Icons.lock, 
              placeholder: "PIN", 
              textEditingController: passCtrl, 
              keyboardType: TextInputType.phone,
              isPassword: true,
            ),
          )
        ],
      ),
    );
  }
}