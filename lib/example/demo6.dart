import 'package:flutter/material.dart';

import 'package:bottom_bar_with_sheet/bottom_bar_with_sheet.dart';
import 'package:flutter/material.dart';

class DottomBarWithSheet extends StatefulWidget {
  @override
  _DottomBarWithSheetState createState() => _DottomBarWithSheetState();
}

class _DottomBarWithSheetState extends State<DottomBarWithSheet> {
  final _bottomBarController = BottomBarWithSheetController(initialIndex: 0);

  @override
  void initState() {
    // _bottomBarController.itemsStream.listen((i) {
    //   print('Index $i is selcted');
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: const Center(
        child: Text(
          "Place for your content",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      bottomNavigationBar: BottomBarWithSheet(
        controller: _bottomBarController,
        bottomBarTheme: const BottomBarTheme(
          mainButtonPosition: MainButtonPosition.left,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
          ),
          itemIconColor: Colors.grey,
          itemTextStyle: TextStyle(
            color: Colors.grey,
            fontSize: 10.0,
          ),
          selectedItemTextStyle: TextStyle(
            color: Colors.blue,
            fontSize: 10.0,
          ),
        ),
        //onSelectItem: (index) => print(index),
        sheetChild: Center(
          child: Text(
            "Another content",
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        items: const [
          // BottomBarWithSheetItem(icon: Icons.people),
          // BottomBarWithSheetItem(icon: Icons.shopping_cart),
          // BottomBarWithSheetItem(icon: Icons.settings),
          // BottomBarWithSheetItem(icon: Icons.favorite),
        ],
      ),
    );
  }
}