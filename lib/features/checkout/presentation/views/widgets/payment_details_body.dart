import 'package:checkout_app/features/checkout/presentation/views/widgets/card_payment.dart';
import 'package:checkout_app/features/checkout/presentation/views/widgets/payment_method_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(children: [SizedBox(height: 32), PaymentMethodListView()]),
    );
  }
}
