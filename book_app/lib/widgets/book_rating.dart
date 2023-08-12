// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:book_app/consttants.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  final double score;
  const BookRating({
    Key? key,
    required this.score,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            offset: const Offset(3, 7),
            blurRadius: 20,
            color: const Color(0xFD3D3D3).withOpacity(.5),
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end, // Căn chỉnh canh lề phải
            children: <Widget>[
              const Icon(
                Icons.star,
                color: kIconColor,
                size: 15,
              ),
              const SizedBox(width: 1),
              Text(
                "$score",
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


