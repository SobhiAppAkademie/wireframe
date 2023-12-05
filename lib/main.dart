import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Login page demo',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  TextStyle getBasicStyle({
    double fontSize = 16,
    Color color = Colors.white,
    FontWeight fontWeight = FontWeight.w600,
  }) {
    return TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF222831),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: Image(
                image: AssetImage("images/logo.png"),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "E-Mail",
                style: getBasicStyle(),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: const Center(
                  child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15),
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: "E-Mail",
                  border: InputBorder.none,
                ),
              )),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Passwort",
                style: getBasicStyle(),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Center(
                  child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(15),
                  hintStyle: getBasicStyle(
                      fontWeight: FontWeight.w500, color: Colors.grey),
                  hintText: "Passwort",
                  border: InputBorder.none,
                ),
              )),
            ),
            const SizedBox(height: 40),
            Center(
              child: Container(
                width: 250,
                decoration: BoxDecoration(
                    color: const Color(0xFFF9D679),
                    borderRadius: BorderRadius.circular(15)),
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: Text(
                    "Amelden",
                    style: getBasicStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            const Center(
              child: Text(
                "Passwort vergessen?",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Flexible(
                    flex: 2,
                    child: Divider(color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Noch kein Konto?",
                    style: getBasicStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Flexible(
                    flex: 2,
                    child: Divider(color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                "Kostenlos registrieren",
                style: getBasicStyle(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
