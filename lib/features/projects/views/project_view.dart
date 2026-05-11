import 'package:flutter/material.dart';
import 'package:myapp/features/projects/views/project_details_view.dart';
import 'package:myapp/features/projects/widgets/project_card.dart';

class ProjectView extends StatelessWidget {
  const ProjectView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Project View")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            spacing: 30,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProjectCard(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ProjectDetailsView(
                        text: 'Project Alpha',
                        description:
                            'Project Alpha represents the pinnacle of autonomous data processing, engineered to function as a high-fidelity engine for decentralized information systems. At its core, it leverages a bespoke algorithmic framework that',
                        image: "assets/project_alpha.png",
                      ),
                    ),
                  );
                },
                image: 'assets/project_alpha.png',
                title: 'Project Alpha',
                description:
                    'A robust data processing engine designed for high-throughput environments.',
              ),
              ProjectCard(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ProjectDetailsView(
                        text: 'Zen App',
                        description:
                            'Delta Dashboard represents the pinnacle of autonomous data processing, engineered to function as a high-fidelity',
                        image: "assets/zen_app.png",
                      ),
                    ),
                  );
                },
                image: 'assets/zen_app.png',
                title: 'Zen App',
                description:
                    'A mindful approach to daily task management, focusing on singular objective completion.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
