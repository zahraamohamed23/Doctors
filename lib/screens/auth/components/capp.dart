import 'package:doctors/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.text,
    required this.title,
  });

  final String text, title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Row(
        children: [
          Text.rich(
            TextSpan(
              text: "$text\n",
              style: Theme.of(context).textTheme.titleLarge,
              children: [
                TextSpan(
                  text: title,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Scaffold(), // replace scaffold with new search page
              ),
            ),
            icon: Image.asset("assets/icons/Serach.png"),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/icons/Chat.png"),
          ),
        ],
      ),
    );
  }
}