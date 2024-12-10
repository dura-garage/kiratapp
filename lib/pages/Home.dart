import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kiratiapp/provider/locale_provider.dart';
import 'package:kiratiapp/localization.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localeProvider = Provider.of<LocaleProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.translate('title')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(AppLocalizations.of(context)!.translate('message')),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                localeProvider.setLocale(Locale('en'));
              },
              child: Text('Switch to English'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                localeProvider.setLocale(Locale('ne'));
              },
              child: Text('Switch to Nepali'),
            ),
          ],
        ),
      ),
    );
  }
}
