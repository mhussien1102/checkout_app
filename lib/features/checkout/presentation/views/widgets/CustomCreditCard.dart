import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({super.key});

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  final String cardNumber = '',
      expiryDate = '',
      cardHolderName = '',
      cvvCode = '';
  final bool showBackView = false;

  @override
  Widget build(BuildContext context) {
    return CreditCardWidget(
      cardNumber: cardNumber,
      expiryDate: expiryDate,
      cardHolderName: cardHolderName,
      cvvCode: cvvCode,
      showBackView: showBackView,
      onCreditCardWidgetChange: (value) {},
    );
  }
}
