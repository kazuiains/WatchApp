import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:watch_app/app/config/app_colors.dart';
import 'package:watch_app/app/config/app_styles.dart';
import 'package:watch_app/app/utils/helper/keyboard_type_helper.dart';
import 'package:watch_app/app/utils/validators/form_validator.dart';
import 'package:watch_app/presentation/ui/widgets/base/containment/base_spacer_view.dart';
import 'package:watch_app/presentation/ui/widgets/base/text/base_label_view.dart';

class BaseTextFieldsView {
  static Widget basic({
    String? label,
    TextEditingController? controller,
    bool? isMandatory,
    bool? isEnabled,
    bool? isReadOnly,
    String? hint,
    TextInputAction? textInputAction,
    TextInputType? keyboardType,
    int? minLines,
    int? maxLines,
    int? maxLength,
    FormFieldValidator<String>? validator,
    Widget? suffixIcon,
    Widget? prefixIcon,
    FocusNode? focusNode,
    ValueChanged<String>? onChanged,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onFieldSubmitted,
    AutovalidateMode? autoValidateMode,
    TextStyle? labelStyle,
    TextStyle? hintStyle,
    TextStyle? inputStyle,
    double? borderSize,
    Color? borderColor,
    Color? enableBorderColor,
    Color? errorBorderColor,
    Color? focusBorderColor,
    Color? disableBorderColor,
    Color? fillColor,
    Color? hintColor,
    EdgeInsetsGeometry? contentPadding,
    bool? obscureText,
    bool? autofocus,
    Function()? onTap,
    Function(PointerDownEvent)? onTapOutside,
    Function(String?)? onSaved,
    Widget Function(BuildContext, EditableTextState)? contextMenuBuilder,
    double? labelMarginTop,
    double? labelMarginBottom,
    double? labelPaddingLeft,
    double? labelPaddingRight,
    EdgeInsetsGeometry? labelPadding,
    bool? useLabelPadding,
    TextAlign textAlign = TextAlign.start,
    String? counterText,
    List<TextInputFormatter>? inputFormatters,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (label != null) ...{
          BaseLabelView.fieldLabel(
            label: label,
            labelStyle: labelStyle,
            marginTop: labelMarginTop,
            marginBottom: labelMarginBottom,
            paddingLeft: labelPaddingLeft,
            paddingRight: labelPaddingRight,
            padding: labelPadding,
            usePadding: useLabelPadding,
          ),
        },
        TextFormField(
          onTap: isEnabled ?? true ? onTap : null,
          onTapOutside: onTapOutside,
          onSaved: onSaved,
          contextMenuBuilder: contextMenuBuilder,
          focusNode: focusNode,
          controller: controller,
          textAlign: textAlign,
          decoration: InputStyles.fieldBasic(
            counterText: counterText,
            contentPadding: contentPadding,
            borderSize: borderSize ?? 4,
            enableBorderColor: enableBorderColor,
            errorBorderColor: errorBorderColor,
            focusBorderColor: focusBorderColor,
            disableBorderColor: disableBorderColor,
            fillColor: fillColor,
            hintColor: hintColor,
            hintStyle: hintStyle,
            hint: hint,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
          ),
          readOnly: isReadOnly ?? false,
          maxLines: maxLines,
          minLines: minLines,
          maxLength: maxLength,
          enabled: isEnabled,
          textInputAction: textInputAction ?? TextInputAction.next,
          keyboardType: keyboardType,
          autovalidateMode:
              autoValidateMode ?? AutovalidateMode.onUserInteraction,
          validator:
              isMandatory ?? true ? validator ?? FormValidator.required : null,
          onChanged: onChanged,
          onEditingComplete: onEditingComplete,
          onFieldSubmitted: onFieldSubmitted,
          style: inputStyle ?? TextStyles.basicTextFieldText,
          obscureText: obscureText ?? false,
          autofocus: autofocus ?? false,
          inputFormatters: inputFormatters,
        ),
      ],
    );
  }

  static Widget basicFrame({
    String? label,
    String? hint,
    TextEditingController? controller,
    bool? isMandatory,
    bool? isEnabled,
    bool? isReadOnly,
    TextInputAction? textInputAction,
    TextInputType? keyboardType,
    int? minLines = 1,
    int? maxLines = 1,
    int? maxLength,
    FormFieldValidator<String>? validator,
    Widget? suffixIcon,
    Widget? prefixIcon,
    Icon? prefixFileIcon,
    FocusNode? focusNode,
    ValueChanged<String>? onChanged,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onFieldSubmitted,
    AutovalidateMode? autoValidateMode,
    TextStyle? labelStyle,
    TextStyle? hintStyle,
    TextStyle? inputStyle,
    double? borderSize,
    Color? borderColor,
    Color? enableBorderColor,
    Color? errorBorderColor,
    Color? focusBorderColor,
    Color? disableBorderColor,
    Color? fillColor,
    Color? labelColor,
    Color? hintColor,
    EdgeInsetsGeometry? contentPadding,
    bool? obscureText,
    bool? autofocus,
    TextAlign textAlign = TextAlign.start,
    void Function(String?)? onSaved,
    String? counterText,
    Function()? onTap,
    Function(PointerDownEvent)? onTapOutside,
    List<TextInputFormatter>? inputFormatters,
    double? fontSize,
  }) {
    return TextFormField(
      focusNode: focusNode,
      controller: controller,
      textAlign: textAlign,
      decoration: InputStyles.fieldBasic(
        counterText: counterText,
        contentPadding: contentPadding,
        borderSize: borderSize ?? 4,
        enableBorderColor: enableBorderColor,
        errorBorderColor: errorBorderColor,
        focusBorderColor: focusBorderColor,
        disableBorderColor: disableBorderColor,
        fillColor: fillColor,
        labelColor: labelColor,
        hintColor: hintColor,
        labelStyle: labelStyle,
        hintStyle: hintStyle,
        label: label,
        hint: hint,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
      readOnly: isReadOnly ?? false,
      maxLines: maxLines,
      minLines: minLines,
      maxLength: maxLength,
      enabled: isEnabled ?? true,
      textInputAction: textInputAction ?? TextInputAction.next,
      keyboardType: keyboardType,
      autovalidateMode: autoValidateMode ?? AutovalidateMode.onUserInteraction,
      validator:
          isMandatory ?? true ? validator ?? FormValidator.required : null,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onFieldSubmitted: onFieldSubmitted,
      onSaved: onSaved,
      style: inputStyle ??
          TextStyles.basicFrameTextFieldText(
            fontSize: label != null ? fontSize ?? 16 : fontSize ?? 14,
          ),
      obscureText: obscureText ?? false,
      autofocus: autofocus ?? false,
      onTap: isEnabled ?? true ? onTap : null,
      onTapOutside: onTapOutside,
      inputFormatters: inputFormatters,
    );
  }

  static Widget basicArea({
    String? label,
    TextEditingController? controller,
    bool? isMandatory,
    bool? isEnabled,
    bool? isReadOnly,
    String? hint,
    TextInputAction? textInputAction,
    TextInputType? keyboardType,
    int? minLines,
    int? maxLines,
    FormFieldValidator<String>? validator,
    Widget? suffixIcon,
    Widget? prefixIcon,
    FocusNode? focusNode,
    ValueChanged<String>? onChanged,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onFieldSubmitted,
    AutovalidateMode? autoValidateMode,
    TextStyle? labelStyle,
    TextStyle? hintStyle,
    TextStyle? inputStyle,
    double? borderSize,
    Color? borderColor,
    Color? enableBorderColor,
    Color? errorBorderColor,
    Color? focusBorderColor,
    Color? disableBorderColor,
    Color? fillColor,
    Color? hintColor,
    EdgeInsetsGeometry? contentPadding,
    bool? obscureText,
    bool? autofocus,
    Function()? onTap,
    Function(PointerDownEvent)? onTapOutside,
    Function(String?)? onSaved,
    Widget Function(BuildContext, EditableTextState)? contextMenuBuilder,
  }) {
    return basic(
      label: label,
      controller: controller,
      isMandatory: isMandatory,
      isEnabled: isEnabled,
      isReadOnly: isReadOnly,
      hint: hint,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      minLines: minLines ?? 4,
      maxLines: maxLines ?? 4,
      validator: validator,
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
      focusNode: focusNode,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onFieldSubmitted: onFieldSubmitted,
      autoValidateMode: autoValidateMode,
      labelStyle: labelStyle,
      hintStyle: hintStyle,
      inputStyle: inputStyle,
      borderSize: borderSize,
      borderColor: borderColor,
      enableBorderColor: enableBorderColor,
      errorBorderColor: errorBorderColor,
      focusBorderColor: focusBorderColor,
      disableBorderColor: disableBorderColor,
      fillColor: fillColor,
      hintColor: hintColor,
      contentPadding: contentPadding,
      obscureText: obscureText,
      autofocus: autofocus,
      onTap: onTap,
      onTapOutside: onTapOutside,
      onSaved: onSaved,
      contextMenuBuilder: contextMenuBuilder,
    );
  }

  static Widget basicOnClickOnly({
    String? label,
    TextEditingController? controller,
    bool? isMandatory,
    bool? isEnabled,
    bool? isReadOnly,
    String? hint,
    TextInputAction? textInputAction,
    TextInputType? keyboardType,
    int? minLines,
    int? maxLines,
    FormFieldValidator<String>? validator,
    Widget? suffixIcon,
    Widget? prefixIcon,
    FocusNode? focusNode,
    ValueChanged<String>? onChanged,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onFieldSubmitted,
    AutovalidateMode? autoValidateMode,
    TextStyle? labelStyle,
    TextStyle? hintStyle,
    TextStyle? inputStyle,
    double? borderSize,
    Color? borderColor,
    Color? enableBorderColor,
    Color? errorBorderColor,
    Color? focusBorderColor,
    Color? disableBorderColor,
    Color? fillColor,
    Color? hintColor,
    EdgeInsetsGeometry? contentPadding,
    bool? obscureText,
    bool? autofocus,
    required Function()? onTap,
    Function(PointerDownEvent)? onTapOutside,
    Function(String?)? onSaved,
    Widget Function(BuildContext, EditableTextState)? contextMenuBuilder,
  }) {
    return basic(
      label: label,
      controller: controller,
      isMandatory: isMandatory,
      isEnabled: isEnabled,
      isReadOnly: true,
      hint: hint,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      minLines: minLines,
      maxLines: maxLines,
      validator: validator,
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
      focusNode: focusNode,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onFieldSubmitted: onFieldSubmitted,
      autoValidateMode: autoValidateMode,
      labelStyle: labelStyle,
      hintStyle: hintStyle,
      inputStyle: inputStyle,
      borderSize: borderSize,
      borderColor: borderColor,
      enableBorderColor: enableBorderColor,
      errorBorderColor: errorBorderColor,
      focusBorderColor: focusBorderColor,
      disableBorderColor: disableBorderColor,
      fillColor: fillColor,
      hintColor: hintColor,
      contentPadding: contentPadding,
      obscureText: obscureText,
      autofocus: autofocus,
      onTap: onTap,
      onTapOutside: onTapOutside,
      onSaved: onSaved,
      contextMenuBuilder: contextMenuBuilder,
    );
  }

  static Widget basicFrameOnClickOnly({
    String? label,
    TextEditingController? controller,
    bool? isMandatory,
    bool? isEnabled,
    bool? isReadOnly,
    String? hint,
    TextInputAction? textInputAction,
    TextInputType? keyboardType,
    int? minLines,
    int? maxLines,
    FormFieldValidator<String>? validator,
    Widget? suffixIcon,
    Widget? prefixIcon,
    FocusNode? focusNode,
    ValueChanged<String>? onChanged,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onFieldSubmitted,
    AutovalidateMode? autoValidateMode,
    TextStyle? labelStyle,
    TextStyle? hintStyle,
    TextStyle? inputStyle,
    double? borderSize,
    Color? borderColor,
    Color? enableBorderColor,
    Color? errorBorderColor,
    Color? focusBorderColor,
    Color? disableBorderColor,
    Color? fillColor,
    Color? hintColor,
    EdgeInsetsGeometry? contentPadding,
    bool? obscureText,
    bool? autofocus,
    required Function()? onTap,
    Function(PointerDownEvent)? onTapOutside,
    Function(String?)? onSaved,
  }) {
    return basicFrame(
      label: label,
      controller: controller,
      isMandatory: isMandatory,
      isEnabled: isEnabled,
      isReadOnly: true,
      hint: hint,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      minLines: minLines,
      maxLines: maxLines,
      validator: validator,
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
      focusNode: focusNode,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onFieldSubmitted: onFieldSubmitted,
      autoValidateMode: autoValidateMode,
      labelStyle: labelStyle,
      hintStyle: hintStyle,
      inputStyle: inputStyle,
      borderSize: borderSize,
      borderColor: borderColor,
      enableBorderColor: enableBorderColor,
      errorBorderColor: errorBorderColor,
      focusBorderColor: focusBorderColor,
      disableBorderColor: disableBorderColor,
      fillColor: fillColor,
      hintColor: hintColor,
      contentPadding: contentPadding,
      obscureText: obscureText,
      autofocus: autofocus,
      onTap: onTap,
      onTapOutside: onTapOutside,
      onSaved: onSaved,
    );
  }

  static Widget circleIcon({
    String? label,
    TextEditingController? controller,
    bool isMandatory = true,
    bool isEnabled = true,
    bool isReadOnly = false,
    String? hint,
    TextInputAction? textInputAction,
    TextInputType? keyboardType,
    int? minLines = 1,
    int? maxLines = 1,
    int? maxLength,
    FormFieldValidator<String>? validator,
    Widget? suffixIcon,
    Widget? prefixIcon,
    Icon? prefixFileIcon,
    String prefixFileAsset = "",
    FocusNode? focusNode,
    ValueChanged<String>? onChanged,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onFieldSubmitted,
    AutovalidateMode? autoValidateMode,
    TextStyle? labelStyle,
    TextStyle? hintStyle,
    TextStyle? inputStyle,
    double borderSize = 50,
    Color? borderColor,
    Color? enableBorderColor,
    Color? errorBorderColor,
    Color? focusBorderColor,
    Color? disableBorderColor,
    Color? fillColor,
    Color? hintColor,
    EdgeInsetsGeometry? contentPadding,
    bool obscureText = false,
    bool autofocus = false,
    double? labelMarginTop,
    double? labelMarginBottom,
    double? labelPaddingLeft,
    double? labelPaddingRight,
    EdgeInsetsGeometry? labelPadding,
    bool? useLabelPadding,
    TextAlign textAlign = TextAlign.start,
    void Function(String?)? onSaved,
    String? counterText,
  }) {
    return ThemeStyles.textFieldCircleIcon(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (label != null) ...{
            BaseLabelView.fieldLabel(
              label: label,
              labelStyle: labelStyle,
              marginTop: labelMarginTop,
              marginBottom: labelMarginBottom,
              paddingLeft: labelPaddingLeft,
              paddingRight: labelPaddingRight,
              padding: labelPadding,
              usePadding: useLabelPadding,
            ),
          },
          TextFormField(
            focusNode: focusNode,
            controller: controller,
            textAlign: textAlign,
            decoration: InputDecoration(
              counterText: counterText,
              contentPadding:
                  contentPadding ?? BaseSpacerView.textFieldContentPadding,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  borderSize,
                ),
                borderSide: BorderSide(
                  color: enableBorderColor ??
                      AppColors.defaultTextFieldCircleIconEnableBorderColor,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  borderSize,
                ),
                borderSide: BorderSide(
                  color: errorBorderColor ??
                      AppColors.defaultTextFieldCircleIconErrorBorderColor,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  borderSize,
                ),
                borderSide: BorderSide(
                  color: errorBorderColor ??
                      AppColors.defaultTextFieldCircleIconErrorBorderColor,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  borderSize,
                ),
                borderSide: BorderSide(
                  color: disableBorderColor ??
                      AppColors.defaultTextFieldCircleIconDisableBorderColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  borderSize,
                ),
                borderSide: BorderSide(
                  color: focusBorderColor ??
                      AppColors.defaultTextFieldCircleIconFocusBorderColor,
                ),
              ),
              isDense: true,
              fillColor:
                  fillColor ?? AppColors.defaultTextFieldCircleIconFillColor,
              filled: true,
              hintText: hint,
              hintStyle: hintStyle ??
                  TextStyle(
                    color: hintColor ??
                        AppColors.defaultTextFieldCircleIconHintColor,
                  ),
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon ??
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 10,
                    ),
                    child: Card(
                      color: Colors.white,
                      elevation: 0,
                      margin: const EdgeInsets.all(0),
                      shape: ShapeStyles.rounded(
                        radiusSize: 50,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: prefixFileIcon ??
                            Image.asset(
                              prefixFileAsset,
                              height: 8,
                              width: 8,
                            ),
                      ),
                    ),
                  ),
              prefixIconConstraints: const BoxConstraints(
                minWidth: 60,
                minHeight: 50,
              ),
            ),
            readOnly: isReadOnly,
            maxLines: maxLines,
            minLines: minLines,
            maxLength: maxLength,
            enabled: isEnabled,
            textInputAction: textInputAction ?? TextInputAction.next,
            keyboardType: keyboardType,
            autovalidateMode:
                autoValidateMode ?? AutovalidateMode.onUserInteraction,
            validator: isMandatory ? validator ?? FormValidator.required : null,
            onChanged: onChanged,
            onEditingComplete: onEditingComplete,
            onFieldSubmitted: onFieldSubmitted,
            onSaved: onSaved,
            style: inputStyle ?? TextStyles.circleIconTextFieldText,
            obscureText: obscureText,
            autofocus: autofocus,
          ),
        ],
      ),
    );
  }

  static Widget capsuleIcon({
    String? label,
    String? hint,
    TextEditingController? controller,
    bool isMandatory = true,
    bool isEnabled = true,
    bool isReadOnly = false,
    TextInputAction? textInputAction,
    TextInputType? keyboardType,
    int? minLines = 1,
    int? maxLines = 1,
    int? maxLength,
    FormFieldValidator<String>? validator,
    Widget? suffixIcon,
    Widget? prefixIcon,
    Icon? prefixFileIcon,
    String prefixFileAsset = "",
    FocusNode? focusNode,
    ValueChanged<String>? onChanged,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onFieldSubmitted,
    AutovalidateMode? autoValidateMode,
    TextStyle? labelStyle,
    TextStyle? hintStyle,
    TextStyle? inputStyle,
    double borderSize = 50,
    Color? borderColor,
    Color? enableBorderColor,
    Color? errorBorderColor,
    Color? focusBorderColor,
    Color? disableBorderColor,
    Color? fillColor,
    Color? labelColor,
    EdgeInsetsGeometry? contentPadding,
    bool obscureText = false,
    bool autofocus = false,
    TextAlign textAlign = TextAlign.start,
    void Function(String?)? onSaved,
    String? counterText,
  }) {
    return TextFormField(
      focusNode: focusNode,
      controller: controller,
      textAlign: textAlign,
      decoration: InputDecoration(
        counterText: counterText,
        contentPadding:
            contentPadding ?? BaseSpacerView.textFieldContentPadding,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            borderSize,
          ),
          borderSide: BorderSide(
            color: enableBorderColor ??
                AppColors.defaultTextFieldCapsuleIconEnableBorderColor,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            borderSize,
          ),
          borderSide: BorderSide(
            color: errorBorderColor ??
                AppColors.defaultTextFieldCapsuleIconErrorBorderColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            borderSize,
          ),
          borderSide: BorderSide(
            color: errorBorderColor ??
                AppColors.defaultTextFieldCapsuleIconErrorBorderColor,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            borderSize,
          ),
          borderSide: BorderSide(
            color: disableBorderColor ??
                AppColors.defaultTextFieldCapsuleIconDisableBorderColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            borderSize,
          ),
          borderSide: BorderSide(
            color: focusBorderColor ??
                AppColors.defaultTextFieldCapsuleIconFocusBorderColor,
          ),
        ),
        isDense: true,
        fillColor: fillColor ?? AppColors.defaultTextFieldCapsuleIconFillColor,
        filled: true,
        labelText: label,
        labelStyle: labelStyle ??
            TextStyles.capsuleIconTextFieldLabelText(
              color: labelColor,
            ),
        hintText: hint,
        hintStyle: hintStyle,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon ??
            Container(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                prefixFileAsset,
                height: 1,
                width: 1,
              ),
            ),
      ),
      readOnly: isReadOnly,
      maxLines: maxLines,
      minLines: minLines,
      maxLength: maxLength,
      enabled: isEnabled,
      textInputAction: textInputAction ?? TextInputAction.next,
      keyboardType: keyboardType,
      autovalidateMode: autoValidateMode ?? AutovalidateMode.onUserInteraction,
      validator: isMandatory ? validator ?? FormValidator.required : null,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onFieldSubmitted: onFieldSubmitted,
      onSaved: onSaved,
      style: inputStyle ?? TextStyles.capsuleIconTextFieldText,
      obscureText: obscureText,
      autofocus: autofocus,
    );
  }

  static Widget circleOtp({
    TextEditingController? controller,
    bool? isEnabled,
    bool? isReadOnly,
    FocusNode? focusNode,
    required FocusNode rawKeyboardFocusNode,
    ValueChanged<String>? onChanged,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onFieldSubmitted,
    AutovalidateMode? autoValidateMode,
    Function()? onTap,
    Function(PointerDownEvent)? onTapOutside,
    Function(String?)? onSaved,
    void Function(KeyEvent)? onKey,
    Function()? onBackSpace,
    TextInputAction? textInputAction,
  }) {
    return KeyboardListener(
      focusNode: rawKeyboardFocusNode,
      onKeyEvent: onKey ??
          (value) {
            if (value.logicalKey == LogicalKeyboardKey.backspace) {
              if (onBackSpace != null) {
                onBackSpace();
              }
            }
          },
      child: SizedBox(
        width: 40,
        child: basic(
          autofocus: true,
          controller: controller,
          isEnabled: isEnabled,
          isReadOnly: isReadOnly,
          focusNode: focusNode,
          contentPadding: const EdgeInsets.all(6),
          counterText: "",
          isMandatory: false,
          maxLength: 1,
          maxLines: 1,
          borderSize: 50,
          textAlign: TextAlign.center,
          keyboardType: KeyboardTypeHelper.keyNumber(),
          inputStyle: TextStyles.circleOtpTextFieldText,
          textInputAction: textInputAction ?? TextInputAction.next,
          onChanged: onChanged,
          onEditingComplete: onEditingComplete,
          onFieldSubmitted: onFieldSubmitted,
          autoValidateMode: autoValidateMode,
          onTap: onTap,
          onTapOutside: onTapOutside,
          onSaved: onSaved,
        ),
      ),
    );
  }
}
