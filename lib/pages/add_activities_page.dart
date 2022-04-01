import 'package:flutter/material.dart';

class AddActivitiesPage extends StatefulWidget {
  const AddActivitiesPage({ Key? key }) : super(key: key);

  @override
  _AddActivitiesPageState createState() => _AddActivitiesPageState();
}

class _AddActivitiesPageState extends State<AddActivitiesPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('AddActivity'),
      ),
    );
  }
}