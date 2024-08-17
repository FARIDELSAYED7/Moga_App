import 'package:flutter/material.dart';

class RecomendedContainer extends StatelessWidget {
  const RecomendedContainer({
    Key? key,
    required this.imgUrl,
    required this.title,
    required this.subTitle,
    required this.onTap,
  }) : super(key: key);

  final String imgUrl;
  final String title;
  final String subTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 180,
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imgUrl,
              fit: BoxFit.cover,
            ),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            Text(
              subTitle,
              style: const TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

