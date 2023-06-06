import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:social_bible/app/config/app_colors.dart';

class FeedPost extends StatefulWidget {
  final String? username;
  final String? likes;
  final String? time;
  final String? profilePicture;
  final String? image;

  const FeedPost(
      {super.key,
      this.username,
      this.likes,
      this.time,
      this.profilePicture,
      this.image});

  @override
  _FeedPostState createState() => _FeedPostState();
}

class _FeedPostState extends State<FeedPost> {
  bool isLiked = false;
  bool displayHeart = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: Get.width,
      padding: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 20.0,
                      backgroundImage: AssetImage(widget.profilePicture!),
                    ),
                    const SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.username!,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.0)),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0.0, vertical: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(FontAwesomeIcons.earthAmericas,
                                  size: 15),
                              const SizedBox(
                                width: 5,
                              ),
                              Text('${widget.time} ago',
                                  style: const TextStyle(
                                      fontSize: 12.0, color: Colors.grey)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const Icon(Icons.more_vert)
              ],
            ),
          ),
          GestureDetector(
            onDoubleTap: () {
              setState(() {
                isLiked = !isLiked;
                displayHeart = true;
              });
              Future.delayed(const Duration(milliseconds: 750), () {
                setState(() {
                  displayHeart = false;
                });
              });
            },
            child: displayHeart == true
                ? Stack(
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.width,
                        child: Image.asset(widget.image!, fit: BoxFit.cover),
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width,
                          child: const Center(
                              child: Icon(FontAwesomeIcons.solidHeart,
                                  color: Colors.white, size: 80.0))),
                    ],
                  )
                : SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width,
                    child: Image.asset(widget.image!, fit: BoxFit.cover),
                  ),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                isLiked == true
                    ? const Icon(FontAwesomeIcons.solidHeart,
                        color: Colors.red, size: 25.0)
                    : const Icon(FontAwesomeIcons.heart, size: 25.0),
                const SizedBox(width: 15.0),
                const Icon(FontAwesomeIcons.comment, size: 25.0),
                const SizedBox(width: 15.0),
                // const Icon(FontAwesomeIcons.paperPlane, size: 25.0),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text('${widget.likes}',
                style: const TextStyle(
                    fontWeight: FontWeight.w300, fontSize: 16.0)),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
