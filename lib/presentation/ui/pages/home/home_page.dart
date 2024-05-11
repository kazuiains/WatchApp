import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_app/domain/entities/feature/movie/movie_feature.dart';
import 'package:watch_app/presentation/get/home/home_controller.dart';
import 'package:watch_app/presentation/ui/widgets/base/containment/base_spacer_view.dart';
import 'package:watch_app/presentation/ui/widgets/custom/list_item/landscape_item_list_view.dart';
import 'package:watch_app/presentation/ui/widgets/custom/list_item/portrait_item_list_view.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Test 1"),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 130,
              child: ListView.separated(
                padding: EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => LandscapeItemListView(
                  item: MovieFeature(),
                  onTap: () {},
                ),
                separatorBuilder: (context, index) => BaseSpacerView.widthSmall,
                itemCount: 10,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text("Test 2"),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 240,
              child: ListView.separated(
                padding: EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => PortraitItemListView(
                  item: MovieFeature(),
                  onTap: () {},
                ),
                separatorBuilder: (context, index) => BaseSpacerView.widthSmall,
                itemCount: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
