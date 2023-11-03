import 'package:collegeapp/pages/explore.dart';
import 'package:collegeapp/pages/loginpage.dart';
import 'package:flutter/material.dart';

class LoginOrExplore extends StatefulWidget {
  const LoginOrExplore({super.key});

  @override
  State<LoginOrExplore> createState() => _LoginOrExploreState();
}

class _LoginOrExploreState extends State<LoginOrExplore> {
  bool showLoginPage = true;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: togglePages);
    } else {
      return Explore(onTap: togglePages);
    }
  }
}
