import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_app/domain/entities/base/base_request.dart';
import 'package:watch_app/domain/entities/base/base_response.dart';
import 'package:watch_app/domain/entities/feature/movie/movie_feature.dart';
import 'package:watch_app/domain/use_cases/network/app/movie_search_use_case.dart';
import 'package:watch_app/presentation/get/base/base_controller.dart';

class ListController extends BaseController {
  final MovieSearchUseCase useCase;

  ListController(
    this.useCase,
  );

  final TextEditingController searchETCtrl = TextEditingController();

  final _searchList = <MovieFeature>[].obs;

  setSearchList(List<MovieFeature> value) {
    _searchList.value = value;
  }

  List<MovieFeature> get searchList => _searchList;

  @override
  void onReady() {
    super.onReady();
    onCall();
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
    dynamicHandleResponse<BaseResponse>(
      useCase.execute(
        BaseRequest(
          page: "1",
          query: searchETCtrl.text,
        ),
      ),
      success: (response) {
        var data = response.data;
        if (data is List<MovieFeature> && data.isNotEmpty) {
          setSearchList(data);
        }
        pageLoadSuccess();
      },
      pageScope: true,
    );
  }
}
