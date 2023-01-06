import 'package:flutter/material.dart';
import 'package:hos_app/shared/components/constants.dart';

import 'components.dart';

Widget ReausableContainer({
  required String title,
  required String textBody,
  required String textButton,
  required IconData icon,
}) =>
    Center(
      child: Container(
        padding: EdgeInsets.all(6),
        height: 300,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultBorderRadius),
          color: Colors.black,
          boxShadow: [
            BoxShadow(blurRadius: 8, color: Colors.black, spreadRadius: 0)
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 8, color: Colors.white, spreadRadius: 0)
                    ],
                  ),
                  child: Stack(alignment: Alignment.bottomRight, children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.black,
                      child: Icon(
                        icon,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 8,
                              color: Colors.green,
                              spreadRadius: 0)
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 15.0,
                        backgroundColor: Colors.green,
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  title.toLowerCase(),
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 1.3),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    textBody,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: DefaultButton(
                  text: textButton.toUpperCase(),
                  function: () {},
                  borderWidth: 0,
                  myColor: Colors.white,
                  height: 40,
                  textColor: Colors.black),
            ),
          ],
        ),
      ),
    );
