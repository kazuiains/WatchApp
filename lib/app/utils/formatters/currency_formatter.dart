import 'package:intl/intl.dart';
import 'package:watch_app/app/config/app_strings.dart';
import 'package:watch_app/app/types/language_type.dart';

class CurrencyFormatter {
  ///to convert numbers into rupiah
  static String convertToIdr(
    dynamic number, {
    int decimalDigit = 2,
    String? symbol,
  }) {
    NumberFormat currencyFormatter = NumberFormat.currency(
      locale: LanguageType.indonesia.language,
      symbol: symbol ?? AppStrings.currencyIndonesiaMoney,
      decimalDigits: decimalDigit,
    );
    return currencyFormatter.format(number ?? 0);
  }

  ///to convert rupiah into numbers
  static double convertToDouble(
    String text,
  ) {
    text = text.replaceAll(
      AppStrings.currencyIndonesiaMoney,
      "",
    );
    var splitText = text.split(',');
    String money = splitText.first;
    String moneyNumber = money.replaceAll(
      ".",
      "",
    );
    return double.parse(moneyNumber);
  }
}
