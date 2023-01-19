import 'package:flutter/cupertino.dart';

import '../global.dart';


class GamePageIOS extends StatefulWidget {
  const GamePageIOS({Key? key}) : super(key: key);

  @override
  State<GamePageIOS> createState() => _GamePageIOSState();
}

class _GamePageIOSState extends State<GamePageIOS> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: CupertinoColors.white,
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(12),
                alignment: Alignment.bottomLeft,
                child: const Text(
                  "Games",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: ListView(
                  children: Globals.allGames
                      .map((e) => Container(
                    margin: const EdgeInsets.all(4),
                    height: 90,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: CupertinoColors.systemBlue.withOpacity(0.01),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            color: CupertinoColors.systemBlue.withOpacity(0.05),
                            border: Border.all(color: CupertinoColors.black.withOpacity(0.2)),
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                e["image"].toString(),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Spacer(),
                              Text(
                                "${e["name"]}",
                                style:
                                const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 7),
                              Text(
                                (e["cat"] == null) ? "" : "${e["cat"]}",
                                style: const TextStyle(fontSize: 15),
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                        const Spacer(),
                        ("" == "up")
                            ? SizedBox(
                          height: 30,
                          width: 70,
                          child: CupertinoButton(
                            color: CupertinoColors.systemGrey.withOpacity(0.2),
                            onPressed: () {},
                            padding: EdgeInsets.zero,
                            borderRadius: BorderRadius.circular(25),
                            child: const Text(
                              "Update",
                              style: TextStyle(
                                color: CupertinoColors.systemBlue,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        )
                            : SizedBox(
                          height: 30,
                          width: 70,
                          child: CupertinoButton(
                            color: CupertinoColors.systemGrey.withOpacity(0.2),
                            onPressed: () {},
                            padding: EdgeInsets.zero,
                            borderRadius: BorderRadius.circular(25),
                            child: const Text(
                              "GET",
                              style: TextStyle(
                                color: CupertinoColors.systemBlue,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),)
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}