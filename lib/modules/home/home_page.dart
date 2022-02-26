import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone_flutter/shared/themes/app_images.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading:false,
        title: Image.asset(AppImages.textLogo),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: const [
          Icon(FontAwesomeIcons.plusSquare, color: Colors.black,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: Icon(FontAwesomeIcons.paperPlane, color: Colors.black,),
          ),
        ],
      ),
      body: Container(
        child: Text("Home"),
      ),
    );
  }
}