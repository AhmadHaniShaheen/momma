import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:momma/pref/shardPrefController.dart';
class Language_Provider extends ChangeNotifier{
  String language=ShardPrefController().getValueFor<String>(key: prefKeys.language.name)?? 'en';
  void changeLanguage(){
    language= language== 'en' ?'ar':'en';
    unawaited(ShardPrefController().changeLanguage(lang: language));
  }
  notifyListeners();

}