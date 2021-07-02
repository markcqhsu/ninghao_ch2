import "package:flutter/foundation.dart" show SynchronousFuture;
import 'package:flutter/material.dart';


class NinghaoDemoLocalizations{

  final Locale locale;

  NinghaoDemoLocalizations(this.locale);

  //因為Localizations.of 會經常用到, 所以寫一個靜態方法

  static NinghaoDemoLocalizations? of (BuildContext context){
    return Localizations.of<NinghaoDemoLocalizations>(
      context,
      NinghaoDemoLocalizations
    );
  }

  static Map< String, Map<String, String>> _localized = {
    "en":{
      "title": "hello",
    },
    "zh":{
      "title":"您好",
    }
  };
  //使用這個值可以透過get的方法
  String? get title{
    return _localized[locale.languageCode]!["title"];
  }
}

class NinghaoDemoLocalizationsDelegate extends LocalizationsDelegate<NinghaoDemoLocalizations>{
  NinghaoDemoLocalizationsDelegate();

  @override
  Future<NinghaoDemoLocalizations> load(Locale locale){
    return  SynchronousFuture<NinghaoDemoLocalizations>(
      NinghaoDemoLocalizations(locale)
    );
  }

  @override//判斷類的load方法, 加載的本地化資源是否支持本地化的語言
  bool isSupported(Locale locale){
    return true;
  }

  @override//重建的時候會調用這個方法
  bool shouldReload(LocalizationsDelegate<NinghaoDemoLocalizations> old){
    return false;
  }


}

