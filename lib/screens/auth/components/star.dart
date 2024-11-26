import 'package:flutter/material.dart';
import 'package:doctors/constants.dart';

class Star extends StatelessWidget {
  const Star({
    super.key,
    required this.score,
  });
  final int score;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        score,
        (index) => Padding(
          padding: const EdgeInsets.only(right: defaultPadding / 4),
          child: Image.asset("assets/icons/star.png"),
        ),
      ),
    );
  }
}



  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.star,size: 16,color: Colors.amber,),
        Icon(Icons.star,size: 16,color: Colors.amber,),
        Icon(Icons.star,size: 16,color: Colors.amber,),
        Icon(Icons.star,size: 16,color: Colors.amber,),
        Icon(Icons.star,size: 16,color: Colors.amber,),

      
      ],
    );
  }
