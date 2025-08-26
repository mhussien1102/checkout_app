import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Stack(
        children: [
          Container(
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Color(0xffD9D9D9),
            ),
          ),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * .2,
            left: -20,
            child: CircleAvatar(backgroundColor: Colors.white),
          ),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * .2,
            right: -20,
            child: CircleAvatar(backgroundColor: Colors.white),
          ),
        ],
      ),
    );
  }
}
