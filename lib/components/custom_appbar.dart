import 'package:flutter/material.dart';

import '../constants.dart';
import '../size.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kLarge_padding),
      child: Row(
        children: [
          Image.asset(
            "assets/airbnb_logo.png",
            width: 30,
            height: 30,
            color: Colors.white,
          ),
          SizedBox(width: kXSmall_gap),
          TextButton(
            onPressed: () {
              print("로고 클릭");
            },
            child: Text(
              "airbnb",
              style: kTextAppBarLogoStyle,
            ),
          ),
          Spacer(),
          TextButton(
            onPressed: () {
              print("호스트가");
            },
            child: Text("호스트가 되어보세요", style: kTextAppBarMenuStyle),
          ),
          SizedBox(width: kSmall_gap),
          TextButton(
            onPressed: () {
              print("도움말");
            },
            child: Text("도움말", style: kTextAppBarMenuStyle),
          ),
          SizedBox(width: kSmall_gap),
          TextButton(
            onPressed: () {
              print("회원가입");
            },
            child: Text("회원가입", style: kTextAppBarMenuStyle),
          ),
        ],
      ),
    );
  }
}
