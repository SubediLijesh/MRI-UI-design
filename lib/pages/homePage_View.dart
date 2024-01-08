import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mri/extension/app_color.dart';
import 'package:mri/views/scannerView.dart';
import 'package:mri/views/aboutApp.dart';
import 'package:mri/views/availableTumor.dart';

class HomepageView extends StatefulWidget {
  const HomepageView({super.key});

  @override
  State<HomepageView> createState() => _HomepageViewState();
}

class _HomepageViewState extends State<HomepageView> {
  int currentIndex = 0;

  GButton navButton(BuildContext context,
      {required icon, required text, onPressed}) {
    return GButton(
      icon: icon,
      text: text,
      iconActiveColor: Colors.white,
      iconColor: Colors.white,
      textStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.2,
        fontSize: 20,
      ),
      onPressed: onPressed,
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const ScannerView(),
      const TumorListScreen(),
      const AboutThisApp(),
    ];

    return Scaffold(
      body: SafeArea(
        child: pages[currentIndex],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 1.0,
            vertical: 1.5,
          ),
          child: GNav(
            haptic: true, // haptic feedback
            gap: 3.0,
            iconSize: 30.0,
            backgroundColor: Colors.transparent,
            activeColor: Colors.grey,
            tabBackgroundColor: Colors.black12,
            padding: EdgeInsets.all(12.0),
            tabs: [
              navButton(
                context,
                icon: FontAwesomeIcons.camera,
                text: 'Scanner',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomepageView(),
                    ),
                  );
                },
              ),
              navButton(
                context,
                icon: FontAwesomeIcons.magnifyingGlass,
                text: 'Available Tumors',
              ),
              navButton(
                context,
                icon: FontAwesomeIcons.brain,
                text: 'About this App',
              ),
            ],
            selectedIndex: currentIndex,
            onTabChange: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
