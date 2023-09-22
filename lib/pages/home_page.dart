
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<Widget> bottonPages = [
    Container(
      child: const Center(child: Text("Profile ABD")),
    ),
    Container(child: const Center(child: Text("Notifications"))),
    Container(child: const Center(child: Text("Settings"))),
    Container(child: const Center(child: Text("Log out"))),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cours 2"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
      leading: IconButton(
        onPressed: () {
          _scaffoldKey.currentState?.openDrawer(); // Ouvrez le tiroir ici
        },
        icon: const Icon(Icons.menu),
      ),
      ),
      drawer: Drawer(
        child: Column(children: [
          Container(
            height: 200,
            color: Colors.amber,
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.account_circle_outlined),
                    SizedBox(width: 10),
                    Text('Profile'),
                  ],
                ),
                Icon(Icons.arrow_right),
              ],
            ),
          ),
          const Divider(
            height: 0.01,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.notification_important),
                    SizedBox(width: 10),
                    Text('Notifications'),
                  ],
                ),
                Icon(Icons.arrow_right),
              ],
            ),
          ),
          const Divider(
            height: 0.01,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.settings),
                    SizedBox(width: 10),
                    Text('Settings'),
                  ],
                ),
                Icon(Icons.arrow_right),
              ],
            ),
          ),
          const Divider(
            height: 0.01,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.logout),
                    SizedBox(width: 10),
                    Text('log out'),
                  ],
                ),
                Icon(Icons.arrow_right),
              ],
            ),
          ),
          const Divider(
            height: 0.01,
          )
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueAccent,
        currentIndex: currentPage,
        elevation: 5,
        onTap: (position) {
          setState(() {
            currentPage = position;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            activeIcon: Icon(Icons.account_circle_outlined,color: Colors.black),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_important),
            activeIcon: Icon(Icons.notification_important, color: Colors.black),
            label: 'Notifications',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            activeIcon:
                Icon(Icons.settings, color: Colors.black),
            label: 'Settings',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            activeIcon:
                Icon(Icons.logout, color: Colors.black),
            label: 'Log out',
          ),
        ],
      ),
      body: bottonPages[currentPage],
    );
  }
}
