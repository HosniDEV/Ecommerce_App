import 'package:flutter/material.dart';
import 'modules/Account/account.dart';
import 'modules/Cart/cart.dart';
import 'modules/CartITems/cartItem.dart';
import 'modules/Category/kidsClothes.dart';
import 'modules/Category/menCategory.dart';
import 'modules/Category/womenCategory.dart';
import 'modules/CheckOut/checkout.dart';
import 'modules/Discover/dicover.dart';
import 'modules/Discover/reusableContainer.dart';
import 'modules/LocationAndTime/location_time.dart';
import 'modules/PaymentMethod/payment_method.dart';
import 'modules/login/sign_up.dart';
import 'modules/login/sign_in.dart';
import 'package:hos_app/modules/login/forgot_password.dart';
import 'modules/home/my_home_page.dart';
import 'modules/Category/choosing_page.dart';
import 'modules/login/update_password_page.dart';
import 'modules/practice/first_project.dart';
import 'layout/navigaaton_bar.dart';
import 'modules/practice/listViewSeparated.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
