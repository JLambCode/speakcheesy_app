import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RewardsPage extends StatelessWidget {
  const RewardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              "Rewards",
              style: GoogleFonts.poiretOne(
                fontWeight: FontWeight.bold,
                color: Colors.amber.shade600,
                fontSize: 48,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0, bottom: 10, right: 20, left: 20),
            child: LinearProgressIndicator(
              borderRadius: BorderRadius.circular(2),
              minHeight: 30,
              value: .5,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.amber),
            ),
          ),
          Center(
            child: Text(
              "200 points to next reward",
              style: GoogleFonts.poiretOne(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
