import 'package:flutter/material.dart';

class ProjectDetailsView extends StatelessWidget {
  const ProjectDetailsView({
    super.key,
    required this.text,
    required this.description,
    required this.image,
  });

  final String text;
  final String description;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(image), fit: BoxFit.fitHeight),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(12),
                child: Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    Text(description),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
