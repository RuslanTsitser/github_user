import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:github_user/auth/application/auth_notifier.dart';
import 'package:github_user/auth/shared/providers.dart';
import 'package:github_user/users/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'screen/routes/auto_router.gr.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

final initializationProvider = FutureProvider<Unit>((ref) async {
  final authNotifier = ref.read(authNotifierProvider.notifier);
  await authNotifier.checkAndUpdateAuthStatus();
  return unit;
});

class MyApp extends ConsumerWidget {
  final appRouter = AppRouter();
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(initializationProvider);
    ref.listen<AuthState>(authNotifierProvider, (previous, next) async {
      if (next == const AuthState.authenticated()) {
        final user = ref.read(userRepositoryProvider);
        await user.getData();
        appRouter.pushAndPopUntil(const MainRoute(),
            predicate: (route) => false);
      }
      if (next == const AuthState.unauthenticated()) {
        appRouter.pushAndPopUntil(const LoginRoute(),
            predicate: (route) => false);
      }
    });

    return MaterialApp.router(
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
    );
  }
}
