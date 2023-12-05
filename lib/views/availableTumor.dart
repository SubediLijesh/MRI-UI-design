import 'package:flutter/material.dart';
import 'package:mri/model/Tumar.dart';
import 'package:mri/tumor_Detail/tumorDetails.dart';
import 'package:mri/extension/app_color.dart';

class TumorListScreen extends StatelessWidget {
  const TumorListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,

        title: Text(
          'Available Tumors',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            letterSpacing: 1,
          ),
        ),
        backgroundColor: color,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: tumors.length,
        itemBuilder: (context, index) {
          Tumor tumor = tumors[index];
          return Card(
            child: ListTile(
              title: Text(tumor.tumorName),
              // trailing: Icon(Icons.arrow_forward_rounded),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TumorDetails(tumor: tumor)));
              },
            ),
          );
        },
      ),
    );
  }
}
