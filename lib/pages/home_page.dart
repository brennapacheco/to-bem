import 'package:flutter/material.dart';
import 'package:to_bem/components/patterns.dart';
import 'package:to_bem/pages/activities_page.dart';
import 'package:to_bem/pages/add_activities_page.dart';
import 'package:to_bem/pages/movies_page.dart';
import 'package:to_bem/store/home_page_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomePageStore homePageStore = HomePageStore();

  final List<Widget> _widgetoptions = <Widget>[
    const MoviesPage(),
    const ActivitiesPage(),
    const AddActivitiesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8FB),
      appBar: buildAppBar(),
      body: ValueListenableBuilder(
        valueListenable: homePageStore,
        builder: (context, value, child) {
          return IndexedStack(
            index: homePageStore.value,
            children: _widgetoptions,
          );
        },
      ),
      bottomNavigationBar: buildBottomNavBar(),
    );
  }

  ValueListenableBuilder buildBottomNavBar() {
    return ValueListenableBuilder(
      valueListenable: homePageStore,
      builder: (context, value, child) {
        return BottomNavigationBar(
          backgroundColor: const Color(0xFFA6A9E8),
          elevation: 2,
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: const Color(0xFFF8F8FB),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.movie_creation_outlined),
              label: 'Movies',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.looks),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline_rounded),
              label: 'Add Activity',
            ),
          ],
          currentIndex: homePageStore.value,
          onTap: homePageStore.updateIndex,
        );
      },
    );
  }
}
