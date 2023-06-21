<img src="popupmenu.png" >

This project is a fork of chinabrant/popup_menu.

# Screenshot
<img src="01.png" >
<img src="02.png">
<img src="03.png">
<img src="04.png">

# Todo
- [ ] show/hide animation

# Usage

You can find the demo at the 'example' folder.

```dart
PopupMenu menu = PopupMenu(
      context: context,
      config: const MenuConfig(
        backgroundColor: Colors.green,
        lineColor: Colors.greenAccent,
        highlightColor: Colors.lightGreenAccent,
      ),
      items: [
        PopUpMenuItem(title: 'Copy', image: Image.asset('assets/copy.png')), 
        PopUpMenuItem(title: 'Home', image: Icon(Icons.home, color: Colors.white,)), 
        PopUpMenuItem(title: 'Mail', image: Icon(Icons.mail, color: Colors.white,)), 
        PopUpMenuItem(title: 'Power', image: Icon(Icons.power, color: Colors.white,)),
        PopUpMenuItem(title: 'Setting', image: Icon(Icons.settings, color: Colors.white,)), 
        PopUpMenuItem(title: 'Traffic', image: Icon(Icons.traffic, color: Colors.white,))], 
      onClickMenu: onClickMenu, 
      onShow: onShow,
      onDismiss: onDismiss);

menu.show(rect: rect);


```

or

```dart
PopupMenu menu = PopupMenu(
        context: context,
        config: const MenuConfig(
            backgroundColor: Colors.green,
            lineColor: Colors.greenAccent,
            highlightColor: Colors.lightGreenAccent,
        ),
        backgroundColor: Colors.teal,
        lineColor: Colors.tealAccent,
        maxColumn: 3,
        items: [
          PopUpMenuItem(title: 'Copy', image: Image.asset('assets/copy.png')),
          PopUpMenuItem(
              title: 'Home',
              textStyle: TextStyle(fontSize: 10.0, color: Colors.tealAccent),
              image: Icon(
                Icons.home,
                color: Colors.white,
              )),
          PopUpMenuItem(
              title: 'Mail',
              image: Icon(
                Icons.mail,
                color: Colors.white,
              )),
          PopUpMenuItem(
              title: 'Power',
              image: Icon(
                Icons.power,
                color: Colors.white,
              )),
          PopUpMenuItem(
              title: 'Setting',
              image: Icon(
                Icons.settings,
                color: Colors.white,
              )),
          PopUpMenuItem(
              title: 'PopupMenu',
              image: Icon(
                Icons.menu,
                color: Colors.white,
              ))
        ],
        onClickMenu: onClickMenu,
        onDismiss: onDismiss);
    menu.show(widgetKey: btnKey2);
```
