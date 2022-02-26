import 'package:flutter/material.dart';
import 'package:instagram_clone_flutter/shared/themes/app_images.dart';

import 'login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  var controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: body(context),
      bottomNavigationBar: buttonNav(),
    );
  }

  AppBar appBar()
  {
    return AppBar(
        title: Center(
          child: DropdownButton<String>(
              value: "English",
              style: const TextStyle(color: Colors.grey),
              underline: Container(height: 0),
              onChanged: (String? newValue) {},
              items: <String>['English', '...']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList()),
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
      );
  }

  Widget body(BuildContext context)
  {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.textLogo),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 48),
              child: Column(children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 6),
                  child: TextField(
                    style: TextStyle(),
                    decoration: InputDecoration(
                      hintText: "User name, phone or email",
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(8),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 6),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(8),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 38,
                    child: ElevatedButton(
                      onPressed: () {
                        controller.login(context);
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                        shadowColor: MaterialStateProperty.all<Color>(
                            Colors.transparent),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 12.0),
                  child: Text.rich(TextSpan(
                      text: "Forgotten your login details?",
                      style: TextStyle(fontSize: 12),
                      children: [
                        TextSpan(
                            text: " Get help with loggin in.",
                            style: TextStyle(color: Colors.blue))
                      ])),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("OR", style: TextStyle(color: Colors.grey)),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                TextButton(
                    onPressed: () {},
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.facebook),
                          Text("Log In With Facebook")
                        ])),
              ]),
            )
          ],
        ),
      );
  }

  Widget buttonNav()
  {
    return BottomAppBar(
        elevation: 0,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 18.0),
          child: Container(
            height: 24,
            child: const Center(
              child: Text.rich(TextSpan(
                  text: "Dont have an account?",
                  style: TextStyle(fontSize: 12),
                  children: [
                    TextSpan(
                        text: " Sign up.", style: TextStyle(color: Colors.blue))
                  ])),
            ),
          ),
        ),
      );
  }

}
