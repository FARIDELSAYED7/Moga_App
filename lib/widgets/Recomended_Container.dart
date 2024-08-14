import 'package:flutter/material.dart';

class RecomendedContainer extends StatelessWidget {
  const RecomendedContainer(
      {super.key,
      required this.imgUrl,
      required this.title,
      required this.subTitle});
  final String imgUrl;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage("$imgUrl"),
          ),
          Text(
  title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          Text(
           subTitle,
            style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 14,
                color: Colors.grey[800]),
          ),
        ],
      ),
    );
  }
}
