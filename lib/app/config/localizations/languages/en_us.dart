import 'package:watch_app/app/config/app_config.dart';
import 'package:watch_app/app/config/localizations/translation_key.dart';

class EnUS {
  static const String firstName = "First Name";
  static const String lastName = "Last Name";
  static const String phoneNumber = "Phone Number";

  static const String connect = "Connect";
  static const String connectorId = "Connector ID";

  static const String electricCurrent = "Electric current";
  static const String connectorType = "Connector type";
  static const String pricePerKwh = "Price per kWh";
  static const String totalKwh = "Total kWh";
  static const String transactionNumber = "Transaction Number - ";

  static const String payment = "Payment";
  static const String reload = "Reload";

  static const String tryAgain = "Try Again";
  static const String errorTitleConnection = "Not Connected";
  static const String errorTitleDataNotFound = "Data not Found";
  static const String errorTitleNotFound = "Not Found";
  static const String errorTitleSystemError = "There is an Error";
  static const String errorTitleServerError = "There is an Error";
  static const String errorSubtitleConnection = "Your internet has a problem. Please check your internet or Wi-Fi connection then try again.";
  static const String errorSubtitleDataNotFound = "The data you requested could not be found. Please check again and try again.";
  static const String errorSubtitleNotFound = "The action you took is temporarily not found. please contact us.";
  static const String errorSubtitleSystemError = "An error occurred in the system. please try again a few moments later.";
  static const String errorSubtitleServerError = "An error occurred on the server. please try again a few moments later.";

  static const String noConnection = "No connection";
  static const String noConnectionDescription = "Make sure you are connected to the internet network.";

  static const String loading = "Loading";
  static const String pleaseWait = "Please Wait";
  static const String downloading = "Downloading";
  static const String preparing = "Preparing";
  static const String dataIsReady = "Data is Ready";
  static const String hourAbbreviation = "h";
  static const String minuteAbbreviation = "min";
  static const String developmentTitle = "Under Development";
  static const String developmentSubtitle = "Sorry, this feature is not accessible because it is currently under development. Thank You.";
  static const String or = "or";

  static const String apMesFailedRegister1 = "Sorry, email has been registered, please use another email.";
  static const String apMesFailedRegister2 = "Account not registered using Google. Please log in with email and password.";
  static const String apMesFailedGenerateOtp1 = "Failed to send OTP.";
  static const String apMesFailedValidateOtp1 = "Sorry, the OTP code you entered has expired.";
  static const String apMesFailedValidateOtp2 = "Sorry, the OTP code you entered is wrong.";
  static const String apMesFailedLogin1 = "Sorry, the email or password you entered is incorrect.";
  static const String apMesFailedProfile1 = "Sorry, profile not found.";
  static const String apMesFailedChargerPoint1 =
      "Sorry, the charging place you requested could not be found. Make sure the scanned QR code or code entered is correct.";
  static const String apMesFailedStartCharging1 = "Sorry, No power purchase transactions found.";
  static const String apMesFailedStartCharging2 = "Sorry, the power purchase transaction has not been paid.";
  static const String apMesFailedStartCharging3 = "Sorry, make sure the charger is active and the plug is connected to your vehicle.";
  static const String apMesFailedStartCharging4 = "Sorry, Failed to connect to the charging machine.";
  static const String apMesFailedStartCharging5 = "Sorry, The charging machine is currently in use.";
  static const String apMesFailedStopCharger1 = "Sorry, No power purchase transactions found.";
  static const String apMesFailedStopCharger2 = "Sorry, Invalid charger session.";
  static const String apMesFailedStopCharger3 = "Sorry, Failed to connect to the charging machine.";
  static const String apMesFailedChangePassword1 = "The old password you entered is incorrect.";
  static const String apMesFailedResetPassword1 = "Sorry, Failed to send OTP to reset password.";
  static const String apMesFailedResetPassword2 = "Sorry, Account not found.";
  static const String apMesFailedResetPassword3 = "Sorry, the Google account cannot be reset password.";
  static const String apMesFailedResetPassword4 = "Sorry, the OTP code you entered is wrong.";
  static const String apMesFailedResetPassword5 = "Sorry, the OTP code you entered has expired.";

