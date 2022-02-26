import 'package:flutter/material.dart';

import '../home/home_page.dart';

class LoginController
{
  void login(context) async
  {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }
}