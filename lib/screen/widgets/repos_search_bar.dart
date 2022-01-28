import 'package:flutter/material.dart';
import 'package:github_user/auth/shared/providers.dart';
import 'package:github_user/screen/routes/auto_router.gr.dart';
import 'package:github_user/screen/user_repos_page.dart';
import 'package:github_user/users/domain/user.dart';
import 'package:github_user/users/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class ReposSearchBar extends StatefulWidget {
  const ReposSearchBar({Key? key}) : super(key: key);

  @override
  _ReposSearchBarState createState() => _ReposSearchBarState();
}

class _ReposSearchBarState extends State<ReposSearchBar> {
  late FloatingSearchBarController _controller;

  @override
  void initState() {
    _controller = FloatingSearchBarController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<User> users = [];

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final _user = ref.read(userRepositoryProvider);
        final _repo = ref.read(githubReposRepositoryProvider);

        return FloatingSearchBar(
          controller: _controller,
          hint: 'Search...',
          scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
          transitionDuration: const Duration(milliseconds: 800),
          transitionCurve: Curves.easeInOut,
          physics: const BouncingScrollPhysics(),
          axisAlignment: isPortrait ? 0.0 : -1.0,
          openAxisAlignment: 0.0,
          width: isPortrait ? 600 : 500,
          debounceDelay: const Duration(milliseconds: 500),
          onQueryChanged: (query) async {
            if (query.isNotEmpty) {
              final _users = await _user.getSearchData(query);

              setState(() {
                users = _users;
              });
            }
          },
          onFocusChanged: (isFocused) {
            _controller.clear();
            users.clear();
            setState(() {});
          },
          transition: CircularFloatingSearchBarTransition(),
          actions: [
            FloatingSearchBarAction(
              showIfOpened: false,
              child: CircularButton(
                icon: const Icon(Icons.logout),
                onPressed: () {
                  ref.watch(authNotifierProvider.notifier).signOut();
                },
              ),
            ),
            FloatingSearchBarAction(
              showIfOpened: true,
              showIfClosed: false,
              child: CircularButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  _controller.clear();
                  users.clear();
                  setState(() {});
                },
              ),
            ),
          ],
          builder: (context, transition) {
            return Material(
              color: Theme.of(context).cardColor,
              elevation: 4,
              borderRadius: BorderRadius.circular(8),
              clipBehavior: Clip.hardEdge,
              child: Column(
                children: users
                    .map(
                      (user) => ListTile(
                        title: Text(
                          user.login,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text(
                          'Followers: ' + user.followers.toString(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        leading: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(user.avatar_url),
                                fit: BoxFit.cover,
                              ),
                            )),
                        onTap: () async {
                          final _repos = await _repo.getSearchData(user.login);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UserReposPage(
                                        user: user,
                                        repos: _repos,
                                      )));
                        },
                      ),
                    )
                    .toList(),
              ),
            );
          },
        );
      },
    );
  }
}
