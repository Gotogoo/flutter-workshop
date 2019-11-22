import 'package:flutter/material.dart';

class OneTab {
  const OneTab({
    Key key,
    this.tab,
    this.rootWidget, Icon icon
  });

  final Tab tab;
  final Widget rootWidget;
}

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({
    Key key,
    this.tabs,
    this.themeColor
  }) : super(key: key);

  final List<OneTab> tabs;
  final Color themeColor;

  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  Widget _displayingChild;

  @override
  void initState() {
    setState(() {
      _displayingChild = widget.tabs[0].rootWidget;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _displayingChild,
      ),
      bottomNavigationBar: DefaultTabController(
        length: widget.tabs.length,
        child: Container(
          color: widget.themeColor,
          child: SafeArea(
            bottom: true,
            child: TabBar(
              indicatorColor: Colors.transparent,
              onTap: (index) => {
                setState(() { _displayingChild = widget.tabs[index].rootWidget; })
              },
              tabs: widget.tabs.map((oneTab) => oneTab.tab).toList()
            ),
          ),
        ),
      ),
    );
  }
}