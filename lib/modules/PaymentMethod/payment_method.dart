import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:hos_app/shared/components/constants.dart';

import '../../shared/components/components.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        text: 'PAYMENT METHOD',
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(defaultBorderRadius),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1546118653-7c0532915543?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTN8fGNhcmQlMjBjcmVkaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.join_inner_sharp,
                          size: 90,
                          color: Colors.white,
                        ))
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: 1.5,
                      color: Colors.grey,
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        'Or',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      height: 1.5,
                      color: Colors.grey,
                    )),
                  ],
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Name of card',
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500)),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Nubmer  of card',
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500)),
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Exp Month',
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Exp Date',
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                  ],
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'CVV',
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500)),
                ),
              ],
            ),
            DefaultButton(
                text: 'Add Card',
                function: () {},
                borderWidth: 0,
                isUpperCase: false)
          ],
        ),
      ),
    );
  }
}
