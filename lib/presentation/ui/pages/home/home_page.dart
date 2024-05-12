import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_app/app/config/app_constants.dart';
import 'package:watch_app/presentation/get/home/home_controller.dart';
import 'package:watch_app/presentation/ui/pages/base/base_online_get_view.dart';
import 'package:watch_app/presentation/ui/widgets/base/containment/base_spacer_view.dart';
import 'package:watch_app/presentation/ui/widgets/custom/list_item/landscape_item_list_view.dart';
import 'package:watch_app/presentation/ui/widgets/custom/list_item/portrait_item_list_view.dart';

class HomePage extends BaseOnlineGetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return loadingErrorView(
      context: context,
      child: Scaffold(
        body: Obx(
          () {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      viewportFraction: 1,
                    ),
                    items: controller.popularList
                        .map(
                          (item) => Center(
                            child: item.backdropPath != null
                                ? InkWell(
                                    onTap: () {},
                                    child: Image.network(
                                      "$imgUrl500${item.backdropPath}",
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                : InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                      AssetsConstants.imageNoImage,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                          ),
                        )
                        .toList(),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Top Rated"),
                  ),
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
                        item: controller.topRatedList[index],
                        onTap: () {},
                      ),
                      separatorBuilder: (context, index) =>
                          BaseSpacerView.widthSmall,
                      itemCount: controller.topRatedList.length,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Now Playing"),
                  ),
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
                        item: controller.nowPlayingList[index],
                        onTap: () {},
                      ),
                      separatorBuilder: (context, index) =>
                          BaseSpacerView.widthSmall,
                      itemCount: controller.nowPlayingList.length,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Upcoming"),
                  ),
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
                        item: controller.upcomingList[index],
                        onTap: () {},
                      ),
                      separatorBuilder: (context, index) =>
                          BaseSpacerView.widthSmall,
                      itemCount: controller.upcomingList.length,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.search_rounded),
          onPressed: () => controller.onRoute(),
        ),
      ),
    );
  }
}
