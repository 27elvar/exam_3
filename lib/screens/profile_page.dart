import 'package:exam_3/screens/home_screen.dart';
import 'package:exam_3/screens/page_1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(top: 15.0, left: 10),
          child: FaIcon(FontAwesomeIcons.bars),
        ),
        title: const Padding(
          padding: EdgeInsets.only(right: 240.0),
          child: Text(
            'Profile',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: FaIcon(FontAwesomeIcons.bell),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) {
                          return const HomeScreen();
                        },
                      ),
                    );
                  },
                  icon: const Icon(Icons.home)),
              label: ' '),
          const BottomNavigationBarItem(icon: Icon(Icons.search), label: ' '),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) {
                        return const Page1();
                      },
                    ),
                  );
                },
                icon: const Icon(Icons.rectangle),
              ),
              label: ' '),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Color.fromARGB(255, 98, 94, 94),
              ),
              label: ' '),
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) {
                          return const ProfilePage();
                        },
                      ),
                    );
                  },
                  icon: const Icon(Icons.person)),
              label: ' '),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage(
                    'https://i.pinimg.com/736x/5f/23/3c/5f233c44f2c8e1f7741f461b7bda96c5.jpg'),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            '✅ javeed20',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            '😍',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 73.0, right: 65),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Tasks',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      '0',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Followers',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      '2',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Following',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      '2',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              'Privacy settings public',
              style: TextStyle(fontSize: 15, color: Colors.grey[600]),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Image.network(
                  height: 200,
                  'https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U'),
              Image.network(
                  height: 200,
                  'https://fastly.picsum.photos/id/257/200/300.jpg?grayscale&hmac=XoLljILF2LuMXMN3AJuGGQBi_d3nKprYgcrL1p0bE2M')
            ],
          )
        ],
      ),
    );
  }
}
