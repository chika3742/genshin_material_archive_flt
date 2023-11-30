import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:genshin_material_flt/components/my_navigation_drawer.dart';

import '../i18n.g/strings.g.dart';

final pageTitleProvider = StateProvider((ref) => tx.ui.pageTitles.home);

class GlobalScaffold extends ConsumerWidget {
  const GlobalScaffold({super.key, required this.body, required this.routeName});

  final Widget body;
  final String? routeName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(ref.watch(pageTitleProvider)),
      ),
      drawer: const MyNavigationDrawer(),
      body: body,
    );
  }
}

