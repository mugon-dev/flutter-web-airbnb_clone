import 'package:airbnb_clone/components/custom_appbar.dart';
import 'package:airbnb_clone/components/custom_form.dart';
import 'package:airbnb_clone/components/custom_popular_item.dart';
import 'package:airbnb_clone/components/custoom_banner.dart';
import 'package:airbnb_clone/constants.dart';
import 'package:airbnb_clone/size.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _buildHeader(),
          _buildBody(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: 600,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background.webp"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          CustomAppBar(),
          CustomForm(),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        SizedBox(height: kXXLarge_gap),
        CustomBanner(),
        SizedBox(height: kXXLarge_gap),
        _buildPopular(),
      ],
    );
  }

  Widget _buildPopular() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "한국 숙소에 직접 다녀간 게스트의 후기",
          style: kTextBodyTitleStyle,
        ),
        Text(
          "게스트 후기 2,500,000개 이상, 평균 평점 4.7점(5점 만점)",
          style: kTextBody1Style,
        ),
        SizedBox(height: kMedium_gap),
        Wrap(
          children: [
            CustomPopularItem(),
            SizedBox(width: kXSmall_gap),
            CustomPopularItem(),
            SizedBox(width: kXSmall_gap),
            CustomPopularItem(),
          ],
        )
      ],
    );
  }
}
