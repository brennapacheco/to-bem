import 'dart:math';

import 'package:flutter/material.dart';
import 'package:to_bem/components/patterns.dart';
import '../components/activity_item.dart';
import '../data/activity_data.dart';
import 'package:confetti/confetti.dart';

class ActivitiesPage extends StatefulWidget {
  const ActivitiesPage({Key? key}) : super(key: key);

  @override
  State<ActivitiesPage> createState() => _ActivitiesPageState();
}

class _ActivitiesPageState extends State<ActivitiesPage> {
  int _selectedIndex = 0;
  late TextEditingController _feelingsTextController;
  late ConfettiController _controllerBottomCenter;

  @override
  void initState() {
    super.initState();
    _feelingsTextController = TextEditingController();
    _controllerBottomCenter =
        ConfettiController(duration: const Duration(seconds: 5));
  }

  @override
  void dispose() {
    _feelingsTextController.dispose();
    _controllerBottomCenter.dispose();
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
      backgroundColor: const Color(0xFFF8F8FB),
      appBar: buildAppBar(),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16, top: 30),
            child: buildWelcomeText(),
          ),
          Stack(children: [
            GridView(
              shrinkWrap: true,
              padding: const EdgeInsets.only(left: 16, top: 20, right: 16),
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
            Container(
                height: 100,
                color: const Color(0xFFF8F8FB),
                margin: const EdgeInsets.only(top: 430),
                child: Column(
                  children: [
                    buildFeelingsInput(_feelingsTextController, context),
                    Align(
                      alignment: Alignment.center,
                      child: ConfettiWidget(
                        confettiController: _controllerBottomCenter,
                        blastDirection: -pi / 2,
                        emissionFrequency: 0.01,
                        numberOfParticles: 20,
                        maxBlastForce: 100,
                        minBlastForce: 80,
                        gravity: 0.3,
                      ),
                    ),
                  ],
                )),
          ]),
        ],
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color(0xFFA6A9E8),
        label: const Text('Salvar'),
        icon: const Icon(
          Icons.done_rounded,
          color: Color(0xFFF8F8FB),
        ),
        onPressed: () {
          _controllerBottomCenter.play();
        }, //TODO: armazena atividades feitas
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
