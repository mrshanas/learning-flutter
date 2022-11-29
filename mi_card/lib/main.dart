import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              CircleAvatar(
                backgroundImage: const AssetImage('images/spiderman.jpg'),
                radius: 50.0,
              ),
              // ignore: prefer_const_constructors
              Text(
                'Peter Parker',
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontFamily: 'Dank Mono',
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              // ignore: prefer_const_constructors
              Text(
                'Super Hero',
                // ignore: prefer_const_constructors
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  letterSpacing: 5,
                ),
              ),
              const Divider(
                height: 30.0,
                indent: 20.0,
                endIndent: 20.0,
                thickness: 1.2,
                color: Colors.white,
              ),
              Card(
                child: Column(
                  children: const [
                    ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      title: Text('0788 277 549'),
                    ),

                  ],
                ),
              ),
              Card(
                child: Column(
                  children: const [
                    ListTile(
                      leading: Icon(
                        Icons.mail,
                        color: Colors.teal,
                      ),
                      title: Text('nassibshaban345@gmail.com'),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
