import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:social_bible/app/config/app_colors.dart';

import '../account/profile_screen.dart';
import 'feed_post.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        elevation: 2.0,
        leading: SizedBox(
          width: MediaQuery.of(context).size.width / 2.5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(const AccountScreen());
                },
                child: const CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/Sam Wilson.jpg")),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          Container(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
                onTap: () {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => MessagesPage()));
                },
                child: const Icon(FontAwesomeIcons.heart, color: Colors.white)),
          ),
          Container(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
                onTap: () {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => MessagesPage()));
                },
                child: const Icon(Icons.menu, color: Colors.white)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 80,
              child: TextField(
                  controller: null,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 10, top: 30),
                      hintText: "What's your thought of the day?",
                      hintStyle: TextStyle(
                        color: AppColors.white,
                      ),
                      border: InputBorder.none),
                  style: TextStyle(color: AppColors.white)),
            ),
            // StoriesWidget(),
            Container(
                alignment: Alignment.center,
                width: Get.width,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: const Column(
                  children: [
                    FeedPost(
                        username: 'eddisonalfred',
                        likes: "156 hours adelle_klarke",
                        time: '6 hours',
                        profilePicture: 'assets/images/eddison.jpg',
                        image: 'assets/images/story2.jpg'),
                    FeedPost(
                        username: 'adelle_klarke',
                        likes: "12 hours matthewsimpson",
                        time: '2 days',
                        profilePicture: 'assets/images/adelle.jpg',
                        image: 'assets/images/story3.jpg'),
                    FeedPost(
                        username: 'matthewsimpson',
                        likes: "156 hours adelle_klarke",
                        time: '1 week',
                        profilePicture: 'assets/images/mathew.jpg',
                        image: 'assets/images/story4.jpg'),
                    FeedPost(
                        username: 'ryanconnor',
                        likes: "an't be assigned to the parameter",
                        time: '2 weeks',
                        profilePicture: 'assets/images/ryan.jpg',
                        image: 'assets/images/story8.jpg'),
                  ],
                )),

            const FeedPost(
                username: 'samwilson',
                likes: "an't be assigned to the parameter",
                time: '2 hours',
                profilePicture: 'assets/images/Sam Wilson.jpg',
                image: 'assets/images/story1.jpg'),
          ],
        ),
      ),
    );
  }

  // Future _launchCamera() async {
  //   final image = await ImagePicker().getImage(source: ImageSource.camera);
  // }
}
