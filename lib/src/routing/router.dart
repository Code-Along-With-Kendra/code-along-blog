import 'package:code_along/src/app/codealong_blog_series/blog_home.dart';
import 'package:code_along/src/app/home/home.dart';
import 'package:code_along/src/app/settings/settings_home.dart';
import 'package:go_router/go_router.dart';

final GoRouter goRouter = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      name: 'home',
      path: '/',
      builder: (context, state) => const MyHomePage(
        title: 'Home',
      ),
    ),
    GoRoute(
      name: 'blog',
      path: '/blog',
      builder: (context, state) => const Blog(),
    ),
    GoRoute(
      name: 'settings',
      path: '/settings',
      builder: (context, state) => const Settings(),
    ),
  ],
);
