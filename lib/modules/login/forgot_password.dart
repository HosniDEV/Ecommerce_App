import 'package:flutter/material.dart';
import 'package:hos_app/shared/components/components.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 25,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
            splashRadius: 2,
            icon: Icon(
              Icons.chevron_left,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: TextButton(
          onPressed: (() {
            Navigator.pop(context);
          }),
          child: Text(
            'BACK',
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
          ),
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
                              bottom:
                                  BorderSide(width: 2.0, color: Colors.grey))),
                      child: Text(
                        'Forgot Password ?',
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
              'Please enter your Email adresse and we will send you password by Email immadiately',
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20.0,
            ),
            DefaultFormField(text: 'E-mail *'),
            SizedBox(
              height: 20.0,
            ),
            DefaultButton(text: 'Send', function: () {}),
          ],
        ),
      ),
    );
  }
}
