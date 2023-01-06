import 'package:flutter/material.dart';
import 'package:hos_app/shared/components/constants.dart';
import '../../shared/components/checkout_compo.dart';
import '../../shared/components/components.dart';
import '../Account/account.dart';
import '../PaymentMethod/payment_method.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        text: 'CHECKOUT',
        onPressed: (() {
          Navigator.pop(context);
        }),
      ),
      body: Padding(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                TitleCheckOut(
                    text: 'Delivery Adress',
                    onPressed: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Account()));
                    })),
                MyContainer(
                  icon: Icons.maps_ugc_outlined,
                  text_1: '09 Ain Chock',
                  text_2: 'fes',
                ),
                TitleCheckOut(
                    text: 'Payment Method',
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentMethod()));
                    })),
                MyContainer(
                    icon: Icons.apple,
                    text_1: 'Appele Pay',
                    text_2: '*********19298938989',
                    icon_1: Icons.radio_button_checked),
                SizedBox(height: 10),
                MyContainer(
                    icon: Icons.mail_lock,
                    text_1: 'Master Card',
                    text_2: '*********1877173872',
                    icon_1: Icons.radio_button_off),
              ],
            ),
            DefaultButton(text: 'pay', function: () {}, borderWidth: 0)
          ],
        ),
      ),
    );
  }
}
