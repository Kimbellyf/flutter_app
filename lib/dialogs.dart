import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum DialogAction { yes, abort}

class Dialogs{
  static Future<DialogAction> yesAbortDialog(
      BuildContext context,
      String title,
      String body,

      )async {
        final action = await showDialog(
          context: context,
          barrierDismissible: true,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              title: Text(title),
              content: Text(body),
              actions: <Widget>[
                FlatButton(
                  onPressed: ()=> Navigator.of(context).pop(DialogAction.abort),
                  child: const Text("No"),
                ),
                RaisedButton(
                  onPressed: ()=> Navigator.of(context).pop(DialogAction.yes),
                  child: const Text("Yes"),
                ),
              ],
            );
          },
        );
        return(action!=null) ? action : DialogAction.abort;
  }
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