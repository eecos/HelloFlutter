import 'package:flutter/material.dart';
import 'package:hello_flutter/example/demo5.dart';

class BottomSheetDemo extends StatefulWidget {
  const BottomSheetDemo({Key? key}) : super(key: key);

  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  void _event1() async{
    print('=========1======');
    //int selectedIndex = await _showCustomModalBottomSheet(context, _options);
   // print("自定义底部弹层：选中了第$selectedIndex个选项");
  }

  void _event2() async{
    print('=========2======');
  }

  void _event3() async{
    print('=========3======');
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('BottomSheet'),
      ),
      body: Container(
        margin: EdgeInsetsDirectional.all(80),
        decoration: BoxDecoration(
          border: new Border.all(color: Colors.grey, width: 0.5), // 边色与边宽度
          borderRadius: BorderRadius.circular(10.0),
        ),
        //卡片倾斜变换
        alignment: Alignment.center,
        child: Center(
          child: GridView.count(
            shrinkWrap: true,
            //水平子Widget之间间距
            crossAxisSpacing: 10.0,
            //垂直子Widget之间间距
            mainAxisSpacing: 10.0,
            //GridView内边距
            padding: EdgeInsets.all(10.0),
            //一行的Widget数量
            crossAxisCount: 1,
            //子Widget宽高比例
            childAspectRatio: 3.0,
            //子Widget列表
            children: [
              ElevatedButton(onPressed: _event1, child: Text("基础底部弹框")),
              ElevatedButton(onPressed: _event2, child: Text("全屏底部弹框")),
              ElevatedButton(onPressed: _event3, child: Text("自定底部弹框"))
            ],
          ),
        ),
      ),
    );
  }
}


