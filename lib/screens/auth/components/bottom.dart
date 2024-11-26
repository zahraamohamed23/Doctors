
import 'package:flutter/material.dart';
import 'package:doctors/models/available_doctor.dart';
import 'package:doctors/models/specialist.dart';
import 'package:doctors/screens/auth/components/specialist_doctor.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int activeIndex = 0;
  final List<Widget> _pages = [
    const Specialist(),
    DoctorsSpecialist(availableDoctor: demoAvailableDoctors),
    Container(), 
    Container(), 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[activeIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 15,
        unselectedFontSize: 15,
        currentIndex: activeIndex,
        onTap: (index) {
          setState(() {
            activeIndex = index;
          });
        },
        items: [
          const BottomNavigationBarItem(
            icon:Text("assets/icons/home.png") ,
          
          ),
          BottomNavigationBarItem(
            icon: buildIconItem(Icons.person, 'Doctors', 1),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Text("assets/icons/edit.png"),
          ),
          BottomNavigationBarItem(
            icon: buildIconItem(Icons.group, 'Person', 3),
            label: '',
          ),
        ],
      ),
    );
  }

  Widget buildIconItem(IconData icon, String title, int index) {
  bool isActive = activeIndex == index;
  return Container(
    height: 30,
    margin: const EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      color: isActive ? Colors.blue : Colors.transparent,
      borderRadius: BorderRadius.circular(10),  
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: 
        Icon(
          icon,
          color: isActive ? Colors.white : Colors.black,
          size: 30,
        ),),
     
        if (isActive) 
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ],
    
    ),
  );
}}