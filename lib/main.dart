import 'package:flutter/material.dart';

const fullName = 'Huỳnh Tuấn Tú';
const role = 'Flutter Developer';
const phone = 'YOUR PHONE';
const email = 'YOUR EMAIL';

void main() {
  runApp(const MiCardApp());
}

class MiCardApp extends StatelessWidget {
  const MiCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MiCard',
      home: Scaffold(
        backgroundColor: Color(0xFF00695C),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 58,
                    backgroundColor: Colors.white,
                    child: Text(
                      'HT',
                      style: TextStyle(
                        color: Color(0xFF00695C),
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 22),
                  Text(
                    fullName,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    role,
                    style: TextStyle(
                      color: Color(0xFFB2DFDB),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.8,
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 28,
                    child: Divider(color: Color(0xFF80CBC4)),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      leading: Icon(Icons.phone, color: Color(0xFF00695C)),
                      title: Text(phone),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      leading: Icon(Icons.email, color: Color(0xFF00695C)),
                      title: Text(email),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
