import 'package:flutter/material.dart';


class IconCategories extends StatelessWidget {
  const IconCategories({
    super.key,
    required this.icon,
    required this.title,
  });
final String icon;
final String title;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
                    height: 90,
                    width: 100,
                    decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                        child: Image.asset(icon,height: 40,)),
                          const SizedBox(height: 5,),
                          Text(title,style: const TextStyle(fontSize: 14,color: Colors.black),)
                      ],
                    )
                  ),
    ) ;
  }
}