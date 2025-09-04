import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:sensors_plus/sensors_plus.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:geolocator/geolocator.dart';

class Qibladirectionfragment extends StatefulWidget {
  const Qibladirectionfragment({super.key});

  @override
  State<Qibladirectionfragment> createState() => _QibladirectionfragmentState();
}

class _QibladirectionfragmentState extends State<Qibladirectionfragment> {
  double _direction = 0; // Holds the device's direction relative to north
  double _qiblaDirection = 0; // Holds the Qibla direction angle

  @override
  void initState() {
    super.initState();
    // Get the Qibla direction stream
    FlutterQiblah.qiblahStream.listen((qiblah) {
      setState(() {
        _qiblaDirection = qiblah.qiblah; // Update the Qibla angle
      });
    });
    // Listen to the device's magnetometer
    magnetometerEvents.listen((MagnetometerEvent event) {
      // Calculate the heading from magnetometer data
      setState(() {
        _direction = calculateHeading(event.x, event.y, event.z);
      });
    });
  }

  // Function to calculate the heading (angle relative to north) from magnetometer data
  double calculateHeading(double x, double y, double z) {
    double heading = (math.atan2(y, x) * (180 / math.pi));
    if (heading < 0) heading += 360; // Ensure heading is in the range 0-360
    return heading;
  }

  @override
  Widget build(BuildContext context) {
    // Adjust the direction based on Qibla
    double adjustedDirection = _qiblaDirection - _direction;
    if (adjustedDirection < 0) adjustedDirection += 360;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Qibla Direction'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Circular clock-like border
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 4, color: Colors.black),
              ),
            ),
            // Qibla arrow (styled like a clock hand)
            Transform.rotate(
              angle: adjustedDirection * (math.pi / 180), // Rotate based on Qibla direction
              child: Container(
                width: 150, // Arrow length
                height: 4, // Arrow thickness
                color: Colors.red,
                alignment: Alignment.topCenter,
              ),
            ),
            // Marker for North at the top
            const Positioned(
              top: 20,
              child: Text('N', style: TextStyle(fontSize: 24)),
            ),
          ],
        ),
      ),
    );
  }
}
