import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:workshop_flutter/subpage.dart';

import 'home_page.dart';

final subPageRoutes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => const MaterialPage(child: HomePage()),
    ),
    GoRoute(
      path: '/subpage1',
      pageBuilder: (context, state) => MaterialPage(
        child: SubPage(),
      ),
    ),
    GoRoute(
      path: '/subpage2',
      pageBuilder: (context, state) => MaterialPage(
        child: SubPage(),
      ),
    ),
    // Agrega más rutas para tus subpáginas
  ],
);
