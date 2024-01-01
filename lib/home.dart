import 'package:flutter/material.dart';
import 'Courses.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('LIU University'),
        ),
        body: BodyWidget(),
      ),
    );
  }
}
//Mohammad Itani 12031164
class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWidget(),
          NavigationWidget(),
          ImageSliderWidget(),
          CampusesWidget(),
          CountdownClockWidget(),
          SayHelloWidget(),
          /*MyConsoleLogWidget(),
          SayGoodbyeWidget(),
          ImageClickHandlerWidget(),*/
        ],
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Image.asset('Lebanese_International_University_(logo).png', height: 100),
          Text(
            'Welcome to LIU University',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text('Providing quality education since 2001'),
        ],
      ),
    );
  }
}

class NavigationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          NavigationItemWidget('Home', 'index.html'),
          NavigationItemWidget('About Us', 'about.html'),
          NavigationItemWidget('Departments', 'departments.html'),
          NavigationItemWidget('Courses', 'courses.html'),
          NavigationItemWidget('Faculty', 'faculty.html'),
          NavigationItemWidget('Admission', 'admission.html'),
          NavigationItemWidget('Events', 'events.html'),
          NavigationItemWidget('Student Portal', 'studentportal.html'),
          NavigationItemWidget('Contact Us', 'contact.html'),
          NavigationItemWidget('Visit Our Web Page Of LIU University', 'http://www.liu.edu.lb'),
        ],
      ),
    );
  }
}

class NavigationItemWidget extends StatelessWidget {
  final String title;
  final String url;

  NavigationItemWidget(this.title, this.url);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: ElevatedButton(
        onPressed: () {
          // Handle navigation
        },
        child: Text(title),
      ),
    );
  }
}

class ImageSliderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Image.asset(
        '7155786_FnvHidbAZUUO0dEtcg_v2l1It4ICZUfwPX-eWaYoUBI.jpg',
        width: double.infinity,
        height: 200,
        fit: BoxFit.cover,
      ),
    );
  }
}

class CampusesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          Text('LIU Campuses', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          CampusImageWidget('Nabatiye.jpg'),
          CampusImageWidget('Mount_Lebanon.jpg'),
          CampusImageWidget('Rayak.jpg'),
          CampusImageWidget('Tripoli.jpg'),
          CampusImageWidget('Tyre.jpg'),
        ],
      ),
    );
  }
}

class CampusImageWidget extends StatelessWidget {
  final String imageName;

  CampusImageWidget(this.imageName);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Image.asset(
        imageName,
        height: 150,
        fit: BoxFit.cover,
      ),
    );
  }
}

class CountdownClockWidget extends StatefulWidget {
  @override
  _CountdownClockWidgetState createState() => _CountdownClockWidgetState();
}

class _CountdownClockWidgetState extends State<CountdownClockWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          Text('Countdown Clock', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          // Implement the countdown clock here
        ],
      ),
    );
  }
}

class SayHelloWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
          sayHello();
        },
        child: Text('Courses Page'),
      ),
    );
  }

  void sayHello() {
    print('Hello from sayHello');
  }
}
/*
class MyConsoleLogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: ElevatedButton(
        onPressed: () {
          myConsoleLog();
        },
        child: Text('My Console Log'),
      ),
    );
  }

  void myConsoleLog() {
    var a = this;
    print(a);
    // Additional logic can be added based on the original JavaScript code
  }
}

class SayGoodbyeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: ElevatedButton(
        onPressed: () {
          sayGoodbye();
        },
        child: Text('Say Goodbye'),
      ),
    );
  }

  void sayGoodbye() {
    // Implement the logic for saying goodbye
  }
}

class ImageClickHandlerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: ElevatedButton(
        onPressed: () {
          // Implement image click handler logic
        },
        child: Text('Image Click Handler'),
      ),
    );
  }
}
*/