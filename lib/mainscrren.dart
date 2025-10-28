import 'package:flutter/material.dart';
import 'package:taskf_lutter/new_screen.dart';

class mainscrren extends StatelessWidget {
  mainscrren({super.key});

  TextEditingController? NameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 217, 209),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enter Your Name ',
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: NameController,

                decoration: InputDecoration(
                  label: Text('Name'),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 230, 227, 227),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Icon(Icons.person, color: Colors.brown),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(7),
                  ),
                ),
                onPressed: () {
                  if (NameController!.text.isNotEmpty) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            NewScreen(name: NameController!.text),
                      ),
                    );
                  }
                },

                child: Text(
                  'Go to Profile Scrren  ',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
