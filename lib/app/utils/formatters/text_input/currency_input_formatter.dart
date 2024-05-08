import 'package:flutter/services.dart';
import 'package:watch_app/app/utils/formatters/currency_formatter.dart';

class CurrencyInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.selection.baseOffset == 0) {
      return newValue.copyWith(
        text: "",
      );
    }

    String text = newValue.text.toString();
    double value = CurrencyFormatter.convertToDouble(text);
    String newText = CurrencyFormatter.convertToIdr(
      value,
      symbol: "",
    );

    return newValue.copyWith(
      text: newText,
      selection: TextSelection.collapsed(
        offset: newText.length - 3,
      ),
    );
  }
}
