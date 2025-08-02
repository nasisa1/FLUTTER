import 'package:flutter/material.dart';

void main() {
  runApp(EmployeeApp());
}

class EmployeeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AddEmployeeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AddEmployeeScreen extends StatefulWidget {
  @override
  _AddEmployeeScreenState createState() => _AddEmployeeScreenState();
}

class _AddEmployeeScreenState extends State<AddEmployeeScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController salaryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8EDF9),
      appBar: AppBar(
        title: Text("Add Employe"),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name"),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'Enter name',
              ),
            ),
            SizedBox(height: 15),
            Text("Age"),
            TextFormField(
              controller: ageController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter age',
              ),
            ),
            SizedBox(height: 15),
            Text("Salary"),
            TextFormField(
              controller: salaryController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter salary',
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  String name = nameController.text;
                  String age = ageController.text;
                  String salary = salaryController.text;

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Added: $name, Age: $age, Salary: $salary")),
                  );
                },
                child: Text("Add Employee"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.grey,
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
