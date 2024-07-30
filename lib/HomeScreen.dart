// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text(
            'Whatsapp',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          bottom: const TabBar(tabs: [
            Tab(
              child: Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            ),
            Tab(
              child: Text(
                'Chats',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Tab(
              child: Text(
                'Status',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Tab(
              child: Text(
                'Calls',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ]),
          actions: [
            Icon(
              Icons.camera_alt_sharp,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            SizedBox(width: 10),
            PopupMenuButton(
                icon: Icon(
                  Icons.more_vert_outlined,
                  color: Colors.white,
                ),
                itemBuilder: (context) => [
                      const PopupMenuItem(value: 1, child: Text('New Group')),
                      PopupMenuItem(value: 2, child: Text('Linked Devices')),
                      const PopupMenuItem(
                          value: 3, child: Text('Starred Messages')),
                      const PopupMenuItem(
                          value: 4, child: Text('New Broadcast')),
                      const PopupMenuItem(value: 5, child: Text('Settings'))
                    ]),
            SizedBox(width: 10),
          ],
        ),
        body: TabBarView(children: [
          Text('Camera'),
          ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage('Assets/yasir.jpg')),
                title: Text('Yasir Zain'),
                subtitle: Text('I am an Android Developer'),
                trailing: Text('3:45pm'),
              );
            },
          ),
          ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('New Updates'),
                      ListTile(
                        leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.green, width: 3)),
                            child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('Assets/yasir.jpg'))),
                        title: Text('Yasir Zain'),
                        subtitle: Text('11 minutes ago'),
                      ),
                    ],
                  ),
                );
              } else {}
              return ListTile(
                leading: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.green, width: 3)),
                    child: CircleAvatar(
                        backgroundImage: AssetImage('Assets/yasir.jpg'))),
                title: Text('Yasir Zain'),
                subtitle: Text('11 minutes ago'),
              );
            },
          ),
          ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage('Assets/yasir.jpg')),
                title: Text('Yasir Zain'),
                subtitle: Text(index / 2 == 0
                    ? 'You  have Missed audio Call'
                    : 'You have missed video call'),
                trailing: Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
              );
            },
          ),
        ]),
      ),
    );
  }
}
