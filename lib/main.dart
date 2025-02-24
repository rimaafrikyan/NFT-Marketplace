import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_marketplace/glassmorphism.dart';
import 'package:nft_marketplace/home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xFF121212),
        cardColor: Color(0xFF1E1E1E),
      ),
      home: LandingPage(), 
    );
  }
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/images/background.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 20.0),
                Center(
                  child: Text(
                    'Welcome to\nNFT Marketplace',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Glassmorphism(
                    blur: 15,
                    opaccity: 0.2,
                    radius: 20,
                    child: Container(
                      height: 200,
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        children: [
                          Text(
                            'Explore and Mint NFTs',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 24),
                          const Spacer(),
                          Glassmorphism(
                            blur: 20,
                            opaccity: 0.1,
                            radius: 50.0,
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Home(),
                                  ),
                                );
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 18,
                                  horizontal: 24,
                                ),
                                child: const Text(
                                  'Get started now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
