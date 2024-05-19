import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rosella/models/user.dart';

Widget Tile(BuildContext context, int index) {
  List<dynamic> itemIcon = [
    Icons.person_outlined,
    Icons.alternate_email,
    Icons.phone,
    Icons.link,
  ];

  List<String> itemValue = [
    username,
    "arsarsars1@gmail.com",
    "+923346361110",
    "https://www.linkedin.com/in/arsarsars1/"
  ];
  return InkWell(
    onTap: () async {
      await Clipboard.setData(ClipboardData(text: itemValue[index]));
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Coppied!")),
      );
    },
    splashColor: Colors.blue,
    borderRadius: BorderRadius.circular(100),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100), color: Colors.grey[100]),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(
          child: Row(children: [
            Icon(
              itemIcon[index],
              color: Colors.grey[500],
            ),
            const SizedBox(width: 15),
            Expanded(
                child: Text(itemValue[index],
                    style: const TextStyle(fontSize: 14))),
          ]),
        )
      ]),
    ),
  );
}
