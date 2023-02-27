import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff2b475e),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 120,
              backgroundColor: Colors.white,
              child: Container(
                width: 237,
                height: 237,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.scaleDown,
                    image: AssetImage('images/sora.jpg'),
                  ),
                ),
              ),
            ),
            const Text(
              'Andrew Ayoub',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: 'Pacifico',
              ),
            ),
            const Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                  color: Color(0xff6c8090),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const Divider(
              color: Color(0xff6c8090),
              thickness: 0.5,
              height: 4,
              indent: 32,
              endIndent: 32,
            ),
            const Card(
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  size: 32,
                  color: Color(0xff2b475e),
                ),
                title: Text(
                  '(+20) 1271706685',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            const Card(
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: ListTile(
                leading: Icon(
                  Icons.mail,
                  size: 32,
                  color: Color(0xff2b475e),
                ),
                title: Text(
                  'andrew.oopey@gmail.com',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
