import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final AssetImage rightImage;

  const ReusableCard({
    required this.rightImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      decoration: BoxDecoration(
        color: const Color(0xff7c94b6),
        image: DecorationImage(
          image: rightImage,
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
