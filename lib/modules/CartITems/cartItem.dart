import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hos_app/modules/Cart/cart.dart';
import 'package:hos_app/shared/components/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../shared/components/components.dart';

class CartItem extends StatefulWidget {
  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  List<String> imgList = [
    'https://images.unsplash.com/photo-1528935344480-497c6c6536d6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8Njh8ODVtempfNkxxLUF8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1528936308365-17edd51d4f17?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8Njl8ODVtempfNkxxLUF8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1528936152936-b5e5541a8d6b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8NzB8ODVtempfNkxxLUF8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1528936466093-76ffdfcf7a40?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8NzF8ODVtempfNkxxLUF8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            splashColor: Colors.white,
            splashRadius: 20,
            icon: Icon(
              Icons.chevron_left,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 350,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        setState(() {
                          activeIndex = index;
                        });
                      },
                      height: 400,
                      viewportFraction: 1,
                    ),
                    items: imgList
                        .map((e) => Image.network(
                              '$e',
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ))
                        .toList(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: AnimatedSmoothIndicator(
                        effect: ExpandingDotsEffect(
                            dotWidth: 14,
                            dotColor: Colors.white,
                            activeDotColor: Colors.white,
                            dotHeight: 8),
                        activeIndex: activeIndex,
                        count: imgList.length),
                  )
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          '47,95',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          'Snoopy T-shirt',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        DefaultCircleButton(color: Colors.pink),
                        SizedBox(
                          width: 8,
                        ),
                        DefaultCircleButton(color: Colors.green),
                        SizedBox(
                          width: 8,
                        ),
                        DefaultCircleButton(
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        DefaultCircleButton(
                            color: Colors.black, icon: Icons.check_rounded),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        DefaultButton(
                            function: () {},
                            text: 'S',
                            width: 60,
                            height: 25,
                            borderWidth: 1,
                            borderColor: Colors.black,
                            myColor: Colors.transparent,
                            textColor: Colors.black),
                        SizedBox(
                          width: 8,
                        ),
                        DefaultButton(
                            function: () {},
                            text: 'M',
                            width: 60,
                            height: 25,
                            borderWidth: 1,
                            borderColor: Colors.black,
                            myColor: Colors.transparent,
                            textColor: Colors.black),
                        SizedBox(
                          width: 8,
                        ),
                        DefaultButton(
                          function: () {},
                          text: 'L',
                          width: 60,
                          height: 25,
                          borderWidth: 0,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        DefaultButton(
                            function: () {},
                            text: 'XL',
                            width: 60,
                            height: 25,
                            borderWidth: 1,
                            borderColor: Colors.black,
                            myColor: Colors.transparent,
                            textColor: Colors.black),
                        SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Desciption',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        'Desciption hqhduhuhdiuhhduhzaudhiahdiuhhdhqjhdjhqjhdjhqkdhihhuahduhuduizauhdiuzuhdhuhzduhuhduahjhjhqjdhjhjdhqsjhdjhqjdhjqhsdjkhskjhds',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: DefaultButton(
                text: 'Add to card',
                function: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Cart()));
                },
                borderWidth: 0),
          ),
        ],
      ),
    );
  }
}

Widget DefaultCircleButton({
  required Color color,
  IconData? icon,
}) =>
    Container(
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: [BoxShadow(blurRadius: 8, color: color, spreadRadius: 0)],
      ),
      child: CircleAvatar(
        radius: 15.0,
        backgroundColor: color,
        child: Icon(
          icon,
          color: Colors.white,
          size: 18,
        ),
      ),
    );
