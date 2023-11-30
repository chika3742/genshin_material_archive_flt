import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:genshin_material_flt/components/global_scaffold.dart';
import 'package:genshin_material_flt/i18n.g/strings.g.dart';
import 'package:genshin_material_flt/pages/characters_page.dart';
import 'package:genshin_material_flt/pages/home.dart';
import 'package:go_router/go_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();
  runApp(
    ProviderScope(
      child: TranslationProvider(
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Genshin Material',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      routerConfig: GoRouter(routes: [
        ShellRoute(
          builder: (context, state, child) => GlobalScaffold(body: child, routeName: state.name),
          routes: [
            GoRoute(
              path: '/',
              name: tx.ui.pageTitles.home,
              pageBuilder: (context, state) => _buildPage(
                key: state.pageKey,
                title: tx.ui.pageTitles.home,
                ref: ref,
                child: const HomePage(),
              ),
            ),
            GoRoute(
              path: '/characters',
              name: tx.ui.pageTitles.characters,
              pageBuilder: (context, state) => _buildPage(
                key: state.pageKey,
                title: tx.ui.pageTitles.characters,
                ref: ref,
                child: const CharactersPage(),
              ),
            ),
          ],
        ),
      ]),
    );
  }

  Page _buildPage({required LocalKey key, required String title, required WidgetRef ref, required Widget child}) {
    Future(() {
      ref.read(pageTitleProvider.notifier).state = title;
    });
    return CustomizedTransitionPage(key: key, child: Material(child: child));
  }
}

class CustomizedTransitionPage extends Page {
  final Widget child;

  const CustomizedTransitionPage({LocalKey? key, required this.child})
      : super(key: key);

  @override
  Route createRoute(BuildContext context) {
    const curve = Curves.easeOutCubic;
    const reverseCurve = Curves.easeInCubic;

    return PageRouteBuilder(
      settings: this,
      transitionDuration: const Duration(milliseconds: 300),
      reverseTransitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: CurvedAnimation(
            parent: animation,
            curve: Curves.easeOutCubic,
            reverseCurve: Curves.easeInCubic,
          ),
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0.25, 0.0),
              end: Offset.zero,
            ).animate(CurvedAnimation(
              parent: animation,
              curve: curve,
              reverseCurve: reverseCurve,
            )),
            child: SlideTransition(
              position: Tween<Offset>(
                begin: Offset.zero,
                end: const Offset(-0.15, 0.0),
              ).animate(CurvedAnimation(
                parent: secondaryAnimation,
                curve: curve,
                reverseCurve: reverseCurve,
              )),
              child: child,
            ),
          ),
        );
      },
    );
  }
}
