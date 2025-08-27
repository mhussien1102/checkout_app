import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        clipBehavior: Clip.none,
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
            bottom: MediaQuery.sizeOf(context).height * .2 + 20,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Row(
                children: List.generate(
                  30,
                  (index) => Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1.0),
                      child: Container(
                        height: 2,
                        color: Color(0xffB8B8B8),
                        // color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ),
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
          Positioned(
            left: 0,
            right: 0,
            top: -20,
            child: CircleAvatar(
              backgroundColor: Color(0xffD9D9D9),
              radius: 50,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.green,
                child: Icon(Icons.check, color: Colors.white, size: 50),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
