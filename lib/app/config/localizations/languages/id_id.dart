import 'package:watch_app/app/config/app_config.dart';
import 'package:watch_app/app/config/localizations/translation_key.dart';

class IdID {
  static const String firstName = "Nama Depan";
  static const String lastName = "Nama Belakang";
  static const String phoneNumber = "Nomor Handphone";

  static const String connect = "Hubungkan";
  static const String connectorId = "ID Konektor";

  static const String electricCurrent = "Arus listrik";
  static const String connectorType = "Jenis konektor";
  static const String pricePerKwh = "Harga per kWh";
  static const String totalKwh = "Total kWh";
  static const String transactionNumber = "Nomor Transaksi - ";

  static const String payment = "Pembayaran";
  static const String reload = "Memuat Ulang";

  static const String tryAgain = "Coba Lagi";
  static const String errorTitleConnection = "Tidak Terhubung";
  static const String errorTitleDataNotFound = "Data Tidak Ditemukan";
  static const String errorTitleNotFound = "Tidak Ditemukan";
  static const String errorTitleSystemError = "Terjadi Kesalahan";
  static const String errorTitleServerError = "Terjadi Kesalahan";
  static const String errorSubtitleConnection = "Internet anda bermasalah. Harap cek koneksi internet atau Wi-Fi kamu lalu coba lagi.";
  static const String errorSubtitleDataNotFound = "Data yang anda minta tidak dapat ditemukan. Harap cek kembali lalu coba lagi.";
  static const String errorSubtitleNotFound = "Tindakan yang anda lakukan untuk sementara tidak ditemukan. harap hubungi kami.";
  static const String errorSubtitleSystemError = "Terjadi kesalahan pada sistem. harap coba lagi beberapa saat kemudian.";
  static const String errorSubtitleServerError = "Terjadi kesalahan pada server. harap coba lagi beberapa saat kemudian.";

  static const String noConnection = "Tidak ada koneksi";
  static const String noConnectionDescription = "Pastikan anda terhubung ke jaringan internet.";

  static const String loading = "Memuat";
  static const String pleaseWait = "Harap Tunggu";
  static const String downloading = "Mengunduh";
  static const String preparing = "Menyiapkan";
  static const String dataIsReady = "Data Telah Siap";
  static const String hourAbbreviation = "jam";
  static const String minuteAbbreviation = "menit";
  static const String developmentTitle = "Dalam Pengembangan";
  static const String developmentSubtitle = "Maaf, fitur ini tidak dapat diakses karena sedang dalam pengembangan. terima kasih.";
  static const String or = "atau";

  static const String apMesFailedRegister1 = "Maaf, Email telah terdaftar silahkan gunakan email yang lainnya.";
  static const String apMesFailedRegister2 = "Akun tidak terdaftar menggunakan google. silahkan masuk dengan email dan kata sandi.";
  static const String apMesFailedGenerateOtp1 = "Gagal mengirim otp.";
  static const String apMesFailedValidateOtp1 = "Maaf, Kode OTP yang anda masukkan telah kadaluarsa.";
  static const String apMesFailedValidateOtp2 = "Maaf, Kode OTP yang anda masukkan salah.";
  static const String apMesFailedLogin1 = "Maaf, Email atau Kata Sandi yang anda masukkan salah.";
  static const String apMesFailedProfile1 = "Maaf, Profil tidak ditemukan.";
  static const String apMesFailedChargerPoint1 =
      "Maaf, Tempat Pengisian yang anda minta tidak ditemukan. pastikan kode qr yang dipindai atau kode yang dimasukkan benar.";
  static const String apMesFailedStartCharging1 = "Maaf, Transaksi pembelian daya tidak ditemukan.";
  static const String apMesFailedStartCharging2 = "Maaf, Transaksi pembelian daya belum dibayar.";
  static const String apMesFailedStartCharging3 = "Maaf, Pastikan mesin pengisi daya aktif dan plug telah terhubung ke kendaraan anda.";
  static const String apMesFailedStartCharging4 = "Maaf, Gagal menghubungkan ke mesin pengisi daya.";
  static const String apMesFailedStartCharging5 = "Maaf, Mesin pengisi daya sedang digunakan.";
  static const String apMesFailedStopCharger1 = "Maaf, Transaksi pembelian daya tidak ditemukan.";
  static const String apMesFailedStopCharger2 = "Maaf, Sesi pengisi daya tidak valid.";
  static const String apMesFailedStopCharger3 = "Maaf, Gagal menghubungkan ke mesin pengisi daya.";
  static const String apMesFailedChangePassword1 = "Kata sandi lama yang anda masukkan salah.";
  static const String apMesFailedResetPassword1 = "Maaf, Gagal mengirim otp untuk reset password.";
  static const String apMesFailedResetPassword2 = "Maaf, Akun tidak ditemukan.";
  static const String apMesFailedResetPassword3 = "Maaf, Akun dari google tidak dapat direset password.";
  static const String apMesFailedResetPassword4 = "Maaf, Kode OTP yang anda masukkan salah.";
  static const String apMesFailedResetPassword5 = "Maaf, Kode OTP yang anda masukkan telah kadaluarsa.";

