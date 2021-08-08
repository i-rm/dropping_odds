import 'package:dropping_odds/widgets/authorization_btn/authorization_btn.dart';
import 'package:dropping_odds/widgets/authorization_text_form_field/authorization_text_form_field.dart';
import 'package:dropping_odds/widgets/change_screen/change_screen.dart';
import 'package:dropping_odds/widgets/password_text_form_field/password_text_form_field.dart';
import 'package:dropping_odds/route/route.dart' as route;
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
// final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

String p =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

RegExp regExp = new RegExp(p);
bool obscurText = true;
var email;
var password;

class _SignUpState extends State<SignUp> {
  void validation() async{
    final FormState? _form = _formKey.currentState;
    if (!_form!.validate()) {
      try{
        UserCredential result = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
        print(result.user!.uid);
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
      // key: _scaffoldKey,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Form(
            key: _formKey,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 220,
                    width: double.infinity,
                    // color: Colors.blue,
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Register",
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 400,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        AuthorizationTextFormField(
                            validator: (value) {
                              if (value == null || value == "") {
                                return "Please fill User Name";
                              } else if (value.length < 6) {
                                return "Username Is Too Short";
                              }
                              return "";
                            },
                            name: "User Name", onChanged: (value){
                              print(value);
                        },),
                        AuthorizationTextFormField(
                          validator: (value) {
                            if (value == null || value == "") {
                              return "Please fill email";
                            } else if (!regExp.hasMatch(value)) {
                              return "Email Is Invalid";
                            }
                            return "";
                          },
                          name: "Email",
                          onChanged: (value) {
                            setState(() {
                              email = value;
                            });
                          },
                        ),
                        PasswordTextFormField(
                            obserText: obscurText,
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
                                obscurText = !obscurText;
                              });
                              FocusScope.of(context).unfocus();
                            },
                            name: "Password",
                            onChanged: (value) {
                              setState(() {
                                password = value ;
                              });
                            }),
                        AuthorizationBtn(
                          onPressed: () {
                            validation();
                          },
                          name: "Register",
                        ),
                        ChangeScreen(
                          name: "Login",
                          onTap: () {
                            Navigator.pop(context, route.login);
                          },
                          whichAccount: "I Have Already An Account!",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
