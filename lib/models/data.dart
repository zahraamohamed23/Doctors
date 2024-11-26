class Data {
  final String name;
  final String image;
  final String speciality;
  final String institute;
  final String patients; 
  final int experience;
  final String reviews;



  Data({
    required this.speciality,
    required this.image,
    required this.institute,
    required this.name,
    required this.patients, 
    required this.experience,
    required this.reviews,
    
  });
}

List<Data> getData = [
  Data(
    name: 'Dr. Salina Zaman',
    image: 'assets/images/Salina_Zaman.png',
    speciality: 'Medicine & Heart Specialist',
    institute: 'Good Health Clinic, MBBS, FCPS',
    patients: '2.7K', 
    experience: 5 ,
    reviews: '2.05K',

 
  ),
  Data(
    name: 'Dr. Serena Gome',
    image: 'assets/images/Serena_Gome.png',
    speciality: 'Cardiologist',
    institute: 'Heart Center, MBBS, FCPS',
    patients: '1.08K', 
    experience: 8, 
    reviews: '2.05K',
  
  ),
  Data(
    name: 'Dr. John Doe',
    image: 'assets/images/Johir_Raihan.png',
    speciality: 'General Practitioner',
    institute: 'Family Clinic, MBBS, FCPS',
    patients: '2.7K', 
    experience: 5,
    reviews: '2.05K',  

  ),

  ];