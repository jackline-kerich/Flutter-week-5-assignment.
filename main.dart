import 'package:flutter/material.dart';

void main() {
  runApp(SimpleUIApp());
}

class SimpleUIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple UI App',
      home: ImageSwitcher(),
    );
  }
}

class ImageSwitcher extends StatefulWidget {
  @override
  _ImageSwitcherState createState() => _ImageSwitcherState();
}

class _ImageSwitcherState extends State<ImageSwitcher> {
  bool _isFirstImage = true;

  void _toggleImage() {
    setState(() {
      _isFirstImage = !_isFirstImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My app'),
        backgroundColor: Colors.white54,
      ),
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to my App',
              style: TextStyle(fontSize: 24.0),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _toggleImage();
                print('Button clicked! Image toggled.');
              },
              child: Text('Click Me'),
            ),
            SizedBox(height: 20),
            Image.network(
              _isFirstImage
                  ? 'https://images.pexels.com/photos/4492130/pexels-photo-4492130.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
                  : 'https://images.pexels.com/photos/28123024/pexels-photo-28123024/free-photo-of-selva-y-mar.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
