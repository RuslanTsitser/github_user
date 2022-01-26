import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:github_user/auth/application/auth_notifier.dart';
import 'package:github_user/auth/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'screen/login_page.dart';
import 'screen/main_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

final initializationProvider = FutureProvider<Unit>((ref) async {
  final authNotifier = ref.read(authNotifierProvider.notifier);
  await authNotifier.checkAndUpdateAuthStatus();
  return unit;
});

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(initializationProvider);

    return MaterialApp(
      home: Scaffold(
        body: Text(''),
      ),
    );
  }
}
