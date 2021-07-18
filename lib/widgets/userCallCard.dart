import 'package:flutter/material.dart';

class CallCard extends StatelessWidget {
  final Color backgroundColor = Color(0xff014f42);
  final Text? title;
  final Text? callTime;
  final Text? time;
  final Icon? checkIcon;
  final Icon? callIcon;
  final AssetImage userProfileImage;

  /// you can add more fields that meet your needs
  CallCard(
      {this.title,
      this.callTime,
      required this.userProfileImage,
      this.checkIcon,
      this.callIcon,
      this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(16, 13, 10, 10),
            child: Container(
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
          ),
          Container(
            height: 88,
            width: MediaQuery.of(context).size.width - 100,
            // decoration: BoxDecoration(
            //   border: Border(
            //       bottom: BorderSide(color: Color(0xfff1f1f1), width: 2)),
            // ),
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
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                            10,
                            0,
                            0,
                            20,
                          ),
                          child: checkIcon,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                            10,
                            0,
                            0,
                            20,
                          ),
                          child: callTime,
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    0,
                    25,
                    10,
                    20,
                  ),
                  child: callIcon,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
