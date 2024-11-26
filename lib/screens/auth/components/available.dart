import 'package:doctors/models/available_doctor.dart';
import 'package:doctors/screens/auth/components/star.dart';
import 'package:flutter/material.dart';
import 'package:doctors/constants.dart';

class AvailableDoctorCard extends StatelessWidget {
  const AvailableDoctorCard({
    super.key,
    required this.info,
  });

  final AvailableDoctor info;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Scaffold(), // replace scaffold with doctor screen page
              ));
        },
        child: Container(
          padding: const EdgeInsets.all(defaultPadding),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    info.name!,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    info.sector!,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: defaultPadding / 2),
                    child: Star(score: 5),
                  ),
                  const SizedBox(height: defaultPadding / 2),
                  Text(
                    "Experience",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Text(
                    "${info.experience} Years",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: defaultPadding / 2),
                  Text(
                    "Patients",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Text(
                    info.patients!,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
              Image.asset(
                info.image!,
                height: 120,
                fit: BoxFit.cover,
              )
            ],
          ),
        ),
      ),
    );
  }
}