import 'package:checkout_app/features/checkout/presentation/views/widgets/payment_item_info.dart';
import 'package:checkout_app/features/checkout/presentation/views/widgets/total_price.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Color(0xffD9D9D9),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 66),
        child: Column(
          children: [
            Text("Thank You", style: AppTextStyles.text25w500),
            Text(
              "Your Transaction was successful",
              style: AppTextStyles.text20w400,
            ),
            SizedBox(height: 42),
            PaymentItemInfo(title: "Date", des: "10/11/2025"),
            SizedBox(height: 20),
            PaymentItemInfo(title: "Time", des: "10:25 Am"),
            SizedBox(height: 20),
            PaymentItemInfo(title: "To", des: "Cairo"),
            Divider(height: 60, thickness: 2),
            TotalPrice(totalPrice: 50.97),
            Container(
              width: 305,
              height: 73,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
