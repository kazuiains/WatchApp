import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_app/app/config/routes/app_routes.dart';
import 'package:watch_app/domain/entities/base/base_request.dart';
import 'package:watch_app/domain/entities/base/base_response.dart';
import 'package:watch_app/domain/entities/feature/movie/movie_feature.dart';
import 'package:watch_app/domain/use_cases/network/app/home_use_case.dart';
import 'package:watch_app/presentation/get/base/base_controller.dart';

class HomeController extends BaseController {
  final HomeUseCase useCase;

  HomeController(
    this.useCase,
  );

  final _nowPlayingList = <MovieFeature>[].obs;
  final _popularList = <MovieFeature>[].obs;
  final _topRatedList = <MovieFeature>[].obs;
  final _upcomingList = <MovieFeature>[].obs;

  setNowPlayingList(List<MovieFeature> value) {
    _nowPlayingList.value = value;
  }

  setPopularList(List<MovieFeature> value) {
    _popularList.value = value;
  }

  setTopRatedList(List<MovieFeature> value) {
    _topRatedList.value = value;
  }

  setUpcomingList(List<MovieFeature> value) {
    _upcomingList.value = value;
  }

  List<MovieFeature> get nowPlayingList => _nowPlayingList;

  List<MovieFeature> get popularList => _popularList;

  List<MovieFeature> get topRatedList => _topRatedList;

  List<MovieFeature> get upcomingList => _upcomingList;

  @override
  void onReady() {
    super.onReady();
    onCall();
    listenConnection(
      connected: () {
        if (isErrorPage) {
          onCall();
        }
      },
    );
  }

  @override
  onRefreshPage({
    BuildContext? context,
  }) {
    callWhenConnected(() async {
      loadingPage();
      onCall();
    });
  }

  @override
  onCall({
    BuildContext? context,
    int? index,
    bool? pageScope,
    bool? hideError,
    bool? hideFailed,
    bool? useBasicHandleFailed,
  }) async {
    dynamicHandleResponse<List<BaseResponse>>(
      useCase.execute(
        BaseRequest(page: "1"),
      ),
      success: (response) {
        if (response.isNotEmpty) {
          for (var i in response) {
            if (i.from == "nowPlaying") {
              setNowPlayingList(i.data);
            } else if (i.from == "popular") {
              setPopularList(i.data);
            } else if (i.from == "topRated") {
              setTopRatedList(i.data);
            } else if (i.from == "upcoming") {
              setUpcomingList(i.data);
            }
          }
        }

        pageLoadSuccess();
      },
      pageScope: true,
    );
  }

  @override
  onRoute({
    int? route,
    int? index,
  }) {
    Get.toNamed(AppRoutes.list);
  }
}
