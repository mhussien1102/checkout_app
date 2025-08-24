import 'package:checkout_app/core/methods/build_appbar.dart';
import 'package:flutter/material.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar('Payment Details'));
  }
}
