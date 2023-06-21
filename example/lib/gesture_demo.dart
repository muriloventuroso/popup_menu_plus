import 'package:flutter/material.dart';
import 'package:popup_menu2/popup_menu.dart';

class GestureDemo extends StatefulWidget {
  const GestureDemo({super.key});

  @override
  State<StatefulWidget> createState() {
    return _GestureDemoState();
  }
}

class _GestureDemoState extends State<GestureDemo> {
  GlobalKey btnKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scroll Gestures'),
      ),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return const SizedBox(
                height: 50.0,
                child: Text('test'),
              );
            },
          ),
          Positioned(
            left: 100.0,
            top: 100.0,
            width: 100.0,
            height: 50.0,
            child: MaterialButton(
              key: btnKey,
              onPressed: onShow,
              child: const Text('show'),
            ),
          )
        ],
      ),
    );
  }

  void onShow() {
    PopupMenu menu = PopupMenu(
        // backgroundColor: Colors.teal,
        // lineColor: Colors.tealAccent,
        // maxColumn: 2,
        config: const MenuConfig(
          backgroundColor: Colors.green,
          lineColor: Colors.greenAccent,
          highlightColor: Colors.lightGreenAccent,
        ),
        context: context,
        items: [
          PopUpMenuItem(title: 'Copy', image: Image.asset('assets/copy.png')),
          PopUpMenuItem(
              title: 'Home',
              // textStyle: TextStyle(fontSize: 10.0, color: Colors.tealAccent),
              image: const Icon(
                Icons.home,
                color: Colors.white,
              )),
          PopUpMenuItem(
              title: 'Mail',
              image: const Icon(
                Icons.mail,
                color: Colors.white,
              )),
          PopUpMenuItem(
              title: 'Power',
              image: const Icon(
                Icons.power,
                color: Colors.white,
              )),
          PopUpMenuItem(
              title: 'Setting',
              image: const Icon(
                Icons.settings,
                color: Colors.white,
              )),
          PopUpMenuItem(
              title: 'PopupMenu',
              image: const Icon(
                Icons.menu,
                color: Colors.white,
              ))
        ],
        onClickMenu: onClickMenu,
        // stateChanged: stateChanged,
        onDismiss: onDismiss);
    menu.show(widgetKey: btnKey);
  }

  void onClickMenu(PopUpMenuItemProvider item) {}

  void onDismiss() {}
}
