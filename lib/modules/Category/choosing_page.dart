import 'package:flutter/material.dart';
import 'package:hos_app/modules/Category/kidsClothes.dart';
import 'package:hos_app/modules/Category/menCategory.dart';
import 'package:hos_app/modules/Category/womenCategory.dart';
import 'package:hos_app/shared/components/components.dart';
import 'package:hos_app/shared/components/constants.dart';

class ChoosingPage extends StatefulWidget {
  @override
  State<ChoosingPage> createState() => _ChoosingPageState();
}

class _ChoosingPageState extends State<ChoosingPage> {
  bool isWomen = true;
  List<bool> isSelected = [true, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1582185071582-4a54e604241b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDV8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Make Your Purchases as',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1,
                    width: 200,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefaultButton(
                        width: 90.0,
                        fWeight: FontWeight.w500,
                        fSize: 10,
                        height: 30,
                        text: 'Women',
                        function: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WomenCategory()));
                        },
                        myColor: Colors.white,
                        textColor: Colors.black,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      DefaultButton(
                        width: 90.0,
                        fWeight: FontWeight.w500,
                        fSize: 10,
                        height: 30,
                        text: 'Men',
                        function: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MenCategory()));
                        },
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      DefaultButton(
                        width: 90.0,
                        fWeight: FontWeight.w500,
                        fSize: 10,
                        height: 30,
                        text: 'KIDS',
                        function: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => KidsCategory()));
                        },
                        myColor: Colors.transparent,
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                  // ToggleButtons(
                  //   selectedColor: Colors.black,
                  //   color: Colors.white,
                  //   fillColor: Colors.white,
                  //   borderColor: Colors.white,
                  //   renderBorder: false,
                  //   borderWidth: 2,
                  //   borderRadius: BorderRadius.circular(defaultButtonRadius),
                  //   children: [
                  //     Container(
                  //       margin: EdgeInsets.symmetric(horizontal: 20),
                  //       child: Text(
                  //         'women',
                  //         style: TextStyle(),
                  //       ),
                  //     ),
                  //     Container(
                  //       margin: EdgeInsets.symmetric(horizontal: 20),
                  //       child: Text(
                  //         'women',
                  //         style: TextStyle(),
                  //       ),
                  //     ),
                  //     Container(
                  //       margin: EdgeInsets.symmetric(horizontal: 20),
                  //       child: Text(
                  //         'women',
                  //         style: TextStyle(),
                  //       ),
                  //     ),
                  //   ],
                  //   isSelected: isSelected,
                  //   onPressed: (int newIndex) {
                  //     setState(() {
                  //       // looping through the list of booleans values
                  //       for (int index = 0;
                  //           index < isSelected.length;
                  //           index++) {
                  //         if (index == newIndex) {
                  //           // toggling between the button to set it to true
                  //           isSelected[index] = !isSelected[index];
                  //         } else {
                  //           // other two buttons will not be selected and are set to false
                  //           isSelected[index] = false;
                  //         }
                  //       }
                  //     });
                  //   },
                  // )
                ],
              ),
            ),
          ],
        ));
  }
}
