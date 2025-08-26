import 'package:checkout_app/features/checkout/presentation/views/payment_details_view.dart';
import 'package:checkout_app/features/checkout/presentation/views/widgets/order_info.dart';
import 'package:checkout_app/features/checkout/presentation/views/widgets/total_price.dart'
    show TotalPrice;
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 15),
          Expanded(child: Image.asset("assets/images/Group 6.png")),
          SizedBox(height: 15),
          OrderInfo(nameProduct: 'Order Subtotal', priceProduct: 42.97),
          SizedBox(height: 3),
          OrderInfo(nameProduct: 'Discount', priceProduct: 0),
          SizedBox(height: 3),
          OrderInfo(nameProduct: 'Shipping', priceProduct: 8),
          SizedBox(height: 17),
          Divider(
            color: Color(0xffC7C7C7),
            thickness: 1,
            indent: 17,
            endIndent: 17,
          ),
          SizedBox(height: 15),
          TotalPrice(totalPrice: 50.97),
          SizedBox(height: 16),
          CustomButton(
            txt: 'Complete Payment',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaymentDetails()),
              );
            },
          ),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}
