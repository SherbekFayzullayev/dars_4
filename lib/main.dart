import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int a = 0;

  List<Widget> bodyPart = [
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('img/1.png'),
            Text(
              'My Sweet Home',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('img/tovuq.png'),
            Text(
              'My Sweet Animals',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('img/gullar.png'),
            Text(
              'My Sweet Plants',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('img/fermer.png'),
            Text(
              'My Profile ',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'Hi my name is Sherbek',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'I am 16 years old',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme: IconThemeData(size: 40),
          fixedColor: Colors.amber,
          onTap: (value) {
            setState(() {
              a = value;
            });
          },
          currentIndex: a,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset('img/2.png'), label: 'Home'),
            BottomNavigationBarItem(
                icon: Image.asset('img/6.png'), label: 'Animals'),
            BottomNavigationBarItem(
                icon: Image.asset('img/4.png'), label: 'Plants'),
            BottomNavigationBarItem(
                icon: Image.asset('img/5.png'), label: 'Profile')
          ],
        ),
        body: bodyPart[a],
      ),
    );
  }
}
