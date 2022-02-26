import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone_flutter/shared/themes/app_images.dart';

import '../../shared/widget/post_widget.dart';
import '../../shared/widget/story_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: body(),
      bottomNavigationBar: bottomNav(),
    );
  }

  AppBar appBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Image.asset(AppImages.textLogo),
      elevation: 0,
      backgroundColor: Colors.white,
      actions: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4),
          child: Icon(
            FontAwesomeIcons.plusSquare,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4),
          child: Icon(
            FontAwesomeIcons.facebookMessenger,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    StoryWidget(image_url: "/images/model1.jpg"),
                    StoryWidget(image_url: "/images/model2.jpg"),
                    StoryWidget(image_url: "/images/model3.jpg")
                  ],
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    children: [
                      PostWidget(
                          user_name: "Ana Rita",
                          user_image_url: "/images/model1.jpg",
                          post_image_url: "/images/model1.jpg"
                        ),
                      PostWidget(
                        user_name: "Soffia Varela",
                        user_image_url: "/images/model2.jpg",
                        post_image_url: "/images/model2.jpg"
                      ),
                      PostWidget(
                        user_name: "Grace da Rosa",
                        user_image_url: "/images/model3.jpg",
                        post_image_url: "/images/model3.jpg"
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  BottomAppBar bottomNav() {
    return BottomAppBar(
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home_outlined,
                size: 32,
              ),
              padding: EdgeInsets.all(0),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 32,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.playCircle)),
            IconButton(
                onPressed: () {}, icon: const Icon(FontAwesomeIcons.heart)),
            IconButton(
                onPressed: () {}, icon: const Icon(FontAwesomeIcons.user))
          ],
        ));
  }
}
