// ignore_for_file: prefer_const_constructors_in_immutables

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_thai_hotline_app/views/travel_ui.dart';

class SplashScreenUi extends StatefulWidget {
  SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {
  late final Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 3), () {
      if (!mounted) {
        return;
      }
      Navigator.of(context).pushReplacement<void, void>(
        MaterialPageRoute<void>(builder: (context) => const SubAHomeUI()),
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/icon/icon.png',
              width: 160,
              height: 160,
            ),
            SizedBox(height: 24),
            Text(
              'THAI HOTLINE APP\nสายด่วน',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),
            SizedBox(
              width: 32,
              height: 32,
              child: CircularProgressIndicator(
                color: Color.fromARGB(255, 1, 35, 128),
                strokeWidth: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
