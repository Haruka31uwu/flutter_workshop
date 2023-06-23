import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:workshop_flutter/routes.dart';

void main() {
  final rootRouter = subPageRoutes;

  runApp(MyApp(router: rootRouter));
}

class MyApp extends StatelessWidget {
  final GoRouter router;

  const MyApp({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter GoRouter Demo',
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
    );
  }
}
