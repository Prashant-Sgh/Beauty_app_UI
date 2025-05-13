import 'package:flutter/material.dart';
import 'package:beauty_app_ui/components/header_image_banner.dart';
import 'package:beauty_app_ui/components/action_icon_row.dart';
import 'package:beauty_app_ui/components/offer_card_list.dart';
import 'package:beauty_app_ui/components/review_section.dart';

class MainPageProfile extends StatelessWidget {
  const MainPageProfile({super.key});

  static String id = 'mainPageProfilePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: const [
          SliverToBoxAdapter(child: HeaderImageBanner()),
          SliverToBoxAdapter(child: ActionIconRow()),
          SliverToBoxAdapter(child: OfferCardList()),
          SliverToBoxAdapter(child: ReviewSection()),
        ],
      ),
    );
  }
}
