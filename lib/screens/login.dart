import 'package:dropping_odds/widgets/authorization_btn/authorization_btn.dart';
import 'package:dropping_odds/widgets/authorization_text_form_field/authorization_text_form_field.dart';
import 'package:dropping_odds/widgets/change_screen/change_screen.dart';
import 'package:dropping_odds/widgets/password_text_form_field/password_text_form_field.dart';
import 'package:dropping_odds/route/route.dart' as route;
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
String p =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

RegExp regExp = new RegExp(p);
bool obserText = true;

class _LoginState extends State<Login> {
  var email;
  var password;
  Future<void> validation() async {
    final FormState? _form = _formKey.currentState;
    if (!_form!.validate()) {
      try{
        UserCredential result = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
        print(result.user!.email);
      } on PlatformException catch (e){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.message.toString())));
        print(e.message.toString());
      }
    } else {
      print("no");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 300,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    AuthorizationTextFormField(onChanged: (value) {
                      setState(() {
                        email = value;
                      });
                    }, validator: (value) {
                      if (value == null || value == "") {
                        return "Please fill email";
                      } else if (!regExp.hasMatch(value)) {
                        return "Email Is Invalid";
                      }
                      return "";
                    }, name: "Email"),
                    PasswordTextFormField(
                        obserText: obserText,
                        validator: (value) {
                          if (value == null || value == "") {
                            return "Please fill Password";
                          } else if (value.length < 8) {
                            return "Password Is Too Short";
                          }
                          return "";
                        },
                        onTap: () {
                          setState(() {
                            obserText = !obserText;
                          });
                        },
                        name: "Password",
                        onChanged: (value) {
                          setState(() {
                            password = value;
                          });
                        }),
                    AuthorizationBtn(
                      onPressed: () {
                        validation();
                      },
                      name: "Login",
                    ),
                    ChangeScreen(
                      name: "SignUp",
                      whichAccount: "I Have Not Account!",
                      onTap: () {
                        Navigator.pushNamed(context, route.signup);
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
