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
      pageBuilder: (context, state) => const MaterialPage(
        child: SubPage(
          pageName: 'Buttons',
        ),
      ),
    ),
    GoRoute(
      path: '/subpage2',
      pageBuilder: (context, state) => const MaterialPage(
        child: SubPage(
          pageName: 'Text',
        ),
      ),
    ),
    GoRoute(
      path: '/subpage3',
      pageBuilder: (context, state) => const MaterialPage(
        child: SubPage(
          pageName: 'Forms',
        ),
      ),
    ),
    // Agrega más rutas para tus subpáginas
  ],
);
