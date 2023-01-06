import 'package:flutter/material.dart';
import 'package:hos_app/shared/components/components.dart';
import 'package:hos_app/shared/components/constants.dart';

class MenCategory extends StatelessWidget {
  List<String> Text = [
    'Jackets',
    'Shorts',
    'Sweatshirts & Hoodies',
    'T-Shirts & Tops',
    'Pants & Joggers'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        text: 'MEN',
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding),
          child: ListView.separated(
              itemBuilder: ((context, index) => MyRow(text: Text[index])),
              separatorBuilder: ((context, index) => Divider(
                    height: 5,
                    endIndent: 20,
                  )),
              itemCount: Text.length)),
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
