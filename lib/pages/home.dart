import 'package:flutter/material.dart';

import '../i18n.g/strings.g.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Main"),
      ),
      body: Column(
        children: [
          Text(t.ui.common.cancel),
          ElevatedButton(
            onPressed: () {
              setState(() {
                LocaleSettings.setLocale(LocaleSettings.currentLocale == AppLocale.en ? AppLocale.ja : AppLocale.en);
              });
            },
            child: Text("Switch Language"),
          ),
        ],
      ),
    );
  }
}