  static const String apMesSuccessGenerateOtp1 = "Otp telah dikirim ke email anda.";
  static const String apMesSuccessCheckOut1 = "Berhasil menyelesaikan transaksi.";
  static const String apMesSuccessStartCharging1 = "Memulai pengisian daya kendaraan anda.";
  static const String apMesSuccessChangePassword1 = "Kata sandi berhasil diubah.";
  static const String apMesSuccessUpdateProfile1 = "Profil berhasil diubah.";
  static const String apMesSuccessResetPassword1 = "Otp telah dikirim ke email anda.";

  static const String profile = "Profil";
  static const String settings = "Pengaturan";
  static const String logout = "Keluar";

  static const String perMessageCameraAndStorage =
      "Untuk dapat mengupload media dan file, silakan aktifkan izin kamera dan penyimpanan di pengaturan aplikasi. buka pengaturan aplikasi?";
  static const String perMessageCameraQR =
      "Untuk dapat melakukan Scan QR, silahkan aktifkan izin kamera di pengaturan aplikasi. buka pengaturan aplikasi?";
  static const String perMessageNotification =
      "Untuk dapat menerima Notifikasi terbaru seputar aplikasi, silahkan aktifkan izin notifikasi di pengaturan aplikasi. buka pengaturan aplikasi?";
  static String perCameraQRTitle = "Izinkan ${AppConfig.instance!.appName}\nMengakses Kamera";
  static const String perCameraQRDescription =
      "Dengan ini, Anda dapat melakukan pemindaian code qr. Anda dapat mengubahnya kapan saja di pengaturan perangkat.";
  static const String openSettings = "Buka Pengaturan";

  static const String filPicMessageAttachmentLimit = "Jumlah maksimum file yang dapat dicantumkan adalah ";

  static const String andNotificationTitle = "Notifikasi Sangat Penting";
  static const String andNotificationDescription = "Saluran ini digunakan untuk pemberitahuan penting.";

  static const String indonesian = "Indonesia";
  static const String english = "Inggris";

  static const String success = "Berhasil";
  static const String warning = "Peringatan";
  static const String sessionExpired = "Sesi Berakhir";
  static const String error = "Kesalahan";
  static const String notification = "Pemberitahuan";
  static const String close = "Tutup";
  static const String yes = "Iya";
  static const String no = "Tidak";
  static const String ok = "Oke";
  static const String notReady = "Belum siap";
  static const String startNow = "Mulai sekarang";
  static const String cancel = "Batal";
  static const String save = "Simpan";
  static const String modDesDelete = "Apakah Anda yakin ingin menghapus data ini?";
  static const String modDesSyncData = "SYNC akan mengirim data offline anda ke dalam server. Anda yakin ingin menyinkronkan data?";
  static const String modDesSuccess = "Telah berhasil dibuat.";
  static const String modDesSessionExpired = "Maaf, sesi anda telah berakhir. silahkan login kembali untuk menikmati aplikasi ini.";
  static const String modDesResetPasswordSuccess = "kata sandi berhasil diatur ulang. silahkan login menggunakan kata sandi yang baru.";

  static const String changeLanguageTitle = "Ubah Bahasa";
  static const String changeLanguageDescription = "Pilih bahasa untuk diterapkan di aplikasi ini.";
  static const String startChargingTitle = "Persiapan Pengisian Daya";
  static const String startChargingDescription =
      "Sebelum memulai pengisian daya, perhatikan mesin pengisian daya telah aktif dan pastikan konektor / colokan / steker pengisi daya telah terhubung dengan kendaraan anda.";

  static const String mustBeFilled = "Harus diisi";
  static const String mustChoose = "Harus memilih";
  static const String incorrectFormat = "Format salah";
  static const String newPasswordNotMatchEtc = "Kata Sandi Baru dan Konfirmasi Kata Sandi tidak sama";
  static const String cannotBeFilled0 = "Tidak dapat diisi 0";
  static const String exceededMax = "Melebihi maks";
  static const String containsAtLeastNCharacters = "Minimal berisi 6 karakter";
  static const String minimumPurchasesMessage = "Minimum pembelian yang diperlukan adalah Rp10.000,00";

  static const String messageExceptionConnection = "Tidak dapat terhubung dengan server.";
  static const String messageExceptionConnectTimeOut = "Gagal terhubung dengan server karena Time Out.";
  static const String messageExceptionBadCertificate = "Gagal terhubung dengan server karena Sertifikat SSL.";
  static const String messageExceptionSendTimeOut = "Gagal mengirim data ke server karena Time Out.";
  static const String messageExceptionReceiveTimeOut = "Gagal mendapatkan data dari server karena Time Out.";
  static const String messageExceptionCancel = "Permintaan ke server dibatalkan.";
  static const String messageExceptionResponse = "Mendapatkan data response dari server.";
  static const String messageExceptionOther = "Terdapat kesalahan lainnya saat mencoba melakukan permintaan ke server.";
  static const String messageExceptionUndefined = "Terjadi kesalahan internal pada sistem";

  static const String messageScannerExceptionInternalSystem = "Terjadi kesalahan pada sistem";
  static const String messageScannerExceptionUndefined = "Terjadi kesalahan";
  static const String messageScannerExceptionUnsupported = "Pemindaian tidak didukung pada perangkat ini";

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
