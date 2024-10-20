import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Persib Bandung',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        '/main': (context) => MainPage(),
      },
    );
  }
}


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900], // Dark blue background
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/1.png',
                width: 150, height: 150), // Large logo in the center
            SizedBox(height: 20),
            Text(
              'PERSIB BANDUNG',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(
                    context, '/main'); // Navigate to the main page
              },
              child: Text('Masuk'),
            ),
          ],
        ),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900], 
        title: Row(
          children: [
            Image.asset('lib/1.png', height: 40), // logo disamping kiri
            SizedBox(width: 10),
            Text(
              'PERSIB BANDUNG',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.white, // 
        child: Center(
          child: Text('SELAMAT DATANG BOBOTOH !!!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(234, 0, 0, 0),
              )),
        ),
      ),
    );
  }
}
