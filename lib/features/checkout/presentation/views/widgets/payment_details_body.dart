import 'package:checkout_app/core/widgets/custom_button.dart';
import 'package:checkout_app/features/checkout/presentation/views/widgets/CustomCreditCard.dart';
import 'package:checkout_app/features/checkout/presentation/views/widgets/payment_method_list_view.dart';
import 'package:flutter/material.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 32)),
          const SliverToBoxAdapter(child: PaymentMethodListView()),
          const SliverToBoxAdapter(child: SizedBox(height: 34)),
          const SliverToBoxAdapter(child: CustomCreditCard()),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomButton(txt: "Pay", onPressed: () {}),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 12)),
        ],
      ),
    );
  }
}
