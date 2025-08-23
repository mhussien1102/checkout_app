import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/style.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: GestureDetector(
            onTap: () {},
            child: SvgPicture.asset('assets/icons/Arrow 1.svg'),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('My Cart', style: AppTextStyles.text25w500),
        centerTitle: true,
      ),
    );
  }
}
