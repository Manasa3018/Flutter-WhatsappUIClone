import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/pages/storypage.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color:const Color(0xfff2f2f2),
      child: Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            color:Colors.white,
            elevation: 0.0,
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading:Stack(
                    children:<Widget>[
                      const CircleAvatar(
                        radius:30,
                        backgroundImage: NetworkImage("https://tse1.mm.bing.net/th?id=OIP.ZTX_L-5_E525mQ06sfFRCgHaIV&pid=Api&P=0&w=144&h=162"),
                  ),
                    Positioned(
                          bottom:0.0,
                          right:1.0,
                          child:Container(
                            height:20,
                            width:20,
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 15,

                            ),
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              shape:BoxShape.circle,
                            ),
                          ),
                        )
                    ],
                  ),
                  title: const Text(
                    "My Status",
                    style:TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text("Tap to add status update"),
                ),
              ),),
            const Padding(
              padding:EdgeInsets.all(8.0),
              child:Text(
                "Recent Updates",
                style:TextStyle(fontWeight: FontWeight.bold, color:Colors.grey),
            ),
          ),
          Expanded(child: Container(
            padding: const EdgeInsets.only(left:8.0,right:8.0),
            color:Colors.white,
            child:ListView(
              children:<Widget>[
                ListTile(
                  leading: const CircleAvatar(
                    radius:30,
                    backgroundImage: NetworkImage("https://tse4.mm.bing.net/th?id=OIP.uKtjCk7gIX4AAVbItPn1MgHaHa&pid=Api&P=0&w=157&h=157"),
                  ),
                  title: const Text(
                    "Barney Stinson",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text("12 minutes ago"),
                  onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>StoryPageView()) ),
                ),
                ListTile(
                  leading: const CircleAvatar(
                    radius:30,
                    backgroundImage: NetworkImage("https://tse3.mm.bing.net/th?id=OIP.ZzFngzYBDBPklwxUDzs-tQHaLI&pid=Api&P=0&w=121&h=182"),
                  ),
                  title: const Text(
                    "Lily Aldrin",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text("30 minutes ago"),
                  onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>StoryPageView()) ),
                ),
                ListTile(
                  leading: const CircleAvatar(
                    radius:30,
                    backgroundImage: NetworkImage("https://tse2.mm.bing.net/th?id=OIP.mhERWIQWjQeAnuQPV1kuVwHaHE&pid=Api&P=0&w=177&h=169"),
                  ),
                  title: const Text(
                    "Marshall Eriksen",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text("Today, 22.11 PM"),
                  onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>StoryPageView()) ),
                ),
              ],
            ),
          ),
          ),
          const Padding(
            padding:EdgeInsets.all(8.0),
            child:Text(
              "Viewed Updates",
              style:TextStyle(fontWeight: FontWeight.bold, color:Colors.grey),
            ),
          ),
          Expanded(child: Container(
            padding: const EdgeInsets.only(left:8.0,right:8.0),
            color:Colors.white,
            child:ListView(
              children:<Widget>[
                ListTile(
              leading: const CircleAvatar(
                radius:30,
                backgroundImage: NetworkImage("https://tse1.mm.bing.net/th?id=OIP.QbL0OlmGHsYm4LNws-B0NwHaFj&pid=Api&rs=1&c=1&qlt=95&w=122&h=91"),
              ),
              title: const Text(
                "Ted Mosby",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            subtitle: const Text("Today,20.10 PM"),
            onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>StoryPageView()) ),
                )
            ],
            ),
          ),
    ),
        ],
      ),
    );
  }
}
