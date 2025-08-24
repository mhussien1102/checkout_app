import 'package:checkout_app/features/checkout/presentation/views/widgets/my_cart_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/methods/build_appbar.dart';
import '../../../../core/utils/style.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar('My Cart'), body: MyCartViewBody());
  }
}
