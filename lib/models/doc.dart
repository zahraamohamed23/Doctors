class Doctor {
  final String name;
  final String image;
  final String speciality;
  final String institute;

  Doctor({
    required this.speciality,
    required this.image,
    required this.institute,
    required this.name,
  });
}

List<Doctor> getDoctor = [
    Doctor(
      name: 'Dr. Salina Zaman',
      image: 'assets/images/Salina_Zaman.png',
      speciality: 'Medicine & Heart Specialist',
      institute: 'Good Health Clinic',
    ),
    Doctor(
      name: 'Dr. Serena Gome',
      image: 'assets/images/Serena_Gome.png',
      speciality: 'Cardiologist',
      institute: 'Heart Center',
    ),
    Doctor(
      name: 'Dr. John Doe',
      image: 'assets/images/Johir_Raihan.png',
      speciality: 'General Practitioner',
      institute: 'Family Clinic',
    ),
  ];