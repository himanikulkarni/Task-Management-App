import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class taskBox extends StatelessWidget {
  const taskBox({
    super.key,
    required this.taskType,
    required this.noOfTasks,
  });
  final String taskType;
  final String noOfTasks;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: const Color.fromARGB(255, 31, 31, 31),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                taskType,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: const Color.fromARGB(255, 134, 133, 133),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                noOfTasks,
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
