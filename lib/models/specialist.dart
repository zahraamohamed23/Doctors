import 'package:flutter/material.dart';
import 'package:doctors/screens/auth/components/available.dart';
import 'package:doctors/screens/auth/components/icon_category.dart';
import 'package:doctors/models/data.dart';
import 'package:doctors/models/doc.dart';
import 'package:doctors/models/category.dart';

class SpecialistDoctor extends StatelessWidget {
  final Doctor doctors;
  final Data datas;

  const SpecialistDoctor(
      {super.key, required this.doctors, required this.datas});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(doctors.imageUrl, fit: BoxFit.cover),
          const SizedBox(height: 5),
          Text(
            doctors.name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            datas.speciality,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class Specialist extends StatefulWidget {
  const Specialist({super.key});

  @override
  State<Specialist> createState() => _SpecialistState();
}

class _SpecialistState extends State<Specialist> {
  @override
  Widget build(BuildContext context, dynamic getCategories) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 208, 228, 240),
        automaticallyImplyLeading: false,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
              Text('Find Your', style: TextStyle(fontSize: 18)),
              Text('Specialist',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: Image.asset("assets/icons/Search.png"),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset("assets/icons/event.png"),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: const Color.fromARGB(255, 208, 228, 240),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            const SizedBox(height: 10),
            SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: getDoctor.length,
                itemBuilder: (context, index) {
                  return SpecialistDoctor(
                      doctors: getDoctor[index], datas: getData[index]);
                },
              ),
            ),
            const SizedBox(height: 15),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Categories',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'See All',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  getCategories.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8),
                    child: IconCategories(
                      icon: getCategories[index].icon,
                      title: getCategories[index].title,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Available Doctors',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'See All',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: availableDoctors.length,
                itemBuilder: (context, index) {
                  return Available(availableDoctor: availableDoctors[index]);
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class Doctor {
  final String name;
  final String imageUrl;
  final String specialty;

  Doctor({required this.name, required this.imageUrl, required this.specialty});
}

List<Doctor> availableDoctors = [
  Doctor(
      name: 'Dr. 2',
      imageUrl: 'assets/images/search_doc_2.png',
      specialty: 'Cardiology'),
  Doctor(
      name: 'Dr. 3',
      imageUrl: 'assets/images/search_doc_3.png',
      specialty: 'Dermatology'),
];