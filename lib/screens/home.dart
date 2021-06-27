import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/userChatCard.dart';
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
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
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
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        icon: Icon(
                          Icons.camera_alt,
                          color: Color(0xff7fb0a9),
                        ),
                        onPressed: () {
                          print('camera function');
                        }),
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
                          // Borde: Border(
                          //     bottom: BorderSide(color: Colors.black, width: 3)
                          // ),
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
                child: ListView(
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
