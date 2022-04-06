import 'package:flutter/material.dart';
import 'package:to_bem/data/models/activities_model.dart';

class ActivityItem extends StatelessWidget {
  const ActivityItem(this.activity, {Key? key}) : super(key: key);

  final ActivitiesModel activity;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Text(activity.title),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [
              activity.color.withOpacity(0.5),
              activity.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
    );
  }
}
