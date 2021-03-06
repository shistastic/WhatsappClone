import 'package:flutter/material.dart';

class UserStoryCard extends StatelessWidget {
  final Color backgroundColor = Color(0xff014f42);
  final Text? title;
  final Text? message;
  final Text? time;
  final AssetImage userProfileImage;

  /// you can add more fields that meet your needs
  UserStoryCard(
      {this.title, this.message, required this.userProfileImage, this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(16, 13, 10, 10),
            child: Stack(
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                  ),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: userProfileImage,
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle,
                    color: Color(0xff7fb0a9),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 40,
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff28bf2b),
                        border: Border.all(width: 2, color: Colors.white)),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 85,
            width: MediaQuery.of(context).size.width - 100,
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Color(0xfff1f1f1), width: 2)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                        10,
                        20,
                        0,
                        5,
                      ),
                      child: title,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                        10,
                        0,
                        0,
                        4,
                      ),
                      child: message,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    10,
                    0,
                    0,
                    20,
                  ),
                  child: time,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
