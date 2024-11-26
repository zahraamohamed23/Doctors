class Category {
  final String icon, title;


  const Category({required this.icon, required this.title});
}


const List<Category> categories = [
  Category(icon: "assets/icons/Pediatrician.png", title: "Pediatrician"),
  Category(icon: "assets/icons/Neurosurgeon.png", title: "Neurosurgeon"),
  Category(icon: "assets/icons/Cardiologist.png", title: "Cardiologist"),
  Category(icon: "assets/icons/Psychiatrist.png", title: "Psychiatrist"),
];