  static const String apMesSuccessGenerateOtp1 = "OTP has been sent to your email.";
  static const String apMesSuccessCheckOut1 = "Successfully completed the transaction.";
  static const String apMesSuccessStartCharging1 = "Start charging your vehicle.";
  static const String apMesSuccessChangePassword1 = "Password changed successfully.";
  static const String apMesSuccessUpdateProfile1 = "Profile changed successfully.";
  static const String apMesSuccessResetPassword1 = "OTP has been sent to your email.";

  static const String profile = "Profile";
  static const String settings = "Settings";
  static const String logout = "Logout";

  static const String perMessageCameraAndStorage =
      "To be able to upload media and files, please activate the camera and storage permissions in the application settings. open app settings?";
  static const String perMessageCameraQR =
      "To be able to scan QR, please activate camera permissions in the application settings. open app settings?";
  static const String perMessageNotification =
      "To be able to receive the latest notifications about the application, please activate notification permissions in the application settings. open app settings?";
  static String perCameraQRTitle = "Allow ${AppConfig.instance!.appName}\nto access the camera";
  static const String perCameraQRDescription = "With this, you can scan QR codes. You can change it at any time in your device settings.";
  static const String openSettings = "Open Settings";

  static const String filPicMessageAttachmentLimit = "The maximum number of files that can be listed is ";

  static const String andNotificationTitle = "High Importance Notifications";
  static const String andNotificationDescription = "This channel is used for important notifications.";

  static const String indonesian = "Indonesian";
  static const String english = "English";

  static const String success = "Success";
  static const String warning = "Warning";
  static const String sessionExpired = "Session Expired";
  static const String error = "Error";
  static const String notification = "Notification";
  static const String close = "Close";
  static const String yes = "Yes";
  static const String no = "No";
  static const String ok = "Ok";
  static const String notReady = "Not ready";
  static const String startNow = "Start now";
  static const String cancel = "Cancel";
  static const String save = "Save";
  static const String modDesDelete = "Are you sure you want to delete this data?";
  static const String modDesSyncData = "SYNC will send your offline data to the server. Are you sure you want to sync data?";
  static const String modDesSuccess = "Has successfully been created.";
  static const String modDesSessionExpired = "Sorry, your session has ended. Please log in again to enjoy this application.";
  static const String modDesResetPasswordSuccess = "password reset successfully. Please log in using the new password.";

  static const String changeLanguageTitle = "Change Language";
  static const String changeLanguageDescription = "Select the language to apply in this application.";
  static const String startChargingTitle = "Charging Preparation";
  static const String startChargingDescription =
      "Before starting charging, pay attention that the charging machine is active and make sure the charger connector/plug is connected to your vehicle.";

  static const String mustBeFilled = "Must be filled";
  static const String mustChoose = "Must choose";
  static const String incorrectFormat = "Incorrect format";
  static const String newPasswordNotMatchEtc = "New Password and Confirm Password are not the same";
  static const String cannotBeFilled0 = "Cannot be filled 0";
  static const String exceededMax = "Exceeded max";
  static const String containsAtLeastNCharacters = "Contains at least 6 characters";
  static const String minimumPurchasesMessage = "Minimum purchase required is Rp10,000.00";

