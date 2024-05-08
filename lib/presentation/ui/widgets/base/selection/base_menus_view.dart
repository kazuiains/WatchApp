import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:watch_app/app/config/app_colors.dart';
import 'package:watch_app/app/config/app_strings.dart';
import 'package:watch_app/app/config/styles/text_styles.dart';
import 'package:watch_app/app/config/styles/theme_styles.dart';
import 'package:watch_app/app/utils/validators/form_validator.dart';
import 'package:watch_app/domain/entities/widget/menu_data.dart';
import 'package:watch_app/presentation/ui/widgets/base/text/base_label_view.dart';

enum MenusType {
  menu,
  popup,
  bottomPopup,
  bottomSheet,
}

class BaseMenusView {
  /// single dropdown provided 3rd party and customized for our needs.
  /// select only 1 data only.
  static Widget basicSingleTP({
    Key? key,
    String? label,
    String? hint,
    String? searchHint,
    TextStyle? labelStyle,
    TextStyle? hintStyle,
    TextStyle? inputStyle,
    Color? borderColor,
    Color? enableBorderColor,
    Color? errorBorderColor,
    Color? focusBorderColor,
    Color? disableBorderColor,
    Color? fillColor,
    Color? hintColor,
    Widget? prefixIcon,
    Widget? suffixIcon,
    Widget? searchPrefixIcon,
    Widget? searchSuffixIcon,
    EdgeInsetsGeometry? contentPadding,
    double borderSize = 4,
    bool isMandatory = true,
    bool isEnable = true,
    bool showSearchBox = false,
    bool showSelectedItems = true,
    MenusType type = MenusType.menu,
    FormFieldValidator<MenuData>? validator,
    List<MenuData> listItem = const [],
    MenuData? value,
    DropdownSearchItemAsString<MenuData>? itemAsString,
    DropdownSearchCompareFn<MenuData>? compareFn,
    DropdownSearchOnFind<MenuData>? asyncItems,
    DropdownSearchPopupItemBuilder<MenuData>? itemBuilder,
    required Function(MenuData?) callback,
    Widget Function(BuildContext, MenuData?)? dropdownBuilder,
    double? labelMarginTop,
    double? labelMarginBottom,
    double? labelPaddingLeft,
    double? labelPaddingRight,
    EdgeInsetsGeometry? labelPadding,
    bool? useLabelPadding,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
        AbsorbPointer(
          absorbing: !isEnable,
          child: ThemeStyles.menuTp(
            contentPadding: contentPadding,
            borderSize: borderSize,
            enableBorderColor: enableBorderColor,
            errorBorderColor: errorBorderColor,
            focusBorderColor: focusBorderColor,
            disableBorderColor: disableBorderColor,
            fillColor: fillColor,
            hintColor: hintColor,
            hintStyle: hintStyle,
            inputStyle: inputStyle,
            child: DropdownSearch<MenuData>(
              key: key,
              items: listItem,
              asyncItems: asyncItems,
              dropdownDecoratorProps: DropDownDecoratorProps(
                dropdownSearchDecoration: InputDecoration(
                  hintText: hint,
                  suffixIcon: suffixIcon,
                  prefixIcon: prefixIcon,
                ),
              ),
              dropdownButtonProps: suffixIcon != null
                  ? DropdownButtonProps(
                      icon: suffixIcon,
                    )
                  : const DropdownButtonProps(),
              dropdownBuilder: dropdownBuilder ??
                  (context, selectedItem) {
                    if (selectedItem != null) {
                      return Text(
                        selectedItem.name ?? "",
                        style: inputStyle ?? TextStyles.basicTextFieldText,
                      );
                    } else {
                      return Text(
                        hint ?? "",
                        style: hintStyle ??
                            TextStyles.basicTextFieldHintText(
                              color: hintColor,
                            ),
                      );
                    }
                  },
              itemAsString: itemAsString ??
                  (item) {
                    return item.name != null
                        ? item.name!
                        : AppStrings.defaultNullValue;
                  },
              compareFn: compareFn ?? (item1, item2) => item1.id == item2.id,
              popupProps: _basicSinglePopupProps<MenuData>(
                type: type,
                showSearchBox: showSearchBox,
                showSelectedItems: showSelectedItems,
                itemBuilder: itemBuilder,
                searchHint: searchHint,
                searchPrefixIcon: searchPrefixIcon,
                searchSuffixIcon: searchSuffixIcon,
              ),
              selectedItem: value,
              onChanged: callback,
              validator: isMandatory
                  ? validator ?? (s) => FormValidator.required(s.toString())
                  : null,
              autoValidateMode: AutovalidateMode.onUserInteraction,
            ),
          ),
        ),
      ],
    );
  }

  static Widget basicFrameSingleTP({
    Key? key,
    String? label,
    String? searchHint,
    Color? borderColor,
    Color? fillColor,
    Color? labelColor,
    Color? enableBorderColor,
    Color? errorBorderColor,
    Color? focusBorderColor,
    Color? disableBorderColor,
    Color? hintColor,
    String prefixFileAsset = "",
    TextStyle? hintStyle,
    TextStyle? labelStyle,
    TextStyle? inputStyle,
    Widget? prefixIcon,
    Widget? suffixIcon,
    Widget? searchPrefixIcon,
    Widget? searchSuffixIcon,
    EdgeInsetsGeometry? contentPadding,
    double borderSize = 4,
    bool isMandatory = true,
    bool isEnable = true,
    bool showSearchBox = false,
    bool showSelectedItems = true,
    MenusType type = MenusType.menu,
    FormFieldValidator<MenuData>? validator,
    List<MenuData> listItem = const [],
    MenuData? value,
    DropdownSearchItemAsString<MenuData>? itemAsString,
    DropdownSearchCompareFn<MenuData>? compareFn,
    DropdownSearchOnFind<MenuData>? asyncItems,
    DropdownSearchPopupItemBuilder<MenuData>? itemBuilder,
    required Function(MenuData?) callback,
    Widget Function(BuildContext, MenuData?)? dropdownBuilder,
    double? fontSize,
  }) {
    return AbsorbPointer(
      absorbing: !isEnable,
      child: ThemeStyles.menuTp(
        contentPadding: contentPadding,
        borderSize: borderSize,
        enableBorderColor: enableBorderColor,
        errorBorderColor: errorBorderColor,
        focusBorderColor: focusBorderColor,
        disableBorderColor: disableBorderColor,
        fillColor: fillColor,
        hintColor: hintColor,
        hintStyle: hintStyle,
        labelStyle: labelStyle ??
            TextStyles.basicTextFieldLabelText(
              color: labelColor,
            ),
        inputStyle: inputStyle ??
            TextStyles.basicFrameTextFieldText(
              fontSize: label != null ? fontSize ?? 16 : fontSize ?? 14,
            ),
        child: DropdownSearch<MenuData>(
          key: key,
          items: listItem,
          asyncItems: asyncItems,
          dropdownDecoratorProps: DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
              labelText: label,
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
            ),
          ),
          dropdownButtonProps: suffixIcon != null
              ? DropdownButtonProps(
                  icon: suffixIcon,
                )
              : const DropdownButtonProps(),
          dropdownBuilder: value != null
              ? dropdownBuilder ??
                  (context, selectedItem) {
                    return Text(
                      selectedItem?.name ?? "",
                      style: TextStyles.capsuleIconTextFieldText,
                    );
                  }
              : dropdownBuilder,
          itemAsString: itemAsString ??
              (item) {
                return item.name != null
                    ? item.name!
                    : AppStrings.defaultNullValue;
              },
          compareFn: compareFn ?? (item1, item2) => item1.id == item2.id,
          popupProps: _basicSinglePopupProps<MenuData>(
            type: type,
            showSearchBox: showSearchBox,
            showSelectedItems: showSelectedItems,
            itemBuilder: itemBuilder,
            searchHint: searchHint,
            searchPrefixIcon: searchPrefixIcon,
            searchSuffixIcon: searchSuffixIcon,
          ),
          selectedItem: value,
          onChanged: callback,
          validator: isMandatory
              ? validator ?? (s) => FormValidator.required(s.toString())
              : null,
          autoValidateMode: AutovalidateMode.onUserInteraction,
        ),
      ),
    );
  }

  static Widget capsuleSingleTP({
    Key? key,
    String? label,
    String? searchHint,
    Color? borderColor,
    Color? fillColor,
    Color? labelColor,
    String prefixFileAsset = "",
    Widget? prefixIcon,
    Widget? suffixIcon,
    Widget? searchPrefixIcon,
    Widget? searchSuffixIcon,
    EdgeInsetsGeometry? contentPadding,
    double borderSize = 50,
    bool isMandatory = true,
    bool isEnable = true,
    bool showSearchBox = false,
    bool showSelectedItems = true,
    MenusType type = MenusType.menu,
    FormFieldValidator<MenuData>? validator,
    List<MenuData> listItem = const [],
    MenuData? value,
    DropdownSearchItemAsString<MenuData>? itemAsString,
    DropdownSearchCompareFn<MenuData>? compareFn,
    DropdownSearchOnFind<MenuData>? asyncItems,
    DropdownSearchPopupItemBuilder<MenuData>? itemBuilder,
    required Function(MenuData?) callback,
    Widget Function(BuildContext, MenuData?)? dropdownBuilder,
  }) {
    return AbsorbPointer(
      absorbing: !isEnable,
      child: ThemeStyles.menuTp(
        contentPadding: contentPadding,
        borderSize: borderSize,
        enableBorderColor:
            AppColors.defaultTextFieldCapsuleIconEnableBorderColor,
        focusedErrorBorderColor:
            AppColors.defaultTextFieldCapsuleIconErrorBorderColor,
        errorBorderColor: AppColors.defaultTextFieldCapsuleIconErrorBorderColor,
        disableBorderColor:
            AppColors.defaultTextFieldCapsuleIconDisableBorderColor,
        focusBorderColor: AppColors.defaultTextFieldCapsuleIconFocusBorderColor,
        fillColor: fillColor,
        labelStyle: TextStyles.capsuleIconTextFieldLabelText(
          color: labelColor,
        ),
        inputStyle: TextStyles.capsuleIconTextFieldText,
        child: DropdownSearch<MenuData>(
          key: key,
          items: listItem,
          asyncItems: asyncItems,
          dropdownDecoratorProps: DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
              labelText: label,
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
          ),
          dropdownButtonProps: suffixIcon != null
              ? DropdownButtonProps(
                  icon: suffixIcon,
                )
              : const DropdownButtonProps(),
          dropdownBuilder: value != null
              ? dropdownBuilder ??
                  (context, selectedItem) {
                    return Text(
                      selectedItem?.name ?? "",
                      style: TextStyles.capsuleIconTextFieldText,
                    );
                  }
              : dropdownBuilder,
          itemAsString: itemAsString ??
              (item) {
                return item.name != null
                    ? item.name!
                    : AppStrings.defaultNullValue;
              },
          compareFn: compareFn ?? (item1, item2) => item1.id == item2.id,
          popupProps: _basicSinglePopupProps<MenuData>(
            type: type,
            showSearchBox: showSearchBox,
            showSelectedItems: showSelectedItems,
            itemBuilder: itemBuilder,
            searchHint: searchHint,
            searchPrefixIcon: searchPrefixIcon,
            searchSuffixIcon: searchSuffixIcon,
          ),
          selectedItem: value,
          onChanged: callback,
          validator: isMandatory
              ? validator ?? (s) => FormValidator.required(s.toString())
              : null,
          autoValidateMode: AutovalidateMode.onUserInteraction,
        ),
      ),
    );
  }

  static _basicSinglePopupProps<T>({
    required MenusType type,
    required bool showSelectedItems,
    required bool showSearchBox,
    DropdownSearchPopupItemBuilder<T>? itemBuilder,
    String? searchHint,
    Widget? searchPrefixIcon,
    Widget? searchSuffixIcon,
  }) {
    switch (type) {
      case MenusType.menu:
        return PopupProps<T>.menu(
          showSelectedItems: showSelectedItems,
          showSearchBox: showSearchBox,
          itemBuilder: itemBuilder,
          searchFieldProps: TextFieldProps(
            decoration: InputDecoration(
              hintText: searchHint,
              suffixIcon: searchSuffixIcon,
              prefixIcon: searchPrefixIcon,
            ),
          ),
        );
      case MenusType.popup:
        return PopupProps<T>.dialog(
          showSelectedItems: showSelectedItems,
          showSearchBox: showSearchBox,
          itemBuilder: itemBuilder,
          searchFieldProps: TextFieldProps(
            decoration: InputDecoration(
              hintText: searchHint,
              suffixIcon: searchSuffixIcon,
              prefixIcon: searchPrefixIcon,
            ),
          ),
        );
      case MenusType.bottomPopup:
        return PopupProps<T>.modalBottomSheet(
          showSelectedItems: showSelectedItems,
          showSearchBox: showSearchBox,
          itemBuilder: itemBuilder,
          searchFieldProps: TextFieldProps(
            decoration: InputDecoration(
              hintText: searchHint,
              suffixIcon: searchSuffixIcon,
              prefixIcon: searchPrefixIcon,
            ),
          ),
        );
      case MenusType.bottomSheet:
        return PopupProps<T>.bottomSheet(
          showSelectedItems: showSelectedItems,
          showSearchBox: showSearchBox,
          itemBuilder: itemBuilder,
          searchFieldProps: TextFieldProps(
            decoration: InputDecoration(
              hintText: searchHint,
              suffixIcon: searchSuffixIcon,
              prefixIcon: searchPrefixIcon,
            ),
          ),
        );
    }
  }

  /// multiple 3rd party provided dropdowns and customized for our needs.
  /// can select more than 1 data.
  static Widget basicMultipleTP({
    Key? key,
    String? label,
    String? hint,
    String? searchHint,
    TextStyle? labelStyle,
    TextStyle? hintStyle,
    TextStyle? inputStyle,
    Color? borderColor,
    Color? enableBorderColor,
    Color? errorBorderColor,
    Color? focusBorderColor,
    Color? disableBorderColor,
    Color? fillColor,
    Color? hintColor,
    Widget? prefixIcon,
    Widget? suffixIcon,
    Widget? searchPrefixIcon,
    Widget? searchSuffixIcon,
    EdgeInsetsGeometry? contentPadding,
    double borderSize = 4,
    bool isMandatory = true,
    bool isEnable = true,
    bool showSearchBox = false,
    bool showSelectedItems = true,
    MenusType type = MenusType.menu,
    FormFieldValidator<List<MenuData>>? validator,
    List<MenuData> listItem = const [],
    List<MenuData>? value,
    DropdownSearchItemAsString<MenuData>? itemAsString,
    DropdownSearchCompareFn<MenuData>? compareFn,
    DropdownSearchOnFind<MenuData>? asyncItems,
    DropdownSearchPopupItemBuilder<MenuData>? itemBuilder,
    required ValueChanged<List<MenuData>> callback,
    bool isReady = false,
    Widget Function(BuildContext, List<MenuData>)? dropdownBuilder,
    double? labelMarginTop,
    double? labelMarginBottom,
    double? labelPaddingLeft,
    double? labelPaddingRight,
    EdgeInsetsGeometry? labelPadding,
    bool? useLabelPadding,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
        AbsorbPointer(
          absorbing: !isEnable,
          child: ThemeStyles.menuTp(
            contentPadding: contentPadding,
            borderSize: borderSize,
            enableBorderColor: enableBorderColor,
            errorBorderColor: errorBorderColor,
            focusBorderColor: focusBorderColor,
            disableBorderColor: disableBorderColor,
            fillColor: fillColor,
            hintColor: hintColor,
            hintStyle: hintStyle,
            inputStyle: inputStyle,
            child: DropdownSearch<MenuData>.multiSelection(
              key: key,
              items: listItem,
              asyncItems: asyncItems,
              dropdownDecoratorProps: DropDownDecoratorProps(
                dropdownSearchDecoration: InputDecoration(
                  hintText: hint,
                  suffixIcon: suffixIcon,
                  prefixIcon: prefixIcon,
                ),
              ),
              dropdownButtonProps: suffixIcon != null
                  ? DropdownButtonProps(
                      icon: suffixIcon,
                    )
                  : DropdownButtonProps(
                      icon: Container(),
                      isVisible: false,
                    ),
              dropdownBuilder: dropdownBuilder,
              itemAsString: itemAsString ??
                  (item) {
                    return item.name != null
                        ? item.name!
                        : AppStrings.defaultNullValue;
                  },
              compareFn: compareFn ?? (item1, item2) => item1.id == item2.id,
              popupProps: _basicMultiplePopupProps<MenuData>(
                type: type,
                showSearchBox: showSearchBox,
                showSelectedItems: showSelectedItems,
                itemBuilder: itemBuilder,
                searchHint: searchHint,
                searchPrefixIcon: searchPrefixIcon,
                searchSuffixIcon: searchSuffixIcon,
              ),
              selectedItems: value ?? [],
              onChanged: callback,
              validator: isMandatory
                  ? validator ?? (s) => FormValidator.listRequired(s)
                  : null,
              autoValidateMode: isReady
                  ? AutovalidateMode.onUserInteraction
                  : AutovalidateMode.disabled,
            ),
          ),
        ),
      ],
    );
  }

  static _basicMultiplePopupProps<T>({
    required MenusType type,
    required bool showSelectedItems,
    required bool showSearchBox,
    DropdownSearchPopupItemBuilder<T>? itemBuilder,
    String? searchHint,
    Widget? searchPrefixIcon,
    Widget? searchSuffixIcon,
  }) {
    switch (type) {
      case MenusType.menu:
        return PopupPropsMultiSelection<T>.menu(
          showSelectedItems: showSelectedItems,
          showSearchBox: showSearchBox,
          itemBuilder: itemBuilder,
          searchFieldProps: TextFieldProps(
            decoration: InputDecoration(
              hintText: searchHint,
              suffixIcon: searchSuffixIcon,
              prefixIcon: searchPrefixIcon,
            ),
          ),
        );
      case MenusType.popup:
        return PopupPropsMultiSelection<T>.dialog(
          showSelectedItems: showSelectedItems,
          showSearchBox: showSearchBox,
          itemBuilder: itemBuilder,
          searchFieldProps: TextFieldProps(
            decoration: InputDecoration(
              hintText: searchHint,
              suffixIcon: searchSuffixIcon,
              prefixIcon: searchPrefixIcon,
            ),
          ),
        );
      case MenusType.bottomPopup:
        return PopupPropsMultiSelection<T>.modalBottomSheet(
          showSelectedItems: showSelectedItems,
          showSearchBox: showSearchBox,
          itemBuilder: itemBuilder,
          searchFieldProps: TextFieldProps(
            decoration: InputDecoration(
              hintText: searchHint,
              suffixIcon: searchSuffixIcon,
              prefixIcon: searchPrefixIcon,
            ),
          ),
        );
      case MenusType.bottomSheet:
        return PopupPropsMultiSelection<T>.bottomSheet(
          showSelectedItems: showSelectedItems,
          showSearchBox: showSearchBox,
          itemBuilder: itemBuilder,
          searchFieldProps: TextFieldProps(
            decoration: InputDecoration(
              hintText: searchHint,
              suffixIcon: searchSuffixIcon,
              prefixIcon: searchPrefixIcon,
            ),
          ),
        );
    }
  }
}
