import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/camera.dart';
import 'package:whatsapp_clone/widgets/userCallCard.dart';
import 'package:whatsapp_clone/widgets/userChatCard.dart';
import 'package:whatsapp_clone/widgets/userStoryCard.dart';
import 'package:whatsapp_clone/widgets/whatsAppbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedMode = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WhatsAppBar(
        title: Text(
          'WhatsApp',
          style: TextStyle(
            fontSize: 21,
          ),
        ),
        actions: [
          IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 50,
              color: Color(0xff014f42),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 3),
                    child: Expanded(
                      flex: 1,
                      child: IconButton(
                          icon: Icon(
                            Icons.camera_alt,
                            color: Color(0xff7fb0a9),
                          ),
                          onPressed: () async {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => Camera(),
                              ),
                            );
                          }),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: selectedMode == 1
                                    ? Colors.white
                                    : Color(0xff014f42),
                                width: 3)),
                      ),
                      child: TextButton(
                          style: ButtonStyle(
                            overlayColor: MaterialStateColor.resolveWith(
                                (states) => Colors.transparent),
                          ),
                          onPressed: () {
                            setState(() {
                              selectedMode = 1;
                            });
                          },
                          child: Text(
                            'CHATS',
                            style: TextStyle(
                              color: selectedMode == 1
                                  ? Colors.white
                                  : Color(0xff7fb0a9),
                              fontSize: 15,
                            ),
                          )),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: selectedMode == 2
                                    ? Colors.white
                                    : Color(0xff014f42),
                                width: 3)),
                      ),
                      child: TextButton(
                          style: ButtonStyle(
                            overlayColor: MaterialStateColor.resolveWith(
                                (states) => Colors.transparent),
                          ),
                          onPressed: () {
                            setState(() {
                              selectedMode = 2;
                            });
                          },
                          child: Text(
                            'ESTADOS',
                            style: TextStyle(
                              color: selectedMode == 2
                                  ? Colors.white
                                  : Color(0xff7fb0a9),
                              fontSize: 15,
                            ),
                          )),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: selectedMode == 3
                                    ? Colors.white
                                    : Color(0xff014f42),
                                width: 3)),
                      ),
                      child: Row(
                        children: [
                          TextButton(
                            style: ButtonStyle(
                              overlayColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.transparent),
                            ),
                            onPressed: () {
                              setState(() {
                                selectedMode = 3;
                              });
                            },
                            child: Text(
                              'LLAMADAS',
                              style: TextStyle(
                                color: selectedMode == 3
                                    ? Colors.white
                                    : Color(0xff7fb0a9),
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: EdgeInsets.only(top: 3),
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Color(0xff014f42),
                                  fontSize: 12,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff7fb0a9)),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: selectedMode == 1
                    ? ListView(
                        children: [
                          ChatCard(
                            title: Text(
                              'Saida',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            message: Text(
                              'JAJJAJAJAJA',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey[500]),
                            ),
                            time: Text(
                              '23:15',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey[500]),
                            ),
                            userProfileImage: AssetImage(
                              'assets/images/saida-whatsapp.png',
                            ),
                          ),
                        ],
                      )
                    : selectedMode == 2
                        ? ListView(
                            children: [
                              UserStoryCard(
                                title: Text(
                                  'Mi estado',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                                message: Text(
                                  'A??ade una actualizaci??n',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey[500]),
                                ),
                                userProfileImage: AssetImage(
                                  'assets/images/saida-whatsapp.png',
                                ),
                              ),
                            ],
                          )
                        : selectedMode == 3
                            ? ListView(
                                children: [
                                  CallCard(
                                    title: Text(
                                      'Saida',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                    callTime: Text(
                                      '17 de julio 15:20',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.grey[500]),
                                    ),
                                    checkIcon: Icon(
                                      Icons.check,
                                      color: Color(0xff014f42),
                                      size: 20,
                                    ),
                                    userProfileImage: AssetImage(
                                      'assets/images/saida-whatsapp.png',
                                    ),
                                    callIcon: Icon(
                                      Icons.call,
                                      color: Color(0xff014f42),
                                      size: 24,
                                    ),
                                  ),
                                ],
                              )
                            : Container(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff28bf2b),
        child: Icon(Icons.source),
        onPressed: () {
          print('floating button pressed');
        },
      ),
    );
  }
}
