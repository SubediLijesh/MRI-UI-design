import 'package:flutter/material.dart';
import 'package:mri/model/Tumar.dart';
import 'package:mri/extension/app_color.dart';

class TumorDetails extends StatelessWidget {
  final Tumor tumor;
  const TumorDetails({super.key, required this.tumor});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          //centerTitle: true,

          title: Text(
            tumor.tumorName,
            style: TextStyle(
                fontSize: 20.0, letterSpacing: 1, color: Colors.white),
          ),
          backgroundColor: color,
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset(tumor.imageUrl),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                tumor.tumorDes,
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
