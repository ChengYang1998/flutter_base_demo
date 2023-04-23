import 'package:flutter/material.dart';

void main() {
  runApp(const LessGroupPage());
}

///  StatelessWidget与基础组件   不需要内部状态管理、改变、重新渲染
class LessGroupPage extends StatelessWidget {
  const LessGroupPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(fontSize: 20);

    return MaterialApp(
      title: 'StatelessWidget与基础组件',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('StatelessWidget与基础组件'),
        ),
        body: Container(
          //装饰器
          decoration: const BoxDecoration(color: Colors.white),
          //设置居中方式
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Text(
                "i am a text",
                //设置文字 style大小
                style: textStyle,
              ),
              //设置一个图标
              const Icon(
                Icons.android,
                size: 50,
                color: Colors.green,
              ),
              //关闭按钮
              const CloseButton(),
              //返回按钮
              const BackButton(),
              //类似于一个小的线性布局
              const Chip(
                avatar: Icon(Icons.photo),
                label: Text("StatelessWidget与基础组件"),
              ),
              const Divider(
                //容器高度
                height: 10,
                //左侧间距
                indent: 10,
                endIndent: 10,
                color: Colors.orange,
              ),

              Card(
                //带有圆角阴影边框的卡片
                color: Colors.purple,
                //阴影
                elevation: 5,
                margin: EdgeInsets.all(10),
                child: Container(
                  padding: EdgeInsets.all(30),
                  child: Text(
                    "Card",
                    style: textStyle,
                  ),
                ),
              ),
              const AlertDialog(
                title: Text("弹框"),
                icon: Icon(Icons.android),
                content: Text("弹框的内容"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
