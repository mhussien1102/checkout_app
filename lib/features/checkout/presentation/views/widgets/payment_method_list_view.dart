import 'package:flutter/material.dart';

import 'card_payment.dart';

class PaymentMethodListView extends StatelessWidget {
  const PaymentMethodListView({super.key});

  final List<String> paymentMethodItems = const [
    "assets/images/SVGRepo_iconCarrier.svg",
    'assets/images/Group.svg',
    'assets/images/Group1.svg',
  ];
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: paymentMethodItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CardPayment(icon: paymentMethodItems[index], isActve: true),
          );
        },
      ),
    );
  }
}
