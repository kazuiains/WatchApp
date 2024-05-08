import 'package:watch_app/app/config/app_strings.dart';

enum ActionType {
  insert,
  update,
  read,
}

extension ActionTypeItem on ActionType {
  bool get isEnable {
    switch (this) {
      case ActionType.insert:
        return true;
      case ActionType.update:
        return true;
      case ActionType.read:
        return false;
    }
  }

  String get name {
    switch (this) {
      case ActionType.insert:
        return AppStrings.actionTypeInsert;
      case ActionType.update:
        return AppStrings.actionTypeUpdate;
      case ActionType.read:
        return AppStrings.actionTypeRead;
    }
  }
}
