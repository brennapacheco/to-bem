import 'package:flutter/material.dart';
import '../components/activity_item.dart';
import '../data/activity_data.dart';

class ActivitiesPage extends StatefulWidget {
  const ActivitiesPage({Key? key}) : super(key: key);

  @override
  State<ActivitiesPage> createState() => _ActivitiesPageState();
}

class _ActivitiesPageState extends State<ActivitiesPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F8FB),
        leading: Image.asset('assets/images/profile.jpg'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_horiz),
            color: const Color(0xFFA6A9E8),
            iconSize: 40,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Next page'),
                    ),
                    body: const Center(
                      child: Text(
                        'This is the next page',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: const [
                    Text('Bom te ver, @user!'),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: const [
                    Text(
                      'Me conta o que você fez hoje',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          GridView(
            shrinkWrap: true,
            padding: const EdgeInsets.only(left: 16, top: 80, right: 16),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            children: ACTIVITIES.map((activity) {
              return ActivityItem(activity);
            }).toList(),
          ),
          Container(
            padding: const EdgeInsets.only(left: 16, top: 450, right: 16),
            child: TextField(
              decoration: InputDecoration(
                hintText:
                    'Se não estiver tudo bem, gostaria de compartilhar sobre o que te afetou?',
                hintStyle: TextStyle(color: Color(0xFF576B9E), fontSize: 10.0),
                filled: true,
                fillColor: const Color(0xFFF8F8FB),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  /* borderSide: const BorderSide(
                    color: Color(0xFFF8F8FB),
                    width: 1.0,
                  ), */
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xFF576B9E),
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
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
        selectedItemColor: const Color(0xFF576B9E),
        unselectedItemColor: const Color(0xFFF8F8FB),
        onTap: _onItemTapped,
      ),
    );
  }
}
