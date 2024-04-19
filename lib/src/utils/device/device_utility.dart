import 'dart:io';
import 'package:url_launcher/url_launcher_string.dart';

class AppDeviceUtils {
  AppDeviceUtils._();

  static bool isIOS() {
    return Platform.isIOS;
  }

  static bool isAndroid() {
    return Platform.isAndroid;
  }

  static void launchUrl(String url)async{
    if(await canLaunchUrlString(url)){
      await launchUrlString(url);
    }
    else{
      throw "could not launch $url";
    }

  }

}
