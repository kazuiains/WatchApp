import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:watch_app/app/config/app_strings.dart';
import 'package:watch_app/app/config/constants/assets_constants.dart';
import 'package:watch_app/app/config/localizations/translation_key.dart';
import 'package:watch_app/app/exception/app_exception.dart';
import 'package:watch_app/app/types/modal_type.dart';
import 'package:watch_app/app/types/snack_bar_type.dart';
import 'package:watch_app/domain/entities/base/base_response.dart';
import 'package:watch_app/presentation/ui/widgets/base/communication/base_loading_view.dart';
import 'package:watch_app/presentation/ui/widgets/base/communication/base_snackbar_view.dart';
import 'package:watch_app/presentation/ui/widgets/base/containment/base_dialogs_view.dart';

class BaseController extends GetxController {
  StreamSubscription<InternetStatus>? connectionListener;
  final formKey = GlobalKey<FormState>();

  final String pageGetXId = "pageGetXId";
  final String contentGetXId = "contentGetXId";

  final _loadingPage = true.obs;
  final _errorPage = false.obs;
  final _enableButton = false.obs;

  String imageErrorPage = "";
  String titleErrorPage = "";
  String messageErrorPage = "";

  final _errorPageCode = 0.obs;

  ///set loading
  setLoadingPage(bool value) {
    if (isLoadingPage != value) {
      _loadingPage.value = value;
    }
  }

  ///set error
  setErrorPage(bool value) {
    if (isErrorPage != value) {
      _errorPage.value = value;
    }
  }

  ///set enable button
  setEnableButton(bool value) {
    if (isEnableButton != value) {
      _enableButton.value = value;
    }
  }

  ///set error code
  setErrorPageCode(int value) {
    _errorPageCode.value = value;
  }

  bool get isLoadingPage => _loadingPage.value;

  bool get isErrorPage => _errorPage.value;

  bool get isEnableButton => _enableButton.value;

  int get errorPageCode => _errorPageCode.value;

  ///function to return to the previous page
  Future<bool> onBack({
    BuildContext? context,
  }) async {
    return true;
  }

  ///function to refresh the page
  onRefreshPage({
    BuildContext? context,
  }) {}

  ///for submit form
  onSubmit({
    BuildContext? context,
  }) {}

  ///to call a function related to processes and data
  onCall({
    BuildContext? context,
    int? index,
    bool? pageScope,
    bool? hideError,
    bool? hideFailed,
    bool? useBasicHandleFailed,
  }) {}

  ///for change route
  onRoute({
    int? route,
    int? index,
  }) {}

  ///to check the internet connection on the device
  Future<bool> isConnected() async {
    return await InternetConnection().hasInternetAccess;
  }

  ///to check realtime internet connection
  listenConnection({
    Function()? connected,
    Function()? disconnected,
  }) async {
    connectionListener =
        InternetConnection().onStatusChange.listen((InternetStatus status) {
      switch (status) {
        case InternetStatus.connected:
          if (connected != null) {
            connected();
          }
          break;
        case InternetStatus.disconnected:
          if (disconnected != null) {
            disconnected();
          }
          break;
      }
    });
  }

  ///calling a function after internet checking
  callWhenConnected(Function function) async {
    bool connected = await isConnected();
    if (connected) {
      function();
    } else {
      noInternetSnackBar();
    }
  }

  ///show the snack bar
  snackBar({
    SnackBarType snackBarType = SnackBarType.success,
    String? title,
    String? message,
    String? buttonText,
    Function? onClick,
  }) {
    BaseSnackBarView.basic(
      title: title,
      message: message ?? "",
      buttonText: buttonText,
      onClick: onClick,
      snackBarType: snackBarType,
    );
  }

  ///displays a snackbar with a design without a title
  noTitleSnackBar({
    SnackBarType snackBarType = SnackBarType.success,
    String? message,
    Color? color,
    bool primary = false,
    SnackPosition? snackPosition,
  }) {
    BaseSnackBarView.basicWithOutTitle(
      message: message ?? "",
      snackBarType: snackBarType,
      color: color,
      primary: primary,
      snackPosition: snackPosition,
    );
  }

  ///displays a special snackbar for no internet notifications
  noInternetSnackBar() {
    noTitleSnackBar(
      snackBarType: SnackBarType.warning,
      message: baseErrorMessage1.tr,
      primary: true,
    );
  }

  ///displays a special snackbar for server error
  serverErrorSnackBar() {
    noTitleSnackBar(
      message: baseLoadingAndErrorErrorMessage5.tr,
      snackBarType: SnackBarType.error,
    );
  }

  ///show the dialog
  dialog({
    ModalType modalType = ModalType.success,
    String? description,
    String? title,
    Function? onYes,
    Function? onNo,
    bool dismissible = false,
  }) {
    return BaseDialogsView.basic(
      title: title,
      description: description ?? '',
      modalType: modalType,
      onYes: onYes,
      onNo: onNo,
      dismissible: dismissible,
    );
  }

