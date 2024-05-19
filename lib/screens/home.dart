import 'package:flutter/material.dart';
import 'package:rosella/models/user.dart';
import 'package:rosella/screens/Orientation/landscape.dart';
import 'package:rosella/screens/Orientation/portrait.dart';
import 'package:rosella/screens/login.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF485AD),
        elevation: 0,
      ),
      body: OrientationBuilder(
        builder: ((context, orientation) {
          if (orientation == Orientation.portrait) {
            return portraitMode(context);
          } else {
            return landscapeMode(context);
          }
        }),
      ),
      drawer: Drawer(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 220,
              // margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              decoration: const BoxDecoration(
                  color: Color(0xFFF485AD),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              child: SafeArea(
                bottom: false,
                right: false,
                left: false,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                        backgroundImage: AssetImage('assets/logo4.png'),
                        radius: 45),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(username,
                        style:
                            const TextStyle(fontSize: 22, color: Colors.white)),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(8, 0, 0, 60),
              child: Column(
                children: [
                  const ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    leading: Icon(Icons.content_paste_rounded),
                    title: Text('My Orders'),
                  ),
                  const ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    leading: Icon(Icons.favorite_outline_outlined),
                    title: Text('Wishlist'),
                  ),
                  const ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    leading: Icon(Icons.location_on_outlined),
                    title: Text('Addresses'),
                  ),
                  const ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    leading: Icon(Icons.star_outline_sharp),
                    title: Text('Vouchers'),
                  ),
                  const ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    leading: Icon(Icons.help_outline_outlined),
                    title: Text('Help Center'),
                  ),
                  const ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    leading: const Icon(Icons.logout),
                    title: const Text('Logout'),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
