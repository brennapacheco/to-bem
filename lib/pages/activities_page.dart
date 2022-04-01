import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:to_bem/components/activity_item.dart';
import 'package:to_bem/components/patterns.dart';
import 'package:to_bem/data/activity_data.dart';

class ActivitiesPage extends StatefulWidget {
  const ActivitiesPage({Key? key}) : super(key: key);

  @override
  _ActivitiesPageState createState() => _ActivitiesPageState();
}

class _ActivitiesPageState extends State<ActivitiesPage> {
  late TextEditingController _feelingsTextController;
  late ConfettiController _controllerBottomCenter;

  @override
  void initState() {
    super.initState();
    _feelingsTextController = TextEditingController();
    _controllerBottomCenter =
        ConfettiController(duration: const Duration(seconds: 3));
  }

  @override
  void dispose() {
    _feelingsTextController.dispose();
    _controllerBottomCenter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        title('Me conta o que você fez hoje :)', 'Bom te ver, @user!'),
        Stack(
          children: [
            GridView(
              shrinkWrap: true,
              padding: const EdgeInsets.only(left: 16, top: 20, right: 16),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              children: ACTIVITIES.map((activity) {
                return ActivityItem(activity);
              }).toList(),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: ConfettiWidget(
                confettiController: _controllerBottomCenter,
                blastDirectionality: BlastDirectionality.explosive,
                emissionFrequency: 0.01,
                numberOfParticles: 20,
                minBlastForce: 10,
                gravity: 0.5,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 440),
              child: Column(
                children: [
                  buildFeelingsInput(_feelingsTextController, context),
                ],
              ),
            ),
          ],
        ),
        /* floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: buildFloatingBtExt(); */
      ],
    );
  }

  FloatingActionButton buildFloatingBtExt() {
    return FloatingActionButton.extended(
      backgroundColor: const Color(0xFFA6A9E8),
      label: const Text('Salvar'),
      icon: const Icon(
        Icons.done_rounded,
        color: Color(0xFFF8F8FB),
      ),
      onPressed: () {
        _controllerBottomCenter.play();
      }, //TODO: armazenar atividades feitas
    );
  }
}
