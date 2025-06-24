import 'package:flutter/material.dart';

class RoundAvatar extends StatelessWidget {
  final String text;
  final IconData imagePath;
  const RoundAvatar({super.key, required this.text, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Column(
        children: [
          Container(
            height: 80,
            width: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.grey[400],
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(
                imagePath,
                size: 40,
                color: Colors.white,
              ),
            ),
          ),
          // const SizedBox(height: 10),
          Text(text)
        ],
      ),
    );
  }
}
