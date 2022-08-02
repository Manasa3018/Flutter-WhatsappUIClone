import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/pages/chatpage.dart';
import 'package:whatsapp_ui_clone/pages/call_screen.dart';
import 'package:whatsapp_ui_clone/pages/status_screen.dart';
import 'package:whatsapp_ui_clone/pages/camera_screen.dart' ;

class WhatsappHome extends StatefulWidget {
  const WhatsappHome({Key? key}) : super(key: key);

  @override
  _WhatsappHomeState createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome>
  with SingleTickerProviderStateMixin{
  late TabController _tabController;
  bool showFab=true;

  @override
  void initState(){
    super.initState();

    _tabController= TabController(length: 4, vsync: this, initialIndex: 1);
    _tabController.addListener(() {
      if(_tabController.index == 1){
        showFab=true;
  }
      else{
        showFab=false;
  }
      setState(() {
      });
  });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Whatsapp"),
        elevation:0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: const <Widget>[
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text : "CHATS"),
            Tab(text : "STATUS"),
            Tab(text : "CALLS"),
          ],
        ),
        actions: const <Widget>[
          Icon(Icons.search),
          Padding(
            padding:EdgeInsets.symmetric(horizontal: 10.0),

          ),
          Icon(Icons.more_vert)
      ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          const CameraScreen(),
          ChatScreen(),
          const StatusScreen(),
          const CallScreen(),
        ],
      ),
      floatingActionButton: showFab
        ? FloatingActionButton(
        child: const Icon(
          Icons.message,
          color : Colors.white,
        ),
        onPressed: () =>  print("Open chats"),
      )
          :null,
    );

  }
}
