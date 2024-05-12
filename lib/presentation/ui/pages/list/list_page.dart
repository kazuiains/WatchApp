import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_app/presentation/get/list/list_controller.dart';
import 'package:watch_app/presentation/ui/pages/base/base_online_get_view.dart';
import 'package:watch_app/presentation/ui/widgets/base/containment/base_spacer_view.dart';
import 'package:watch_app/presentation/ui/widgets/base/navigation/base_top_app_bar_view.dart';
import 'package:watch_app/presentation/ui/widgets/custom/list_item/portrait_item_list_view.dart';

class ListPage extends BaseOnlineGetView<ListController> {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return loadingErrorView(
      context: context,
      child: Scaffold(
        appBar: BaseTopAppBarView.whiteAppBar(
          context,
          title: TextField(
            controller: controller.searchETCtrl,
            decoration: InputDecoration(
              hintText: "Search...",
              border: InputBorder.none,
              suffixIcon: IconButton(
                icon: const Icon(
                  Icons.search_rounded,
                  color: Colors.black,
                ),
                onPressed: () => controller.onCall(),
              ),
            ),
            textInputAction: TextInputAction.search,
            onSubmitted: (value) => controller.onCall(),
          ),
        ),
        body: Obx(
          () {
            return RefreshIndicator(
              onRefresh: () => controller.onRefreshPage(),
              child: GridView.builder(
                padding: EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 1 / 1.3,
                ),
                itemBuilder: (context, index) => PortraitItemListView(
                  item: controller.searchList[index],
                  onTap: () {},
                ),
                itemCount: controller.searchList.length,
              ),
            );
          },
        ),
      ),
    );
  }
}
