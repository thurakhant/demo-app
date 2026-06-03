import 'package:flutter/material.dart';
import 'package:myapp/features/bookmark/controller/bookmark_controller.dart';
import 'package:provider/provider.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bookmarkController = context.watch<BookmarkController>();
    final favItems = bookmarkController.favouriteItems;

    return Scaffold(
      appBar: AppBar(title: Text("My Favourite")),
      body: favItems.isEmpty
          ? Center(child: Text("Ma shii boo"))
          : ListView.builder(
              itemCount: favItems.length,
              itemBuilder: (context, index) {
                final item = favItems[index];
                return ListTile(
                  title: Text(item),
                  trailing: IconButton(
                    onPressed: () {
                      bookmarkController.toogleFavourite(item);
                    },
                    icon: Icon(Icons.delete, color: Colors.red),
                  ),
                );
              },
            ),
    );
  }
}
