import 'package:air_bnb_clone_/screens/explore/screens/stays_screen.dart';
import 'package:air_bnb_clone_/screens/explore/widgets/category_tab.dart';
import 'package:air_bnb_clone_/screens/explore/widgets/custom_bottom_appbar_buttons.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int index = 1; index <= 2; index++)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ExploreTabController(
                  label: index == 1 ? 'Stays' : 'Experiences',
                  index: index,
                  selectedIndex: _selectedIndex,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                ),
              ),
          ],
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          // child: IconButton.filled(
          //   style: ButtonStyle(
          //     backgroundColor: MaterialStateProperty.all(
          //       color.background,
          //     ),
          //   ),
          //   onPressed: () {},
          //   icon: Icon(
          //     Icons.menu,
          //     color: color.primary,
          //   ),
          // ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color.background,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 5,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: IconButton(
              onPressed: () {
                Navigator.canPop(context) ? Navigator.pop(context) : null;
              },
              iconSize: 20,
              icon: Icon(
                Icons.close,
                color: color.primary,
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Visibility(visible: _selectedIndex == 1, child: const StaysScreen()),
          Visibility(visible: _selectedIndex == 2, child: const StaysScreen()),
        ],
      ),
      bottomNavigationBar: CustomBottomAppBarButtons(
        onClearAllPressed: () {},
        onSearchPressed: () {},
      ),
    );
  }
}
