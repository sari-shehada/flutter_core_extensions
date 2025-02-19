import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_time_ago/get_time_ago.dart';
import 'package:intl/intl.dart';

//TODO: Take a look at it and try to refactor and clean-up
extension DateTimeExtension on DateTime {
  int get asTimeSinceEpoch => millisecondsSinceEpoch;

  //TODO: Find another way to get the locale or delete this todo
  String get monthNameLocalized =>
      DateFormat.MMMM(Get.locale!.languageCode).format(this);

  String get monthName => DateFormat.MMMM().format(this);

  String get dayNameLocalized =>
      DateFormat.EEEE(Get.locale!.languageCode).format(this);

  String get dayName => DateFormat.EEEE().format(this);

  String get dayNameAbbreviated => DateFormat.E().format(this);

  String get dayNameLocalizedAbbreviated =>
      DateFormat.E(Get.locale!.languageCode).format(this);

  String get asTimeAgo {
    GetTimeAgo.setDefaultLocale(Get.locale!.languageCode);
    return GetTimeAgo.parse(this);
  }

  String get timeOnly => DateFormat('HH:mm').format(this);
  String get dateOnly => DateFormat('y/M/d').format(this);
  String get dateAndDayNameOnly => DateFormat('EEE d/M/y').format(this);

  String getFormalDateTime(BuildContext context) {
    return ('$dateAndDayNameOnly ${TimeOfDay.fromDateTime(this).format(context)}');
  }
}
