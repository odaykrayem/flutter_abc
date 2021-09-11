import 'package:flutter/material.dart';

class FormO extends StatefulWidget {
  const FormO({Key key}) : super(key: key);

  @override
  _FormOState createState() => _FormOState();
}

class _FormOState extends State<FormO> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> fomrKey = new GlobalKey<FormState>();
    var username;

    send() {
      var formData = fomrKey.currentState;
      if (formData.validate()) {
        formData.save();
        print("username: $username");
      } else {
        print(formData);
      }
    }

    return Form(
      //we can use this property in the form on the textFormField
      //if we used it in the form it applies on all textFormField Inside it
      autovalidateMode: AutovalidateMode.always,
      key: fomrKey,
      child: Column(children: [
        TextFormField(
            autovalidateMode: AutovalidateMode.always,
            onSaved: (text) {
              username = text;
            },
            validator: (text) {
              if (text.length < 3) {
                return "error";
              }
              return null;
            }),
        ElevatedButton(
          onPressed: send,
          child: Text("press"),
        )
      ]),
    );
  }
}
