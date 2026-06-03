import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: h, child: const _HeroSection()),
            SizedBox(height: h, child: const _WorkSection()),
            SizedBox(height: h, child: const _ExperienceSection()),
          ],
        ),
      ),
    );
  }
}

class _HeroSection extends StatelessWidget {
  const _HeroSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[50],
      width: double.infinity,
      padding: const EdgeInsets.all(32),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Hero Section', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text('Name, title, and short intro goes here.'),
        ],
      ),
    );
  }
}

class _WorkSection extends StatelessWidget {
  const _WorkSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[50],
      width: double.infinity,
      padding: const EdgeInsets.all(32),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Work Section', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text('Projects go here.'),
        ],
      ),
    );
  }
}

class _ExperienceSection extends StatelessWidget {
  const _ExperienceSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[50],
      width: double.infinity,
      padding: const EdgeInsets.all(32),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Experience Section', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text('Work history goes here.'),
        ],
      ),
    );
  }
}