  static const String messageExceptionConnection = "Unable to connect with server.";
  static const String messageExceptionConnectTimeOut = "Failed to connect with the server because of Time Out.";
  static const String messageExceptionBadCertificate = "Failed to connect with the server because of Certificate.";
  static const String messageExceptionSendTimeOut = "Failed to send data to the server because of Time Out.";
  static const String messageExceptionReceiveTimeOut = "Failed to get data from the server because of Time Out.";
  static const String messageExceptionCancel = "The request to the server was cancelled.";
  static const String messageExceptionResponse = "Get response data from the server.";
  static const String messageExceptionOther = "There was another error trying to make a request to the server.";
  static const String messageExceptionUndefined = "An internal error has occurred in the system";

  static const String messageScannerExceptionInternalSystem = "An error occurred in the system";
  static const String messageScannerExceptionUndefined = "There is an error";
  static const String messageScannerExceptionUnsupported = "Scanning is unsupported on this device";

  static Map<String, String> get messages => {
        baseLoadingAndErrorRefreshButton: tryAgain.toUpperCase(),
        baseLoadingAndErrorErrorTitle1: errorTitleConnection,
        baseLoadingAndErrorErrorTitle2: errorTitleDataNotFound,
        baseLoadingAndErrorErrorTitle3: errorTitleNotFound,
        baseLoadingAndErrorErrorTitle4: errorTitleSystemError,
        baseLoadingAndErrorErrorTitle5: errorTitleServerError,
        baseLoadingAndErrorErrorMessage1: errorSubtitleConnection,
        baseLoadingAndErrorErrorMessage2: errorSubtitleDataNotFound,
        baseLoadingAndErrorErrorMessage3: errorSubtitleNotFound,
        baseLoadingAndErrorErrorMessage4: errorSubtitleSystemError,
        baseLoadingAndErrorErrorMessage5: errorSubtitleServerError,
        baseErrorTitle1: noConnection,
        baseErrorMessage1: noConnectionDescription,
        generalLoading: "$loading...",
        generalPleaseWait: "$pleaseWait...",
        generalDownloading: "$downloading...",
        generalPreparing: "$preparing...",
        generalDownloadedComplete: "$dataIsReady.",
        generalHourAbbreviation: hourAbbreviation,
        generalMinuteAbbreviation: minuteAbbreviation,
        generalDevelopmentTitle: developmentTitle,
        generalDevelopmentSubtitle: developmentSubtitle,
        generalOr: or.toUpperCase(),
        apiMessageFailedRegister1: apMesFailedRegister1,
        apiMessageFailedRegister2: apMesFailedRegister2,
        apiMessageFailedGenerateOtp1: apMesFailedGenerateOtp1,
        apiMessageFailedValidateOtp1: apMesFailedValidateOtp1,
        apiMessageFailedValidateOtp2: apMesFailedValidateOtp2,
        apiMessageFailedLogin1: apMesFailedLogin1,
        apiMessageFailedProfile1: apMesFailedProfile1,
        apiMessageFailedChargerPoint1: apMesFailedChargerPoint1,
        apiMessageFailedStartCharging1: apMesFailedStartCharging1,
        apiMessageFailedStartCharging2: apMesFailedStartCharging2,
        apiMessageFailedStartCharging3: apMesFailedStartCharging3,
        apiMessageFailedStartCharging4: apMesFailedStartCharging4,
        apiMessageFailedStartCharging5: apMesFailedStartCharging5,
        apiMessageFailedStopCharger1: apMesFailedStopCharger1,
        apiMessageFailedStopCharger2: apMesFailedStopCharger2,
        apiMessageFailedStopCharger3: apMesFailedStopCharger3,
        apiMessageFailedChangePassword1: apMesFailedChangePassword1,
        apiMessageFailedResetPassword1: apMesFailedResetPassword1,
        apiMessageFailedResetPassword2: apMesFailedResetPassword2,
        apiMessageFailedResetPassword3: apMesFailedResetPassword3,
        apiMessageFailedResetPassword4: apMesFailedResetPassword4,
        apiMessageFailedResetPassword5: apMesFailedResetPassword5,
        apiMessageSuccessGenerateOtp1: apMesSuccessGenerateOtp1,
        apiMessageSuccessCheckOut1: apMesSuccessCheckOut1,
        apiMessageSuccessStartCharging1: apMesSuccessStartCharging1,
        apiMessageSuccessChangePassword1: apMesSuccessChangePassword1,
        apiMessageSuccessUpdateUser1: apMesSuccessUpdateProfile1,
        apiMessageSuccessResetPassword1: apMesSuccessResetPassword1,
        navigationDrawerMenu1: profile,
        navigationDrawerMenu2: settings,
        navigationDrawerMenu3: logout,
        permissionMessageCameraAndStorage: perMessageCameraAndStorage,
        permissionMessageCameraQR: perMessageCameraQR,
        permissionMessageNotification: perMessageNotification,
        permissionViewCameraQRTitle: perCameraQRTitle,
        permissionViewCameraQRDescription: perCameraQRDescription,
        permissionViewLabelButton: openSettings.toUpperCase(),
        filePickerMessageAttachmentLimit: filPicMessageAttachmentLimit,
        androidNotificationTitle: andNotificationTitle,
        androidNotificationDescription: andNotificationDescription,
        language1: indonesian,
        language2: english,
        modalTitleSuccess: success,
        modalTitleError: error,
        modalTitleWarning: warning,
        modalTitleSessionExpired: sessionExpired,
        modalTextYes: yes.toUpperCase(),
        modalTextNo: no.toUpperCase(),
        modalTextOk: ok.toUpperCase(),
        modalTextCancel: cancel.toUpperCase(),
        modalTextSave: save.toUpperCase(),
        modalDescriptionDelete: modDesDelete,
        modalDescriptionSyncData: modDesSyncData,
        modalDescriptionSuccess: modDesSuccess,
        modalDescriptionSessionExpired: modDesSessionExpired,
        modalDescriptionResetPasswordSuccess: modDesResetPasswordSuccess,
        snackBarTitleSuccess: success,
        snackBarTitleError: error,
        snackBarTitleWarning: warning,
        snackBarTitleNotification: notification,
        snackBarTextClose: close.toUpperCase(),
        bottomSheetTextOk: ok.toUpperCase(),
        bottomSheetTextSave: save.toUpperCase(),
        bottomSheetTextNotReady: notReady,
        bottomSheetTextStartNow: startNow,
        bottomSheetChangeLanguageTitle: changeLanguageTitle,
        bottomSheetChangeLanguageSubTitle: changeLanguageDescription,
        bottomSheetStartChargingTitle: startChargingTitle,
        bottomSheetStartChargingMessage: startChargingDescription,
        validatorMessageEmptyInput: "$mustBeFilled!",
        validatorMessageNotSelected: "$mustChoose!",
        validatorMessageInvalidFormat: "$incorrectFormat.",
        validatorMessageNewPasswordNotMatch: "$newPasswordNotMatchEtc.",
        validatorMessageMinInputNumeric: "$cannotBeFilled0.",
        validatorMessageMaxInputNumeric: "$exceededMax.",
        validatorMessageMinimumPassword: containsAtLeastNCharacters,
        validatorMessageMinimumPurchases: minimumPurchasesMessage,
        messageAEConnection: messageExceptionConnection,
        messageAEConnectTimeOut: messageExceptionConnectTimeOut,
        messageAEBadCertificate: messageExceptionBadCertificate,
        messageAESendTimeOut: messageExceptionSendTimeOut,
        messageAEReceiveTimeOut: messageExceptionReceiveTimeOut,
        messageAECancel: messageExceptionCancel,
        messageAEResponse: messageExceptionResponse,
        messageAEOther: messageExceptionOther,
        messageAEUndefined: messageExceptionUndefined,
        messageSEInternalSystem: messageScannerExceptionInternalSystem,
        messageSEUndefined: messageScannerExceptionUndefined,
        messageSEUnsupported: messageScannerExceptionUnsupported,
      };
}
