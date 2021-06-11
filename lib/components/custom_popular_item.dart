import 'package:airbnb_clone/constants.dart';
import 'package:flutter/material.dart';

import '../size.dart';

class CustomPopularItem extends StatelessWidget {
  const CustomPopularItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset("assets/1.webp"),
          ),
          SizedBox(height: kXSmall_gap),
          Row(
            children: [
              Icon(Icons.star, color: kAccentColor),
              Icon(Icons.star, color: kAccentColor),
              Icon(Icons.star, color: kAccentColor),
              Icon(Icons.star, color: kAccentColor),
              Icon(Icons.star, color: kAccentColor),
            ],
          ),
          SizedBox(height: kXSmall_gap),
          Text(
            "사진보다 훨씬 넓다고 느꼈고, 가격대비 아주아주 좋았습니다 호스트분 답장도 빨라서 좋았어요!!사진보다 훨씬 넓다고 느꼈고, 가격대비 아주아주 좋았습니다 호스트분 답장도 빨라서 좋았어요!!사진보다 훨씬 넓다고 느꼈고, 가격대비 아주아주 좋았습니다 호스트분 답장도 빨라서 좋았어요!!",
            style: kTextBody1Style,
            maxLines: 3,
            overflow: TextOverflow.fade,
          ),
          SizedBox(height: kXSmall_gap),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/1.webp"),
              ),
              SizedBox(width: kXSmall_gap),
              Column(
                children: [
                  Text("데어", style: kTextBody2Style),
                  Text("한국"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
