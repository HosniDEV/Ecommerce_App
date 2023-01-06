import 'package:flutter/material.dart';
import 'package:hos_app/shared/components/constants.dart';

import '../../shared/components/components.dart';
// import '../../shared/components/constants.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        text: 'account',
      ),
      body: Padding(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(defaultBorderRadius),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1667644742802-edd475720c3d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODh8fGN1dGUlMjBnaXJsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 60,
                  width: 1,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Amanda Cr',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'membre since 2010',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    DefaultButton(
                        text: 'Edit Profil',
                        function: () {},
                        width: 100,
                        height: 25,
                        fSize: 10,
                        isUpperCase: false,
                        radius: 10,
                        myColor: Colors.black,
                        borderWidth: 0.0),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Account Details',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.chevron_right_outlined,
                    size: 25,
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery information',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.chevron_right_outlined,
                    size: 25,
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Payment Information',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.chevron_right_outlined,
                    size: 25,
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Privacy Settings',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.chevron_right_outlined,
                    size: 25,
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
          ],
        ),
      ),
    );
  }
}
