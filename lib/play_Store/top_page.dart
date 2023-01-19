import 'package:flutter/material.dart';


import '../global.dart';


class TopPageGame extends StatelessWidget {
  const TopPageGame ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
          children: Globals.allGames.map((e) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image(
                    image: NetworkImage(e["image"]),
                  ),
                ),
                title: Text(e['name']),
                subtitle: Text(e["cat"]),
              ),
            );
          }).toList()),
    );
  }
}




class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
          children: Globals.allApps.map((e) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image(
                    image: NetworkImage(e["image"]),
                  ),
                ),
                title: Text(e['name']),
                subtitle: Text(e["cat"]),
              ),
            );
          }).toList()),
    );
  }
}