import 'package:air_bnb_clone_/screens/home/widgets/location_search_box_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../widgets/custom_icon_button_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: AppBar(
          elevation: 1,
          toolbarHeight: 200,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LocationSearchBox(),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    CustomIconButton(
                      index: 1,
                      selectedIndex: _selectedIndex,
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 1;
                        });
                      },
                      icon: IconlyLight.discovery,
                      label: 'Rooms',
                    ),
                    const SizedBox(width: 30),
                    CustomIconButton(
                      index: 2,
                      selectedIndex: _selectedIndex,
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 2;
                        });
                      },
                      icon: IconlyLight.work,
                      label: 'Ghana',
                    ),
                    // Add more CustomIconButton widgets as needed...
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: const <Widget>[
          Center(child: Text('No icon selected')),
          Column(
            children: <Widget>[
              Text('First icon selected'),
              // Add more widgets as needed...
            ],
          ),
          Column(
            children: <Widget>[
              Text('Second icon selected'),
              // Add more widgets as needed...
            ],
          ),
          // Add more widget lists as needed...
        ],
      ),
    );
  }
}
