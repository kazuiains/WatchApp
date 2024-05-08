import 'package:watch_app/domain/entities/widget/checkbox_data.dart';
import 'package:watch_app/domain/entities/widget/date_data.dart';
import 'package:watch_app/domain/entities/widget/menu_data.dart';
import 'package:watch_app/domain/entities/widget/radio_button_data.dart';
import 'package:watch_app/domain/entities/widget/switch_data.dart';
import 'package:watch_app/domain/entities/widget/text_field_data.dart';
import 'package:watch_app/domain/entities/widget/time_data.dart';

class WidgetsData {
  CheckboxData? checkboxData;
  DateData? dateData;
  MenuData? menuData;
  RadioButtonData? radioButtonData;
  SwitchData? switchData;
  TextFieldData? textFieldData;
  TimeData? timeData;
  dynamic data;
  List<CheckboxData>? checkboxListData;
  List<DateData>? dateListData;
  List<MenuData>? menuListData;
  List<RadioButtonData>? radioButtonListData;
  List<SwitchData>? switchListData;
  List<TextFieldData>? textFieldListData;
  List<TimeData>? timeListData;

  WidgetsData({
    this.checkboxData,
    this.dateData,
    this.menuData,
    this.radioButtonData,
    this.switchData,
    this.textFieldData,
    this.timeData,
    this.data,
    this.checkboxListData,
    this.dateListData,
    this.menuListData,
    this.radioButtonListData,
    this.switchListData,
    this.textFieldListData,
    this.timeListData,
  });

  WidgetsData copyWith({
    CheckboxData? checkboxData,
    DateData? dateData,
    MenuData? menuData,
    RadioButtonData? radioButtonData,
    SwitchData? switchData,
    TextFieldData? textFieldData,
    TimeData? timeData,
    dynamic data,
    List<CheckboxData>? checkboxListData,
    List<DateData>? dateListData,
    List<MenuData>? menuListData,
    List<RadioButtonData>? radioButtonListData,
    List<SwitchData>? switchListData,
    List<TextFieldData>? textFieldListData,
    List<TimeData>? timeListData,
  }) =>
      WidgetsData(
        checkboxData: checkboxData ?? this.checkboxData,
        dateData: dateData ?? this.dateData,
        menuData: menuData ?? this.menuData,
        radioButtonData: radioButtonData ?? this.radioButtonData,
        switchData: switchData ?? this.switchData,
        textFieldData: textFieldData ?? this.textFieldData,
        timeData: timeData ?? this.timeData,
        data: data ?? this.data,
        checkboxListData: checkboxListData ?? this.checkboxListData,
        dateListData: dateListData ?? this.dateListData,
        menuListData: menuListData ?? this.menuListData,
        radioButtonListData: radioButtonListData ?? this.radioButtonListData,
        switchListData: switchListData ?? this.switchListData,
        textFieldListData: textFieldListData ?? this.textFieldListData,
        timeListData: timeListData ?? this.timeListData,
      );
}
