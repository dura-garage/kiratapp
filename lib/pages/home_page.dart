import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:kiratiapp/provider/locale_provider.dart';
import 'package:kiratiapp/localization.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final localeProvider = Provider.of<LocaleProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.translate('title'),
        style: GoogleFonts.playfair(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(AppLocalizations.of(context)!.translate('This is the basic skeleton of the app.')),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                localeProvider.toggleLocale();
                Theme.of(context).switchTheme;
              },
              child: const Text('Switch Language'),
            ),
          ],
        ),
      ),
    );
  }
}
