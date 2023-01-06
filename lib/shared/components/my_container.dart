import 'package:flutter/material.dart';
import 'package:hos_app/shared/components/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget MyImage() => Container(
      width: 150,
      height: 150,
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(defaultBorderRadius),
              child: Image.asset(
                'assets/images/1 .jpg',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              )),
          Positioned(
            top: 25,
            left: 0,
            child: Container(
              color: secondColor,
              height: 20,
              width: 40,
              child: Text(
                'New',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3,
                    color: Color.fromARGB(255, 102, 100, 100),
                    offset: Offset.zero,
                  ),
                ],
              ),
              width: 150,
              height: 40,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Pantalon '),
                      Text(
                        '47,45 £ ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Classic Homme'),
                      Text(
                        '70.00 £ ',
                        style:
                            TextStyle(decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
