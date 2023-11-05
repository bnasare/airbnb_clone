import 'package:air_bnb_clone_/screens/home/widgets/discovery_widget.dart';
import 'package:air_bnb_clone_/screens/home/widgets/location_search_box_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../widgets/category_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;

  List<Map<String, dynamic>> categoryItems = [
    {'icon': IconlyLight.discovery, 'label': 'Discovery'},
    {'icon': IconlyLight.work, 'label': 'Work'},
    {'icon': IconlyLight.activity, 'label': 'Activity'},
    {'icon': IconlyLight.chart, 'label': 'Chart'},
    {'icon': IconlyLight.home, 'label': 'Home'},
    {'icon': IconlyLight.graph, 'label': 'Graph'},
    {'icon': IconlyLight.filter2, 'label': 'Filter'},
    {'icon': IconlyLight.message, 'label': 'Message'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(165),
        child: AppBar(
          elevation: 1,
          toolbarHeight: 165,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchBarWithFilter(),
              Container(
                margin: const EdgeInsets.only(left: 5, right: 5),
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryItems.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        CategoryTab(
                          index: index + 1,
                          selectedIndex: _selectedIndex,
                          onPressed: () {
                            setState(() {
                              _selectedIndex = index + 1;
                            });
                          },
                          icon: categoryItems[index]['icon'],
                          label: categoryItems[index]['label'],
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(width: 40),
                ),
              )
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: const <Widget>[
          DeliveryWidget(),
          DeliveryWidget(),
          DeliveryWidget(),
          DeliveryWidget(),
          DeliveryWidget(),
          DeliveryWidget(),
          DeliveryWidget(),
          DeliveryWidget(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Theme.of(context).colorScheme.primary,
        onPressed: () {},
        label: const Row(
          children: [
            Icon(
              Icons.map_outlined,
            ),
            SizedBox(
              width: 7,
            ),
            Text(
              'Map',
              style: TextStyle(fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
