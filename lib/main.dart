import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'pages/account.dart';
import 'pages/location.dart';
import 'pages/landing.dart';
import 'pages/rewards.dart';
import 'pages/menu.dart';
import 'pages/schedule.dart';
import 'pages/member.dart';

final controller = PageController(initialPage: 0);
void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static const appTitle = 'Bert\'s SpeakCheezy';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: const HomeScreen(),
      theme: ThemeData.dark(),
      routes: {
        'main': (context) => const LandingPage(),
        'menu': (context) => const MenuPage(),
        'schedule': (context) => const SchedulePage(),
        'rewards': (context) => const RewardsPage(),
        'member': (context) => const MemberPage(),
        'location': (context) => const LocationPage(),
        'account': (context) => const AccountPage(),
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int screenIndex = 0;

  static const List<Widget> _pages = <Widget>[
    LandingPage(),
    MenuPage(),
    RewardsPage(),
    SchedulePage(),
    LocationPage(),
    MemberPage(),
  ];

  void handleScreenChanged(int selectedScreen) {
    setState(() {
      screenIndex = selectedScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Bert\'s SpeakCheezy',
            style: GoogleFonts.limelight(
                fontWeight: FontWeight.bold, fontSize: 18),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  controller.animateToPage(4,
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn);
                },
                icon: const Icon(Icons.location_on_rounded)),
            IconButton(
              onPressed: () {
                controller.animateToPage(5,
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn);
              },
              icon: const Icon(Icons.account_circle),
            )
          ]),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.amber.shade600,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 8,
            tabBorderRadius: 2,
            onTabChange: (index) {
              controller.animateToPage(index,
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn);
            },
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.dining,
                text: 'Menu',
              ),
              GButton(
                icon: PhosphorIconsFill.trophy,
                text: 'Rewards',
              ),
              GButton(
                icon: Icons.calendar_month,
                text: 'Schedule',
              )
            ],
          ),
        ),
      ),
      body: PageView(
          controller: controller,
          physics: NeverScrollableScrollPhysics(),
          children: [
            LandingPage(),
            MenuPage(),
            RewardsPage(),
            SchedulePage(),
            LocationPage(),
            MemberPage()
          ]),
    );
  }
}
