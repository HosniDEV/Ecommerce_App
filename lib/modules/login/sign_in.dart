// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:hos_app/modules/Category/choosing_page.dart';
import 'package:hos_app/modules/login/forgot_password.dart';
import 'package:hos_app/modules/login/sign_up.dart';
import 'package:hos_app/modules/login/sign_in.dart';
import '../../shared/components/components.dart';
import '../Discover/dicover.dart';
import '../home/my_home_page.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();
  bool isPassword = true;

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
            splashRadius: 20,
            icon: Icon(
              Icons.chevron_left,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyHomePage()));
            }),
        title: Text(
          'Account',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'myfont',
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.close,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        // color: Colors.grey,
                        border: Border(
                          bottom: BorderSide(width: 3.0, color: Colors.black),
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignIn()),
                          );
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        // color: Colors.grey,
                        border: Border(
                          bottom: BorderSide(
                              width: 2.0,
                              color: Color.fromARGB(255, 214, 210, 210)),
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp()),
                          );
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              DefaultFormField(
                  text: ' E-mail *',
                  controller: emailController,
                  keyBoardType: TextInputType.emailAddress,
                  OnValidate: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                      return 'The Email adress isn\'t exist';
                    }
                  }),
              SizedBox(
                height: 20,
              ),
              DefaultFormField(
                  text: 'Password *',
                  controller: passwordController,
                  keyBoardType: TextInputType.text,
                  suffix: isPassword ? Icons.visibility : Icons.visibility_off,
                  OnPressedSuffix: (() {
                    setState(() {
                      isPassword = !isPassword;
                    });
                  }),
                  isPassword: isPassword,
                  OnValidate: (value) {
                    if (value!.isEmpty) {
                      return 'The password is wrong';
                    }
                  }),
              SizedBox(
                height: 20,
              ),
              DefaultButton(
                  text: 'sign in ',
                  borderWidth: 0,
                  function: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Dicover()));
                    }
                    ;
                  }),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Forgot Password',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  IconButton(
                      splashRadius: 20,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotPassword()));
                      },
                      icon: Icon(
                        Icons.chevron_right,
                        size: 30,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
