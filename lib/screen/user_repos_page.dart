import 'package:flutter/material.dart';
import 'package:github_user/users/domain/github_repo.dart';
import 'package:github_user/users/domain/user.dart';

class UserReposPage extends StatelessWidget {
  final User user;
  final List<GithubRepo> repos;
  const UserReposPage({Key? key, required this.user, required this.repos})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            child: ListView(
              children: <Widget>[
                Column(children: <Widget>[
                  Container(
                    height: 250.0,
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        const SizedBox(height: 70),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Stack(fit: StackFit.loose, children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    width: 140.0,
                                    height: 140.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: NetworkImage(user.avatar_url),
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                              ],
                            ),
                            Padding(
                                padding: const EdgeInsets.only(
                                    top: 90.0, right: 100.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const <Widget>[
                                    CircleAvatar(
                                      backgroundColor: Colors.red,
                                      radius: 25.0,
                                      child: Icon(
                                        Icons.camera_alt,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                )),
                          ]),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        user.login,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        user.location ?? 'Everywhere',
                        style: const TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  const SizedBox(height: 24),
                ]),
                Column(
                  children: repos.map((repo) {
                    return ListTile(
                      title: Text(
                        "Repository '${repo.name}'",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('forks ' + repo.forks_count.toString()),
                          Text('default branch ' +
                              repo.default_branch.toString()),
                          Text('Description ' + repo.description.toString()),
                          Text('Programming language ' +
                              repo.language.toString()),
                          Text('Last commit at ' + repo.pushed_at.toString()),
                          Text('Stars ' + repo.stargazers_count.toString()),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
