import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

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
      drawer: NavigationDrawer(
        children: [
          NavDrawerItem(title: tx.ui.pageTitles.home, to: "/"),
          NavDrawerItem(title: tx.ui.pageTitles.characters, to: "/characters"),
        ],
      ),
      body: body,
    );
  }
}

class NavDrawerItem extends StatelessWidget {
  const NavDrawerItem({super.key, required this.title, required this.to});

  final String title;
  final String to;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        context.pop();
        context.go(to);
      },
    );
  }
}
