import 'package:flutter/material.dart';
import 'package:hos_app/shared/components/components.dart';
import 'package:hos_app/shared/components/constants.dart';

class KidsCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        text: 'kIDS',
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 5,
            ),
            MyRow(text: 'Shoes'),
            Divider(
              height: 5,
              endIndent: 20,
            ),
            MyRow(text: 'Shorts'),
            Divider(
              height: 5,
              endIndent: 20,
            ),
            MyRow(text: 'Sweatshirts & Hoodies'),
            Divider(
              height: 5,
              endIndent: 20,
            ),
            MyRow(text: 'T-Shirts & Tops'),
            Divider(
              height: 5,
              endIndent: 20,
            ),
            MyRow(text: 'Pants & Joggers'),
            Divider(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}

Widget MyRow({
  required String text,
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
          onPressed: () {},
          icon: Icon(
            Icons.chevron_right_outlined,
            size: 25,
          ),
        ),
      ],
    );
