import 'dart:async';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:task_management/views/customs/tabBar/tab_bar.dart';
import 'package:task_management/views/customs/task_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime currentDate = DateTime.now();

  @override
  void initState() {
    super.initState();

    // Set up a timer to update the date every day at midnight
    Timer.periodic(const Duration(days: 1), (Timer timer) {
      setState(() {
        currentDate = DateTime.now();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 31, 31, 31),
        toolbarHeight: 60.0,
        shadowColor: const Color.fromARGB(255, 143, 142, 142),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Good morning Himani!',
                  style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 134, 133, 133),
                    fontSize: 12,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  ' ${DateFormat('yMMMd').format(currentDate)}',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                      color: Colors.grey[400], fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Summary',
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child:
                        taskBox(taskType: 'Assigned Tasks', noOfTasks: '21')),
                SizedBox(
                  width: 10,
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child:
                        taskBox(taskType: 'Completed Tasks', noOfTasks: '21'))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Today's tasks",
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Tab_Bar()
          ],
        ),
      ),
    );
  }
}
