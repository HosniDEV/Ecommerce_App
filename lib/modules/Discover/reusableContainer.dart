import 'dart:ffi';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:hos_app/shared/components/components.dart';
import 'package:hos_app/shared/components/constants.dart';
import 'package:hos_app/shared/components/constants.dart';

import '../../shared/components/reusableContainer.dart';

class ReusableContainer extends StatelessWidget {
  const ReusableContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReausableContainer(
          icon: Icons.apple,
          title: 'SUCCESS',
          textBody: 'Product has been doing great',
          textButton: 'checkout'),
    );
  }
}
