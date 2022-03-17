import 'package:flutter/material.dart';
import 'package:to_bem/components/patterns.dart';
import '../components/activity_item.dart';
import '../data/activity_data.dart';

class ActivitiesPage extends StatefulWidget {
  const ActivitiesPage({Key? key}) : super(key: key);

  @override
  State<ActivitiesPage> createState() => _ActivitiesPageState();
}

class _ActivitiesPageState extends State<ActivitiesPage> {
  int _selectedIndex = 0;
  late TextEditingController _feelingsTextController;

  @override
  void initState() {
    super.initState();
    _feelingsTextController = TextEditingController();
  }

  @override
  void dispose() {
    _feelingsTextController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16, top: 30),
            child: buildWelcomeText(),
          ),
          Expanded(
            child: GridView(
              shrinkWrap: true,
              padding: const EdgeInsets.only(left: 16, top: 100, right: 16),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150,
                childAspectRatio: 2 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              children: ACTIVITIES.map((activity) {
                return ActivityItem(activity);
              }).toList(),
            ),
          ),
          buildFeelingsInput(_feelingsTextController, context),
          Container(
              margin: const EdgeInsets.only(left: 160, right: 16, top: 550),
              child: ElevatedButton(
                  onPressed: () {}, //TODO: armazenar tarefas + ativar confetes
                  child: const Text(
                      'salvar'))), 
        ],
      ),
      bottomNavigationBar: buildBottomNavBar(),
    );
  }

  BottomNavigationBar buildBottomNavBar() {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFFA6A9E8),
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
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.deepPurple,
      unselectedItemColor: const Color(0xFFF8F8FB),
      onTap: _onItemTapped,
    );
  }
}
