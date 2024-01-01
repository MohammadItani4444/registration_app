import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Courses.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
//Mohammad Itani 12031164
class _MyHomePageState extends State<MyHomePage> {
  TextEditingController courseCodeController = TextEditingController();
  TextEditingController courseNameController = TextEditingController();
  TextEditingController sectionController = TextEditingController();
  TextEditingController campusController = TextEditingController();
  TextEditingController creditController = TextEditingController();

  Future<void> submitCourse() async {
    final response = await http.post(
      Uri.parse('https://spacetime4444.000webhostapp.com/insertrow.php'),
      body: {
        'Coursecode': courseCodeController.text,
        'CourseName': courseNameController.text,
        'Section': sectionController.text,
        'Campus': campusController.text,
        'Credit': creditController.text,
      },
    );

    if (response.statusCode == 200) {
      print('Inserted successfully');
    } else {
      print('Error: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter University App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Enter New Course', style: TextStyle(fontSize: 20)),
            TextField(
              controller: courseCodeController,
              decoration: InputDecoration(labelText: 'Course Code'),
            ),
            TextField(
              controller: courseNameController,
              decoration: InputDecoration(labelText: 'Course Name'),
            ),
            TextField(
              controller: sectionController,
              decoration: InputDecoration(labelText: 'Section'),
            ),
            TextField(
              controller: campusController,
              decoration: InputDecoration(labelText: 'Campus'),
            ),
            TextField(
              controller: creditController,
              decoration: InputDecoration(labelText: 'Credit'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                submitCourse();
              },
              child: Text('Submit Course'),
            ),
          ],
        ),
      ),
    );
  }
}