  ///displays loading dialog which blocks the ui
  loading(
    bool show, {
    String? text,
    EasyLoadingMaskType? maskType,
  }) {
    if (show) {
      BaseLoadingView.show(
        text: text,
        maskType: maskType,
      );
    } else {
      BaseLoadingView.dismiss();
    }
  }

  ///enable the display to load the entire content page
  loadingPage() {
    bool oldLoading = isLoadingPage;
    bool oldError = isErrorPage;

    setErrorPage(false);
    setLoadingPage(true);

    if (!oldLoading && !oldError) {
      update([pageGetXId]);
    } else {
      update([contentGetXId]);
    }
  }

  ///handles the display when the page successfully loads
  pageLoadSuccess() {
    setErrorPage(false);
    setLoadingPage(false);
    update([pageGetXId]);
  }

  ///handles the display when the page fails to load
  ///Error Code:
  ///0 = no internet connection
  ///1 = data not found
  ///2 = not found
  ///3 = system error
  ///4 = server error
  pageLoadFail({
    int? errorPageCode,
  }) {
    bool oldLoading = isLoadingPage;
    bool oldError = isErrorPage;

    setErrorPageCode(errorPageCode ?? 0);
    setLoadingPage(false);
    setErrorPage(true);

    if (!oldLoading && !oldError) {
      update([pageGetXId]);
    } else {
      update([contentGetXId]);
    }
  }

  ///displays a special page view for server error
  serverErrorPage() {
    pageLoadFail(
      errorPageCode: 4,
    );
  }

  ///displays a special page view for not found
  notFoundErrorPage() {
    pageLoadFail(
      errorPageCode: 2,
    );
  }

  ///displays a special page view for not found
  customErrorPage({
    String? image,
    String? title,
    String? message,
  }) {
    imageErrorPage = image ?? AssetsConstants.imageIllustrationNotFound;
    titleErrorPage = title ?? baseLoadingAndErrorErrorTitle3;
    messageErrorPage = message ?? baseLoadingAndErrorErrorMessage3;

    pageLoadFail(
      errorPageCode: -1,
    );
  }

  ///default function to handle error callbacks. this function is called automatically when an error occurs.
  errorHandlerPage(
    AppException exception, {
    Function()? custom,
  }) {
    if (exception.code == AppStrings.codeAEOther ||
        exception.code == AppStrings.codeAEConnectTimeOut ||
        exception.code == AppStrings.codeAEBadCertificate ||
        exception.code == AppStrings.codeAESendTimeOut ||
        exception.code == AppStrings.codeAEReceiveTimeOut) {
      pageLoadFail(
        errorPageCode: 4,
      );
    } else if (exception.code == AppStrings.codeAEConnection ||
        exception.code == AppStrings.codeAECancel) {
      pageLoadFail(
        errorPageCode: 0,
      );
    } else if (exception.code == AppStrings.codeAEResponse) {
      dynamic response = exception.response;
      if (response != null && response is List) {
        if (response.isEmpty) {
          pageLoadFail(
            errorPageCode: 1,
          );
        } else {
          pageLoadFail(
            errorPageCode: 4,
          );
        }
      } else {
        pageLoadFail(
          errorPageCode: 4,
        );
      }
    } else {
      if (custom != null) {
        custom();
      }
    }
  }

  ///default function to handle error callbacks. this function is called automatically when an error occurs. and appeared to be a snack bar
  errorHandlerSnackBar(
    AppException exception, {
    Function()? custom,
  }) {
    loading(false);

    if (exception.code == AppStrings.codeAEOther ||
        exception.code == AppStrings.codeAEConnectTimeOut ||
        exception.code == AppStrings.codeAEBadCertificate ||
        exception.code == AppStrings.codeAESendTimeOut ||
        exception.code == AppStrings.codeAEReceiveTimeOut) {
      noTitleSnackBar(
        message: baseLoadingAndErrorErrorMessage5.tr,
        snackBarType: SnackBarType.error,
      );
    } else if (exception.code == AppStrings.codeAEConnection ||
        exception.code == AppStrings.codeAECancel) {
      noTitleSnackBar(
        message: baseLoadingAndErrorErrorMessage1.tr,
        snackBarType: SnackBarType.error,
      );
    } else if (exception.code == AppStrings.codeAEResponse) {
      dynamic response = exception.response;
      if (response != null && response is List) {
        if (response.isEmpty) {
          noTitleSnackBar(
            message: baseLoadingAndErrorErrorMessage2.tr,
            snackBarType: SnackBarType.error,
          );
        } else {
          noTitleSnackBar(
            message: baseLoadingAndErrorErrorMessage5.tr,
            snackBarType: SnackBarType.error,
          );
        }
      } else {
        noTitleSnackBar(
          message: baseLoadingAndErrorErrorMessage5.tr,
          snackBarType: SnackBarType.error,
        );
      }
    } else {
      if (custom != null) {
        custom();
      }
    }
  }

