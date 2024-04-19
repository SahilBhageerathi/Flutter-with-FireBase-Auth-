import 'package:intl/intl.dart';

class AppFormatters{
  AppFormatters._();

  static String formatDate(DateTime? date){

    date ??=DateTime.now();
    return DateFormat("dd-MMM-yyyy").format(date);
  }
}