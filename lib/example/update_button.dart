import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';

class UpdateButton extends StatefulWidget {
  const UpdateButton({Key? key}) : super(key: key);

  @override
  _UpdateButtonState createState() => _UpdateButtonState();
}

class _UpdateButtonState extends State<UpdateButton> {

  final defaultText='I Like Flutter!';

  //Default placeholder text.
  String textToShow = 'I Like Flutter!';
  String _updateTextToShow = 'Flutter is Awesome!';


  void _updateText(){

    setState(() {
      LogUtil.e("textToShow==defaultText=${textToShow==defaultText}");
      // Update the text.
      if(textToShow==defaultText){
        textToShow = _updateTextToShow;
      }else{
        textToShow= defaultText;
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    /**
     * Scaffold 主要的属性说明
        appBar：显示在界面顶部的一个 AppBar
        相关连接：https://flutterchina.club/catalog/samples/

        body：当前界面所显示的主要内容

        floatingActionButton： 在 Material 中定义的一个功能按钮。

        persistentFooterButtons：固定在下方显示的按钮。https://material.google.com/components/buttons.html#buttons-persistent-footer-buttons

        drawer：侧边栏控件

        bottomNavigationBar：显示在底部的导航栏按钮栏。可以查看文档：Flutter学习之制作底部菜单导航

        backgroundColor：背景颜色

        resizeToAvoidBottomPadding： 控制界面内容 body
        是否重新布局来避免底部被覆盖了，比如当键盘显示的时候，重新布局避免被键盘盖住内容。默认值为 true。
     */
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample App'),
      ),
      body: Center(child: Text(textToShow)),
      floatingActionButton: FloatingActionButton(
        onPressed: _updateText,
        tooltip: 'Update Text',
        child: const Icon(Icons.update),
      ),
    );
  }
}
