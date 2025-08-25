import 'package:checkout_app/features/checkout/presentation/views/widgets/CustomCreditCard.dart';
import 'package:checkout_app/features/checkout/presentation/views/widgets/payment_method_list_view.dart';
import 'package:flutter/material.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            PaymentMethodListView(),
            SizedBox(height: 34),
            CustomCreditCard(),
          ],
        ),
      ),
    );
  }
}
