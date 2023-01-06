import 'package:flutter/material.dart';
import 'package:hos_app/shared/components/components.dart';

class UpdatePassword extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var retypePasswordController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            IconButton(
                icon: Icon(
                  Icons.chevron_left,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: () {}),
            TextButton(
                onPressed: () {},
                child: Text(
                  'BACK',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ))
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.close,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(bottom: 10.0),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 2.0, color: Colors.grey))),
                        child: Text(
                          'Update Your Password !',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            // fontFamily: 'myfont',
                          ),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Please enter your  new password ',
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20.0,
              ),
              DefaultFormField(
                  text: 'Password *',
                  controller: passwordController,
                  OnValidate: (value) {
                    if (value!.isEmpty || value.length > 7) {
                      return 'the password should be not null ';
                    }
                  }),
              SizedBox(
                height: 20.0,
              ),
              DefaultFormField(
                text: 'Re-Type Password *',
                controller: retypePasswordController,
                OnValidate: (value) {
                  if (value!.isEmpty || value.length > 7) {
                    return 'the password should be the same';
                  }
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              DefaultButton(
                  text: 'Update',
                  borderWidth: 0,
                  function: () {
                    if (formKey.currentState!.validate()) {
                      print(passwordController.text);
                      print(retypePasswordController.text);
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
