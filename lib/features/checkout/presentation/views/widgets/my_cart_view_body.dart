import 'package:checkout_app/features/checkout/presentation/views/widgets/order_info.dart';
import 'package:flutter/material.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 15),
          Image.asset("assets/images/Group 6.png"),
          SizedBox(height: 15),
          OrderInfo(nameProduct: 'Order Subtotal', priceProduct: 42.97),
          SizedBox(height: 3),
          OrderInfo(nameProduct: 'Discount', priceProduct: 0),
          SizedBox(height: 3),
          OrderInfo(nameProduct: 'Shipping', priceProduct: 8),
        ],
      ),
    );
  }
}
