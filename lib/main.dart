import 'package:flutter/material.dart';
import 'package:hello_flutter/widget/createMaterialColor.dart';

import 'example/app_bar.dart';
import 'example/update_button.dart';

void main() {
  runApp(MyApp());
}

//1.使用Material风格
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  /**
   * MaterialApp 主要属性如下：
      title ： 在任务管理窗口中所显示的应用名字
      theme ： 应用各种 UI 所使用的主题颜色
      color ： 应用的主要颜色值（primary color），也就是安卓任务管理窗口中所显示的应用颜色
      home ： 应用默认所显示的界面 Widget
      routes ： 应用的顶级导航表格，这个是多页面应用用来控制页面跳转的，类似于网页的网址
      initialRoute ：第一个显示的路由名字，默认值为 Navigator.defaultRouteName
      onGenerateRoute ： 生成路由的回调函数，当导航的命名路由的时候，会使用这个来生成界面
      onLocaleChanged ： 当系统修改语言的时候，会触发这个回调
      navigatorObservers ： 应用 Navigator 的监听器
      debugShowMaterialGrid ： 是否显示 纸墨设计 基础布局网格，用来调试 UI 的工具
      showPerformanceOverlay ： 显示性能标签
      debugShowCheckedModeBanner ：是否显示右上角DEBUG标签 （调试开关）
      checkerboardRasterCacheImages ：检查缓存的图像开关，检测在界面重绘时频繁闪烁的图像（调试开关）
      showSemanticsDebugger ：是否打开Widget边框，类似Android开发者模式中显示布局边界（调试开关）

      参考：https://www.jianshu.com/p/e4aa45ff08d6
   */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //去除debug 右上角图标
      debugShowCheckedModeBanner: false,
      title: "HelloFlutter",
      theme: ThemeData(
        //brightness: Brightness.dark
        //为primarySwatch使用自定义颜色16进制值
        //primarySwatch: createMaterialColor(Color(0xFF4192F4)),
        primarySwatch: Colors.blue,
        //primaryColor: Colors.white,
        //dividerColor: Color(0xffeeeeee),
        //scaffoldBackgroundColor: Colors.blue,
        //textTheme: TextTheme(bodyText2: TextStyle(color: Colors.purple)),
      ),
      //home: UpdateButton();
      home: SafeArea(
        child: MyScaffold(),
      ),
      //color:  Color(0xff4192F4),
      //debugShowMaterialGrid: true,
      //showPerformanceOverlay: true,
      //checkerboardRasterCacheImages: true,
    );
  }
}
