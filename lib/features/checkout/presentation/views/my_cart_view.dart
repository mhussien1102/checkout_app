import 'package:flutter/material.dart';

import '../../../../core/utils/style.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart', style: AppTextStyles.text25w500),
        centerTitle: true,
      ),
    );
  }
}
