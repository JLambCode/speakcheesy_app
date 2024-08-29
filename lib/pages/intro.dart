import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speakcheesy_app/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 25),
            Text("Bert's SpeakCheezy",
                style: GoogleFonts.limelight(
                  fontSize: 50,
                )),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                'lib/images/berts-logo.png',
              ),
            ),
            const SizedBox(height: 25),
            Text("Cheddar days are finally here.",
                style: GoogleFonts.poiretOne(
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 50),
            Button(
              text: 'Get Started',
              onTap: () {
                Navigator.pushNamed(context, '/menupage');
              },
            )
          ],
        ),
      ),
    );
  }
}
