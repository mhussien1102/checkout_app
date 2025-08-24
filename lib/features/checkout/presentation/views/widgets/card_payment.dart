import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardPayment extends StatelessWidget {
  final String icon;
  const CardPayment({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      width: 103,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Color(0xff34A853), width: 1.5),
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: [
          BoxShadow(
            color: Color(0xff34A853),
            spreadRadius: 0,
            blurRadius: 4,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Container(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Colors.white,
        ),
        child: Center(child: SvgPicture.asset(icon, height: 31)),
      ),
    );
  }
}
