class AppStrings {
  static const String defaultNullValue = "-";
  static const String zeroValue = "0";
  static const String notApplicableCode = "N/A";

  //form
  static const String defaultNaValue = "NA";
  static const String defaultNullText = "null";

  //regex
  static const String regexHttpsUrl = "https://";
  static const String regexHttpUrl = "http://";
  static const String regexCharger = ":|:";
  static const String regexDot = ".";

  //language
  static const String languageIdIndonesia = "id_ID";
  static const String languageIdEnglish = "en_US";

  static const String languageLanguageIndonesia = "id";
  static const String languageLanguageEnglish = "en";

  static const String languageCountryIndonesia = "ID";
  static const String languageCountryEnglish = "US";

  //duration
  static const String durationGenerateOtp = "01:00";
  static const String durationZeroTwoValue = "00:00";
  static const String durationZeroThreeValue = "00:00:00";

  //Currency
  static const String currencyIndonesiaMoney = "Rp";

  //action type
  static const String actionTypeInsert = "insert";
  static const String actionTypeUpdate = "update";
  static const String actionTypeRead = "read";

  //height
  static const String appHeightSplitScreen = "323";

  //network
  static const String httpMethodGet = "get";
  static const String httpMethodPost = "post";
  static const String httpMethodDelete = "delete";
  static const String httpMethodPatch = "patch";
  static const String httpMethodPut = "put";
  static const String httpMethodDownload = "download";

  //http request
  static const String httpRequestStatusCodeSuccess = "200";
  static const String httpRequestStatusCodeTokenExpired = "403";
  static const String httpRequestStatusCodeNameSuccess = "success";

  //exception
  static const String fromAppExceptionApi = "API";
  static const String codeAEConnection = "ae-connection";
  static const String codeAEConnectTimeOut = "ae-connect-time-out";
  static const String codeAEBadCertificate = "ae-bad-certificate";
  static const String codeAESendTimeOut = "ae-send-time-out";
  static const String codeAEReceiveTimeOut = "ae-receive-time-out";
  static const String codeAECancel = "ae-cancel";
  static const String codeAEResponse = "ae-response";
  static const String codeAEOther = "ae-other";
  static const String codeAEUndefined = "ae-undefined";
  static const String codeAEServerError = "ae-server-error";

  //global exception
  static const String globalExceptionNoInternet = "network_error";

  //message failed api
  static const String apiMessageFailedRegister1 = "user is already exists";
  static const String apiMessageFailedGenerateOtp1 = "otp failed to generate";
  static const String apiMessageFailedValidateOtp1 = "otp expired!";
  static const String apiMessageFailedValidateOtp2 = "invalid otp";
  static const String apiMessageFailedLogin1 = "invalid username or password";
  static const String apiMessageFailedProfile1 = "invalid user";
  static const String apiMessageFailedChargerPoint1 = "charge box is not registered, please contact administrator";
  static const String apiMessageFailedChargerPoint2 = "charge point not found";
  static const String apiMessageFailedChargerPoint3 = "invalid connector";
  static const String apiMessageFailedChargerPoint4 = "charge box is in use";
  static const String apiMessageFailedChargerPoint5 = "charge box is in use, you have an active transaction";
  static const String apiMessageFailedStartCharging1 = "transaction order number is not found";
  static const String apiMessageFailedStartCharging2 = "transaction order is not pay yet!";
  static const String apiMessageFailedStartCharging3 = "precondition failed";
  static const String apiMessageFailedStartCharging4 = "forbidden";
  static const String apiMessageFailedStartCharging5 = "charging box is in use";
  static const String apiMessageFailedStopCharger1 = "transaction order number is not found";
  static const String apiMessageFailedStopCharger2 = "forbidden, invalid charging session";
  static const String apiMessageFailedStopCharger3 = "forbidden";
  static const String apiMessageFailedChangePassword1 = "invalid old password";
  static const String apiMessageFailedForgotPassword1 = "code failed to generated";
  static const String apiMessageFailedForgotPassword2 = "account doesn't exists";
  static const String apiMessageFailedForgotPassword3 = "this account was registered from google login, unable to reset password";
  static const String apiMessageFailedForgotPassword4 = "invalid otp";
  static const String apiMessageFailedForgotPassword5 = "otp expired!";
}
