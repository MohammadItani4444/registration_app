import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'home.dart';
import 'Courses.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter University App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController pass1Controller = TextEditingController();
  String selected = '';

  Future<void> login() async {
    final response = await http.post(
      Uri.parse('https://spacetime4444.000webhostapp.com/Login.php'),
      body: {
        'email': emailController.text,
        'pass1': pass1Controller.text,
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
            Text('Enter Your Email', style: TextStyle(fontSize: 20)),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: pass1Controller,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true, // Set to true to hide the password
            ),
            build1(context), // Include the radio buttons here
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                login();
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }

  Widget build1(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You are here as:',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          // Radio buttons for roles
          ListTile(
            title: const Text('Student'),
            leading: Radio(
              value: 'Student',
              groupValue: selected,
              onChanged: (value) {
                setState(() {
                  selected = value.toString();
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Instructor'),
            leading: Radio(
              value: 'Instructor',
              groupValue: selected,
              onChanged: (value) {
                setState(() {
                  selected = value.toString();
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Advisor'),
            leading: Radio(
              value: 'Advisor',
              groupValue: selected,
              onChanged: (value) {
                setState(() {
                  selected = value.toString();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
//Mohammad Itani 12031164