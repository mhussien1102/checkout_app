import 'package:checkout_app/core/widgets/custom_button.dart';
import 'package:checkout_app/features/checkout/presentation/views/widgets/CustomCreditCard.dart';
import 'package:checkout_app/features/checkout/presentation/views/widgets/payment_method_list_view.dart';
import 'package:flutter/material.dart';

class PaymentDetailsBody extends StatefulWidget {
  const PaymentDetailsBody({super.key});

  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 32)),
          const SliverToBoxAdapter(child: PaymentMethodListView()),
          const SliverToBoxAdapter(child: SizedBox(height: 34)),
          SliverToBoxAdapter(
            child: CustomCreditCard(
              formKey: formKey,
              autovalidateMode: autovalidateMode,
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomButton(
                txt: "Pay",
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 12)),
        ],
      ),
    );
  }
}
