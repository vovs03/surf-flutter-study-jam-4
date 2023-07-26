import 'package:flutter/material.dart';

/// MagicBallScreen is interface of App
/// Has only a picture
/// and Text as a command for user
class MagicBallScreen extends StatelessWidget {
  const MagicBallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            //Decoration
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black87,
                    Color.fromARGB(255, 36, 6, 85),
                  ],
                ),
              ),
            ),

            //Image
            Center(
              child: Image.asset('assets/images/ball.png'),
            ),

            //Text
            Positioned(
              bottom: 30,
              child: RichText(
                text: const TextSpan(
                  text: ' Нажмите на шар или \n потрясите телефон',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: Colors.amber),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
