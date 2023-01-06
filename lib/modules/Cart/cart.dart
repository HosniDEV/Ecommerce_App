import 'package:flutter/material.dart';
import 'package:hos_app/modules/CheckOut/checkout.dart';
import 'package:hos_app/shared/components/constants.dart';
import '../../shared/components/checkout_compo.dart';
import '../../shared/components/components.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        text: 'Cart',
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(defaultBorderRadius),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1667644742802-edd475720c3d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODh8fGN1dGUlMjBnaXJsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                            height: 130,
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Snoopy T-shirt',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'Réf 089808324',
                            style: TextStyle(fontWeight: FontWeight.w200),
                          ),
                          Text(
                            '47,95 £ ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.remove_circle_outline)),
                                  Text('1'),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.add_circle_outline)),
                                ],
                              ),
                              Icon(
                                Icons.close,
                                size: 30,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Promo code ?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    DefaultFormField(
                      text: 'Code Promo',
                    ),
                    Positioned(
                      right: 3,
                      child: DefaultButton(
                          text: 'Apply',
                          function: () {},
                          borderWidth: 0,
                          width: 80,
                          height: 45),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                DefaultButton(
                    text: 'checkout',
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CheckOut()));
                    },
                    borderWidth: 0.0)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
