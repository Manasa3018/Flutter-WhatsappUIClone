import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/model/chatmodel';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount : pageData.length,
        itemBuilder: (context,i)=> Column(
          children:  <Widget>[
            const Divider(
              height: 10.0,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(pageData[i].avatar),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    pageData[i].name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    pageData[i].time,
                    style: const TextStyle(fontWeight: FontWeight.normal),
                  ),

                ],
              ),
            subtitle: Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                pageData[i].message,
                style: const TextStyle(
                    color : Colors.grey,
                    fontSize: 14.0
                ),
              )
            ),
            )

          ],
        ),);
  }
}

