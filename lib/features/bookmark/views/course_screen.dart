import 'package:flutter/material.dart';
import 'package:myapp/features/bookmark/controller/bookmark_controller.dart';
import 'package:myapp/features/bookmark/views/favourite_screen.dart';
import 'package:provider/provider.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      "Flutter Master Course",
      "Python Master Course",
      "Dart Basic",
      "UI/UX Course",
      "AI/ML Course",
    ];
    final bookmarkController = context.watch<BookmarkController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("All Courses"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => FavouriteScreen()));
            },
            icon: Icon(Icons.bookmark),
          ),
          // CircleAvatar(
          //   radius: 8,
          //   backgroundColor: Colors.amberAccent,
          //   child: Center(
          //     child: Text("Count", style: TextStyle(fontSize: 10, color: Colors.white)),
          //   ),
          // ),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          final isFavourite = bookmarkController.isContain(item);

          return ListTile(
            title: Text(item),
            trailing: IconButton(
              onPressed: () {
                bookmarkController.toogleFavourite(item);
              },
              icon: Icon(
                (isFavourite) ? Icons.favorite : Icons.favorite_border,
                color: (isFavourite) ? Colors.red : null,
              ),
            ),
          );
        },
      ),
    );
  }
}
