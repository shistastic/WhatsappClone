import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/userChatCard.dart';
import 'package:whatsapp_clone/widgets/whatsAppbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                            bottom: BorderSide(color: Colors.white, width: 3)),
                      ),
                      child: TextButton(
                          // Borde: Border(
                          //     bottom: BorderSide(color: Colors.black, width: 3)
                          // ),
                          onPressed: () {},
                          child: Text(
                            'CHATS',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          )),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'ESTADOS',
                          style: TextStyle(
                            color: Color(0xff7fb0a9),
                            fontSize: 15,
                          ),
                        )),
                  ),
                  Expanded(
                    flex: 4,
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'LLAMADAS',
                            style: TextStyle(
                              color: Color(0xff7fb0a9),
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
                              shape: BoxShape.circle, color: Color(0xff7fb0a9)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: double.maxFinite,
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
          ],
        ),
      ),
    );
  }
}
