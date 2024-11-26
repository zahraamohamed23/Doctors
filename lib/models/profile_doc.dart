import 'package:flutter/material.dart';


class DoctorProfilePage extends StatefulWidget {
  
  const DoctorProfilePage({super.key});

  @override
  _DoctorProfilePageState createState() => _DoctorProfilePageState();
}
  late final String icon, title;


class _DoctorProfilePageState extends State<DoctorProfilePage> {
  int _selectedFilter = 0;
  
  final List<Map<String, dynamic>> _filters = [
    {title: 'Voice Call', icon: 'assets/icons/Call.png'},
    {title: 'Video Call', icon: "assets/icons/Video.png"},
    {title: 'Message', icon: "assets/icons/Chat_box.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text(
          'Dr. Serena Gome',
          
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(_filters.length, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedFilter = index;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  decoration: BoxDecoration(
                    color: _selectedFilter == index
                        ? Theme.of(context).primaryColor
                        : Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
              
                    
                  ),
                  child: Row(
                    children: [
                      Icon(
                        _filters[index]['icon'],
                        color: _selectedFilter == index
                            ? Colors.white
                            : Theme.of(context).primaryColor,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        _filters[index]['title'],
                        style: TextStyle(
                          color: _selectedFilter == index
                              ? Colors.white
                              : Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
          const SizedBox(height: 20),
          Text(
            'Selected Filter: ${_filters[_selectedFilter]['title']}',
            style: const TextStyle(fontSize: 18),
          ),
          // Add the rest of the doctor profile content here
        ],
      ),
    );
  }
}