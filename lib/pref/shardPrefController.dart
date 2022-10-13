
import 'package:shared_preferences/shared_preferences.dart';

import '../model/user.dart';

enum prefKeys{
  email,logenIn,language
}

class ShardPrefController{
  static final ShardPrefController _instace=ShardPrefController._();
  late SharedPreferences _sharedPreferences;
  Future<void> initialShardPref()async{
    _sharedPreferences=await SharedPreferences.getInstance();
  }
  Future<void> savePref(User user)async{
    await _sharedPreferences.setBool(prefKeys.logenIn.name, true);
    await _sharedPreferences.setString(prefKeys.email.name, user.email);
  }
  Future<bool>changeLanguage({required String lang}) async{
    return await _sharedPreferences.setString(prefKeys.language.name, lang);
  }

  String get email=>_sharedPreferences.getString(prefKeys.email.name)?? '';
  // bool get logenIn=>_sharedPreferences.getBool(prefKeys.logenIn.name)?? false;

  T? getValueFor<T>({required String key}){
    return _sharedPreferences.get(key) as T?;
  }


  void removeKey({required String key}){
    _sharedPreferences.remove(key);
  }
  Future<bool> clear()async{
    return await _sharedPreferences.clear();
  }
  factory ShardPrefController(){
    return _instace;
  }
  ShardPrefController._();
}