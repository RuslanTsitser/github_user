import 'package:flutter/material.dart';
import 'package:github_user/auth/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TopPanelWidget extends StatefulHookConsumerWidget {
  const TopPanelWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TopPanelWidgetState();
}

class _TopPanelWidgetState extends ConsumerState<TopPanelWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.search,
                size: 30,
              ),
              color: Colors.black,
              onPressed: () {},
            ),
            const Spacer(flex: 2),
            const Text('PROFILE',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    fontFamily: 'sans-serif-light',
                    color: Colors.black)),
            const Spacer(flex: 2),
            IconButton(
              icon: const Icon(
                Icons.logout,
                size: 30,
              ),
              color: Colors.black,
              onPressed: () {
                ref.read(authNotifierProvider.notifier).signOut();
              },
            ),
            const SizedBox(width: 10),
          ],
        ));
  }
}
