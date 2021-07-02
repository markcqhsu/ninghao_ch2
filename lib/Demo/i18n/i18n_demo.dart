import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'map/ninghao_demo_localization.dart';
// import "Demo/i18n/map/ninghao_demo_localizations.dart:"



class I18nDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Locale locale = Localizations.localeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("I18nDemo"),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text("${locale.languageCode}"),
            Text("${locale.toString()}"),
            Text(
              Localizations.of(context, NinghaoDemoLocalizations).title,
              // NinghaoDemoLocalizations.of(context)!.title,
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
    );
  }
}
