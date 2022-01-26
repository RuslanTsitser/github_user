import 'dart:async';

import 'package:flutter/material.dart';
import 'package:github_user/auth/shared/providers.dart';
import 'package:github_user/screen/authorization_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    MdiIcons.github,
                    size: 150,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'My example\nGithub viewer',
                    style: Theme.of(context).textTheme.headline3,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  Consumer(
                    builder: (context, ref, child) {
                      return ElevatedButton(
                        onPressed: () {
                          ref.read(authNotifierProvider.notifier).signIn(
                            (authorizationUrl) {
                              final completer = Completer<Uri>();

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AuthorizationPage(
                                    authorizationUrl: authorizationUrl,
                                    onAuthorizationCodeRedirectAttempt:
                                        (redirectUrl) {
                                      completer.complete(redirectUrl);
                                    },
                                  ),
                                ),
                              );
                              return completer.future;
                            },
                          );
                        },
                        child: const Text('Sign In'),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
