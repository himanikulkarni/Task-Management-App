import 'package:flutter/material.dart';

class Tab_Bar extends StatefulWidget {
  const Tab_Bar({super.key});

  @override
  State<Tab_Bar> createState() => _Tab_BarState();
}

class _Tab_BarState extends State<Tab_Bar> {
  final List<Tab> myTabs = <Tab>[
    const Tab(text: 'All tasks'),
    const Tab(text: 'In progress'),
    const Tab(text: 'Completed'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Column(
        children: [
          Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 31, 31, 31),
              ),
              child: TabBar(
                tabs: myTabs,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: const EdgeInsets.all(5),
                indicator: BoxDecoration(
                    color: const Color.fromARGB(255, 188, 186, 186),
                    borderRadius: BorderRadius.circular(20)),
              )),
          const SizedBox(
            height: 200,
            child: TabBarView(
              children: [
                // Define the content for Page 1
                Center(
                  child: Text(
                    'Page 1 Content',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                // Define the content for Page 2
                Center(
                  child: Text('Page 2 Content'),
                ),
                Center(
                  child: Text('Page 3 Content'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
