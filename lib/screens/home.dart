import 'package:flutter/material.dart';
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
                  Container(
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
                                  image: AssetImage(
                                    'assets/images/saida-whatsapp.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                shape: BoxShape.circle,
                                color: Color(0xff7fb0a9)),
                          ),
                        ),
                        Container(
                          height: 85,
                          width: MediaQuery.of(context).size.width - 100,
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xfff1f1f1), width: 2)),
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
                                    child: Text(
                                      'Saida',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                      10,
                                      0,
                                      0,
                                      4,
                                    ),
                                    child: Text(
                                      'JAJJAJAJAJA',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.grey[500]),
                                    ),
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
                                child: Text(
                                  '23:15',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey[500]),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
