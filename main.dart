import 'package:flutter/material.dart';

void main() {
  runApp(GamingPanelApp());
}

class GamingPanelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Safe Gaming Panel',
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double sensitivity = 50.0;
  int fps = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Safe Gaming Panel')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('FPS: $fps', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Text('Sensitivity: ${sensitivity.toInt()}'),
            Slider(
              value: sensitivity,
              min: 10,
              max: 100,
              divisions: 90,
              onChanged: (value) {
                setState(() {
                  sensitivity = value;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => AimTrainingScreen()),
                );
              },
              child: Text('Start Aim Training'),
            ),
          ],
        ),
      ),
    );
  }
}

class AimTrainingScreen extends StatefulWidget {
  @override
  _AimTrainingScreenState createState() => _AimTrainingScreenState();
}

class _AimTrainingScreenState extends State<AimTrainingScreen> {
  int score = 0;

  void increaseScore() {
    setState(() {
      score += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Aim Training')),
      body: Center(
        child: GestureDetector(
          onTap: increaseScore,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: Center(
              child: Text(
                '$score',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}import 'package:flutter/material.dart';

void main() {
  runApp(GamingPanelApp());
}

class GamingPanelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Safe Gaming Panel',
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double sensitivity = 50.0;
  int fps = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Safe Gaming Panel')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('FPS: $fps', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Text('Sensitivity: ${sensitivity.toInt()}'),
            Slider(
              value: sensitivity,
              min: 10,
              max: 100,
              divisions: 90,
              onChanged: (value) {
                setState(() {
                  sensitivity = value;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => AimTrainingScreen()),
                );
              },
              child: Text('Start Aim Training'),
            ),
          ],
        ),
      ),
    );
  }
}

class AimTrainingScreen extends StatefulWidget {
  @override
  _AimTrainingScreenState createState() => _AimTrainingScreenState();
}

class _AimTrainingScreenState extends State<AimTrainingScreen> {
  int score = 0;

  void increaseScore() {
    setState(() {
      score += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Aim Training')),
      body: Center(
        child: GestureDetector(
          onTap: increaseScore,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: Center(
              child: Text(
                '$score',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}