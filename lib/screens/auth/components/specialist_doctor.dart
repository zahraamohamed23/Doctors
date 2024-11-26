import 'package:flutter/material.dart';
import 'package:doctors/models/available_doctor.dart';


class DoctorsSpecialist extends StatelessWidget {
   const DoctorsSpecialist ({
    super.key,
    required this.availableDoctor,
  });
  final List<AvailableDoctor> availableDoctor; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 208, 228, 240),
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
              Text('Find Your', style: TextStyle(fontSize: 18)),
              Text('Specialist', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
            ],
          ),
        ),
        actions: [
           IconButton(onPressed: () {}, icon: const Text("assets/icons/Serach.png")),
          IconButton(onPressed: () {}, icon: const Text("assets/icons/event.png")),
        ],
      ),
      body: Center(
   child:  Container(
      color: const Color.fromARGB(255, 208, 228, 240),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, 
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.9, 
            mainAxisExtent: 230,
          ),
          itemCount: availableDoctor.length,
          itemBuilder: (context, index) {
            var availableDoctor2 = availableDoctor;
            return Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(availableDoctor2[index].name, style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                          Text(availableDoctor[index].sector, style: const TextStyle(fontSize: 14,color: Colors.black87),),
                          const SizedBox(height: 5,),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                          ),
                          const SizedBox(height: 10,),
                          const Text('Experience', style: TextStyle(fontSize: 12,color: Colors.black87),),
                          Text('${availableDoctor[index].experience} Years ', style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold,
                          color: Colors.black),),
                          const SizedBox(height: 10,),
                          const Text('Patients', style: TextStyle(fontSize: 12,color: Colors.black87),),
                          Text( availableDoctor[index].patients , style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold,
                          color: Colors.black),),
          
                        ],
                      ),
                      SizedBox(
                            width: 40,
                            height: 80,
                            child: ClipRRect( 
                            borderRadius: BorderRadius.circular(5), 
                            child: Image.asset(
                            availableDoctor[index].image,
                            fit: BoxFit.cover, 
                       ),
                     ),
                       )
          
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    ))
    );
  }
}

