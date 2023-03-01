import 'package:flutter/material.dart';
// import 'package:hos_app/models/ProductModel/productModel.dart';
// import 'package:hos_app/models/provider/cartProvider.dart';
import 'package:provider/provider.dart';
import 'models/provider/fav_provider.dart';
import 'models/provider/order_provider.dart';
// import 'modules/Account/account.dart';
// import 'modules/Cart/cart.dart';
// import 'modules/CartITems/cartItem.dart';
// import 'modules/Category/kidsClothes.dart';
// import 'modules/Category/menCategory.dart';
// import 'modules/Category/womenCategory.dart';
// import 'modules/CheckOut/checkout.dart';
// import 'modules/Discover/DiscoverScreen.dart';
// import 'modules/Discover/dicover.dart';

// import 'modules/LocationAndTime/location_time.dart';
// import 'modules/PaymentMethod/payment_method.dart';
// import 'modules/login/sign_up.dart';
// import 'modules/login/sign_in.dart';
// import 'package:hos_app/modules/login/forgot_password.dart';

import 'modules/home/my_home_page.dart';
// import 'modules/Category/choosing_page.dart';
// import 'modules/login/update_password_page.dart';

// import 'modules/practice/cart.dart';
// import 'modules/practice/fan_carousel_image_slider.dart';
// import 'modules/practice/filtre.dart';
// import 'modules/practice/first_project.dart';
// import 'layout/navigaaton_bar.dart';
// import 'modules/practice/listViewSeparated.dart';
// import 'modules/practice/toggle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => OrderProvider()),
        ChangeNotifierProvider(create: (context) => FavProvider()),
      ],
      child: const MaterialApp(
        home: MyHomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