  ///handles data for error page display
  Widget builderPageError(
    Widget Function(String image, String title, String subtitle) builder,
  ) {
    if (errorPageCode == 0) {
      return builder(
        AssetsConstants.imageIllustrationNoConnection,
        baseLoadingAndErrorErrorTitle1,
        baseLoadingAndErrorErrorMessage1,
      );
    } else if (errorPageCode == 1) {
      return builder(
        AssetsConstants.imageIllustrationEmptyData,
        baseLoadingAndErrorErrorTitle2,
        baseLoadingAndErrorErrorMessage2,
      );
    } else if (errorPageCode == 2) {
      return builder(
        AssetsConstants.imageIllustrationNotFound,
        baseLoadingAndErrorErrorTitle3,
        baseLoadingAndErrorErrorMessage3,
      );
    } else if (errorPageCode == 3) {
      return builder(
        AssetsConstants.imageIllustrationInternalSystemError,
        baseLoadingAndErrorErrorTitle4,
        baseLoadingAndErrorErrorMessage4,
      );
    } else if (errorPageCode == 4) {
      return builder(
        AssetsConstants.imageIllustrationServerError,
        baseLoadingAndErrorErrorTitle5,
        baseLoadingAndErrorErrorMessage5,
      );
    } else {
      return builder(
        imageErrorPage,
        titleErrorPage,
        messageErrorPage,
      );
    }
  }

  ///for check all field is not empty
  checkAllField() {}

  ///for check validation form
  bool validateForm() {
    return formKey.currentState!.validate();
  }

  ///handles all responses sent by the API
  handleResponse(
    Future<BaseResponse> useCase, {
    Function(BaseResponse response)? success,
    Function(BaseResponse response)? failed,
    Function(AppException exception)? serverErrorSnackBar,
    Function(AppException exception)? serverErrorPage,
    Function(AppException exception)? serverError,
    bool? pageScope,
    bool? hideError,
    bool? hideFailed,
    bool? useBasicHandleFailed,
  }) {
    bool scope = pageScope ?? false;
    bool hideE = hideError ?? false;
    bool hideF = hideFailed ?? false;
    bool useBasic = useBasicHandleFailed ?? true;

    useCase.then((value) {
      if (value.success != null && value.success!) {
        if (success != null) {
          success(value);
        }
      } else {
        if (!hideF) {
          if (failed != null) {
            failed(value);
          } else {
            if (useBasic) {
              if (scope) {
                pageLoadFail(
                  errorPageCode: 4,
                );
              } else {
                loading(false);
                noTitleSnackBar(
                  message: baseLoadingAndErrorErrorMessage5.tr,
                  snackBarType: SnackBarType.error,
                );
              }
            }
          }
        }
      }
    }).onError<Exception>(
      (error, stackTrace) {
        if (!hideE) {
          if (error is AppException) {
            if (serverError != null) {
              serverError(error);
            } else {
              if (scope) {
                errorHandlerPage(
                  error,
                  custom:
                      serverErrorPage != null ? serverErrorPage(error) : null,
                );
              } else {
                errorHandlerSnackBar(
                  error,
                  custom: serverErrorSnackBar != null
                      ? serverErrorSnackBar(error)
                      : null,
                );
              }
            }
          } else {
            if (scope) {
              pageLoadFail(
                errorPageCode: 3,
              );
            } else {
              loading(false);
              noTitleSnackBar(
                message: baseLoadingAndErrorErrorMessage4.tr,
                snackBarType: SnackBarType.error,
              );
            }
          }
        }
      },
    );
  }

  ///handles all responses sent by the API
  dynamicHandleResponse<T>(
    Future<T> useCase, {
    Function(T response)? success,
    Function(AppException exception)? serverErrorSnackBar,
    Function(AppException exception)? serverErrorPage,
    Function(AppException exception)? serverError,
    bool? pageScope,
    bool? hideError,
  }) {
    bool scope = pageScope ?? false;
    bool hide = hideError ?? false;

    useCase.then((value) {
      if (success != null) {
        success(value);
      }
    }).onError<Exception>(
      (error, stackTrace) {
        if (!hide) {
          if (error is AppException) {
            if (serverError != null) {
              serverError(error);
            } else {
              if (scope) {
                errorHandlerPage(
                  error,
                  custom:
                      serverErrorPage != null ? serverErrorPage(error) : null,
                );
              } else {
                errorHandlerSnackBar(
                  error,
                  custom: serverErrorSnackBar != null
                      ? serverErrorSnackBar(error)
                      : null,
                );
              }
            }
          } else {
            if (scope) {
              pageLoadFail(
                errorPageCode: 3,
              );
            } else {
              loading(false);
              noTitleSnackBar(
                message: baseLoadingAndErrorErrorMessage4.tr,
                snackBarType: SnackBarType.error,
              );
            }
          }
        }
      },
    );
  }
}
