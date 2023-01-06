import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:hos_app/shared/components/constants.dart';
import 'package:hos_app/shared/components/my_container.dart';
import '../../shared/components/checkout_compo.dart';
import '../../shared/components/components.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:badges/badges.dart';

import '../CartITems/cartItem.dart';

class Dicover extends StatefulWidget {
  const Dicover({super.key});

  @override
  State<Dicover> createState() => _DicoverState();
}

List<String> imgList = [
  'https://images.unsplash.com/photo-1528935344480-497c6c6536d6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8Njh8ODVtempfNkxxLUF8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1528936308365-17edd51d4f17?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8Njl8ODVtempfNkxxLUF8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1528936152936-b5e5541a8d6b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8NzB8ODVtempfNkxxLUF8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1528936466093-76ffdfcf7a40?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8NzF8ODVtempfNkxxLUF8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
];

class _DicoverState extends State<Dicover> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(children: [
          Text(
            'Dicover Our New Items',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: Color.fromARGB(255, 235, 232, 232),
                    offset: Offset.zero,
                  ),
                ]),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'search ',
                  labelStyle: TextStyle(
                    color: Colors.blue,
                  ),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey[300],
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          FontAwesomeIcons.sliders,
                          size: 18,
                          color: Colors.grey[300],
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Badge(
                          badgeColor: secondColor,
                          position: BadgePosition.topEnd(end: -7),
                          badgeContent: Text(
                            '1',
                            style: TextStyle(fontSize: 6, color: Colors.white),
                          ),
                          child: Icon(
                            FontAwesomeIcons.cartShopping,
                            size: 18,
                            color: Colors.grey[300],
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CartItem()));
            },
            child: Container(
              height: 150,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => MyImage(),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 10,
                      ),
                  itemCount: 4),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Pupolar Clothes'),
                      Text('see ALL'),
                    ],
                  ),
                  Expanded(
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.vertical,
                      separatorBuilder: (context, index) => SizedBox(
                        height: 10,
                      ),
                      itemBuilder: ((context, index) => Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => CartItem()));
                                  },
                                  child: Container(
                                    width: 150,
                                    height: 150,
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              defaultBorderRadius),
                                          child: Image.network(
                                            'https://images.unsplash.com/photo-1606685544086-ce4ab1b91c21?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YmxhY2slMjBiYWNrZ3JvdW5kJTIwZ2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                                            fit: BoxFit.cover,
                                            height: double.infinity,
                                            width: double.infinity,
                                          ),
                                        ),
                                        Positioned(
                                          top: 10,
                                          right: 10,
                                          left: 0,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                width: 40,
                                                height: 20,
                                                color: Colors.white,
                                                child: Text('New'),
                                              ),
                                              CircleAvatar(
                                                radius: 10,
                                                backgroundColor: Colors.white,
                                                child: Icon(
                                                  FontAwesomeIcons.heart,
                                                  size: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                          child: Container(
                                            width: double.infinity,
                                            height: 40,
                                            color: Colors.white,
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text('Pantalon '),
                                                    Text(
                                                      '47,45 £ ',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text('Classic Homme'),
                                                    Text(
                                                      '70.00 £ ',
                                                      style: TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => CartItem()));
                                  },
                                  child: Container(
                                    width: 200,
                                    height: 150,
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              defaultBorderRadius),
                                          child: Image.network(
                                            'https://images.unsplash.com/photo-1606685544086-ce4ab1b91c21?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YmxhY2slMjBiYWNrZ3JvdW5kJTIwZ2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                                            fit: BoxFit.cover,
                                            height: double.infinity,
                                            width: double.infinity,
                                          ),
                                        ),
                                        Positioned(
                                          top: 10,
                                          right: 10,
                                          left: 0,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                width: 40,
                                                height: 20,
                                                color: Colors.white,
                                                child: Text('New'),
                                              ),
                                              CircleAvatar(
                                                radius: 10,
                                                backgroundColor: Colors.white,
                                                child: Icon(
                                                  FontAwesomeIcons.heart,
                                                  size: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                          child: Container(
                                            width: double.infinity,
                                            height: 40,
                                            color: Colors.white,
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text('Pantalon '),
                                                    Text(
                                                      '47,45 £ ',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text('Classic Homme'),
                                                    Text(
                                                      '70.00 £ ',
                                                      style: TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
