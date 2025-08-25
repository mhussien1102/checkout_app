import 'package:checkout_app/core/methods/build_appbar.dart';
import 'package:flutter/material.dart';

import 'widgets/payment_details_body.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar('Payment Details'),
      body: PaymentDetailsBody(),
    );
  }
}
