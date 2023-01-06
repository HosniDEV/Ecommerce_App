import 'package:flutter/material.dart';
import 'package:hos_app/shared/components/constants.dart';

Widget MyContainer({
  required IconData icon,
  required String text_1,
  required String text_2,
  IconData? icon_1,
}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(defaultBorderRadius),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 235, 232, 232),
                        blurRadius: 10,
                        offset: Offset.zero),
                  ]),
              child: Icon(
                icon,
                size: 35,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text_1,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(
                  text_2,
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ],
        ),
        Icon(icon_1),
      ],
    );

Widget TitleCheckOut({
  required String text,
  required Function() onPressed,
}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        IconButton(
          splashRadius: 20,
          onPressed: onPressed,
          icon: Icon(
            Icons.chevron_right_outlined,
            size: 25,
          ),
        ),
      ],
    );
