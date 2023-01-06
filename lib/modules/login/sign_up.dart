import 'package:flutter/material.dart';
import 'package:hos_app/modules/Category/choosing_page.dart';
import 'package:hos_app/modules/login/sign_in.dart';
import '../../shared/components/components.dart';
import '../home/my_home_page.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var emailController = TextEditingController();

  var nameController = TextEditingController();

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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
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
                            bottom: BorderSide(
                                width: 3.0,
                                color: Color.fromARGB(255, 214, 210, 210)),
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
                            bottom: BorderSide(width: 2.0, color: Colors.black),
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {},
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
                    text: ' Name *',
                    controller: nameController,
                    keyBoardType: TextInputType.text,
                    OnValidate: (value) {
                      if (value!.isEmpty) {
                        return ' the Password should be not null ';
                      }
                    }),
                SizedBox(
                  height: 20,
                ),
                DefaultFormField(
                    text: 'E-mail *',
                    controller: emailController,
                    keyBoardType: TextInputType.emailAddress,
                    OnValidate: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                        return ' the Email should be not null';
                      }
                    }),
                SizedBox(
                  height: 20,
                ),
                DefaultFormField(
                    text: 'Password *',
                    controller: passwordController,
                    keyBoardType: TextInputType.visiblePassword,
                    suffix:
                        isPassword ? Icons.visibility : Icons.visibility_off,
                    isPassword: isPassword,
                    OnPressedSuffix: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    OnValidate: (value) {
                      if (value!.isEmpty || value.length > 7) {
                        return ' the Password should be not null and should be less than 7car';
                      }
                    }),
                SizedBox(
                  height: 20,
                ),
                DefaultButton(
                    height: 50,
                    text: 'sign up ',
                    borderWidth: 0,
                    function: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChoosingPage()));
                      }
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//how to fix this error can't be assigned to the parameter type 'void ?