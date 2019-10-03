import 'package:flutter/material.dart';

class Dialogs{
  information(BuildContext context, String title, String description){
    return showDialog(
      context: context,
      barrierDismissible: true, //  caixas de diálogo descartáveis ​​ou não com um clique externo
      builder: (BuildContext context){
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(description)
              ],
            ),

          ),
          actions: <Widget>[
            FlatButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Ok"))
          ],
        );
      }
    );
  }
  waiting(BuildContext context, String title, String description){
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text(title) ,
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(description)
              ],
            ),
          ),

        );
      }
    );
  }
  _confirmResult(bool isYes, BuildContext context){
    if(isYes){
      print("aceito");
      Navigator.pop(context); // retira o dialog
    }
    else{
      print("não aceito");
      Navigator.pop(context);
    }
  }
  confirm (BuildContext context, String title, String description){
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(title)
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
                onPressed: () => _confirmResult(false, context),
                //onPressed: () =>Navigator.pop(context)
                child: Text("Cancel")
            ),
            FlatButton(
                onPressed: () => _confirmResult(true, context),
                child: Text("Yes"))
          ],
        );

      }
    );
  }
}