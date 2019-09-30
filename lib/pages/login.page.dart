import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }

}
class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    //return Container(color: const Color(0xFFFFE306),);
    return Scaffold(                                          //scaffold permite q tenha uma app bar e um body
      backgroundColor: Colors.deepPurple,
      body:Padding(padding: EdgeInsets.all(16),              //colocar es de 16
        child:Center(                                        // responsavel por colocar os itens no centro horizontal
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch, // a largura da coluna vai ocupar toda a largura da pagina
            mainAxisAlignment: MainAxisAlignment.center,    // ficar no centro vertical
            children: <Widget>[
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                style: new TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                  labelText: "E-mail:",
                  labelStyle: TextStyle(color: Colors.white)
                ),
              ),
              Divider(),  // p n ficar mt junto
              TextFormField(
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                    labelText: "Senha:",
                    labelStyle: TextStyle(color: Colors.white)
                ),
              ),
              Divider(),
              ButtonTheme(
                height: 60.0,
                child: RaisedButton(
                  onPressed: () =>{},
                  child: Text(
                    "Entrar",
                    style: TextStyle(color: Colors.deepPurple)
                  ),
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      )
    );
  }

}