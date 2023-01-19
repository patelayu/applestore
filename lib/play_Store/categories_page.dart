import 'package:flutter/material.dart';

import '../global.dart';


class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: Globals.appCategories.map((e){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 48,
                backgroundImage: NetworkImage(e["icon"]),
              ),
              title: Text(e["name"],style: const TextStyle(color: Colors.black,fontSize: 16),),
            ),
          );
        }).toList(),
      ),
    );
  }
}


class CategoriesGame extends StatelessWidget {
  const CategoriesGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: Globals.gameCategories.map((e){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 48,
                backgroundImage: NetworkImage(e["icon"]),
              ),
              title: Text(e["name"],style: const TextStyle(color: Colors.black,fontSize: 16),),
            ),
          );
        }).toList(),
      ),
    );
  }
}