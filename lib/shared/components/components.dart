// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:hos_app/shared/components/constants.dart';

// import 'package:flutter/material.dart';
// ************************************
// *         DefaultButton            *
// ************************************
Widget DefaultButton({
  required String text,
  Function()? function,
  double width = double.infinity,
  double height = 50,
  Color myColor = Colors.black87,
  double radius = defaultButtonRadius,
  double blurRadius = 3.5,
  Offset offset = Offset.infinite,
  double fSize = 12,
  Color textColor = Colors.white,
  FontWeight fWeight = FontWeight.bold,
  Color shadowColor = Colors.grey,
  bool isUpperCase = true,
  double borderWidth = 2,
  Color borderColor = Colors.white,
}) =>
    Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(width: borderWidth, color: borderColor),
        borderRadius: BorderRadius.circular(radius),
        color: myColor,
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            offset: offset,
            blurRadius: blurRadius,
          ),
        ],
      ),
      child: TextButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            color: textColor,
            fontSize: fSize,
            fontWeight: fWeight,
          ),
        ),
      ),
    );

// Widget DefaultButton({

// }) =>Container();

// ************************************
// *       Default  Form flied              *
// ************************************

Widget DefaultFormField({
  // double height = 50,
  TextEditingController? controller,
  TextInputType? keyBoardType,
  Function()? onChange,
  Function()? OnPressedSuffix,
  IconData? suffix,
  required String? text,
  bool isPassword = false,
  String? Function(String?)? OnValidate,
}) =>
    Container(
        // height: height,
        child: TextFormField(
            //  onFieldSubmitted: onSubmit,
            //   onChanged: onChange(),
            controller: controller,
            validator: OnValidate,
            keyboardType: keyBoardType,
            obscureText: isPassword,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultButtonRadius),
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultButtonRadius),
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultButtonRadius),
                borderSide: BorderSide(
                  // color: ,
                  width: 1.0,
                ),
              ),
              hintText: text,
              suffixIcon: null == suffix
                  ? null
                  : IconButton(
                      onPressed: OnPressedSuffix,
                      icon: Icon(
                        suffix,
                        color: Colors.black54,
                      ),
                      splashColor: Colors.transparent,
                      splashRadius: 18,
                    ),
            )));

// ************************************
// *       Default  Appbar  second method              *
// ************************************

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  String? text;
  Function()? onPressed;
  MyAppBar({
    this.text,
    this.onPressed,
  });

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: IconButton(
        splashRadius: 20,
        icon: Icon(
          Icons.chevron_left_outlined,
          color: Colors.black,
          size: 30,
        ),
        onPressed: onPressed,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: TextButton(
            onPressed: () {},
            child: Text(
              text!.toUpperCase(),
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'myfont',
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
