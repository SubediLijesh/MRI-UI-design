import 'package:mri/extension/app_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutThisApp extends StatefulWidget {
  const AboutThisApp({Key? key}) : super(key: key);

  @override
  State<AboutThisApp> createState() => _AboutThisAppState();
}

class _AboutThisAppState extends State<AboutThisApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        leading: const Icon(
          FontAwesomeIcons.brain,
          color: Colors.white,
        ),
        title: Text(
          'About this App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            letterSpacing: 1,
          ),
        ),
        backgroundColor: color,
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            ExpansionTileWidget(
              title: 'How accurate is this app in general?',
              description:
                  "Generally, the results of this app are quite accurate and at least comparable to the current state of the art. However, this app is still giving predictions only and those won't be right all the time. \n"
                  "Training Loss: 0.0378 \nTraining Accuracy: 97.66% \nValidation Loss: 0.8339 \nValidation Accuracy: 87.89%",
            ),
            ExpansionTileWidget(
              title: 'How accurate is this app exactly?',
              description:
                  "This app was trained with 14,179 images to learn distinguishing 72 individual breeds. As evaluated on about 3,513 independent test images, there is a general probability of approximately 93.36% for the correct breed to be shown in the result. The threshold for our Model is 50% i.e Our app will only show the output if its Confidence level(or Probability) is more or equal to 50%. The mean and standard deviation of pixel values in an image or a set of images is taken as 127.5 for our application.",
            ),
            ExpansionTileWidget(
              title: 'What are the limitations of this app?',
              description:
                  "1) As our models are trained on specific views and perspectives of Dogs breed, dog images presented from a different angle or viewpoint than what the model has seen during training, it may struggle to correctly classify the image.\n "
                  "2) Our Model are sensitive to image quality factors such as lighting conditions, resolution, noise, and occlusions. Noisy or low-quality images may introduce artifacts or distortions that hinder accurate classification. \n"
                  "3) Distinguishing between visually similar breeds can be challenging for our model. For example, differentiating between breeds of dogs that have similar physical appearances may lead to mis-classifications. As French Bulldog and Pug have quite similar facial structure, sometimes our model outputs the incorrect result.",
            ),
            Container(
              padding: EdgeInsets.all(4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contact Us',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(height: 2.0),
                  ListTile(
                    leading: Icon(
                      Icons.location_on,
                      size: 17.0,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Sampang Chowk',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      'Dharan, Sunsari',
                      style: TextStyle(
                        letterSpacing: 0.6,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 17.0,
                      color: Colors.black,
                    ),
                    title: Text(
                      '+977 9812345678',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      FontAwesomeIcons.github,
                      size: 17.0,
                      color: Colors.black,
                    ),
                    title: GestureDetector(
                      onTap: () {
                        // final Uri url = Uri.parse(
                        //     'https://github.com/SubediLijesh/MRI-UI-design');
                        // launchUrl(url);
                      },
                      child: const Text(
                        'Mri Tumor Detection',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(4.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Project Members',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(height: 2.0),
                  ListTile(
                    leading: Icon(
                      FontAwesomeIcons.laptopCode,
                      size: 17.0,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Kritartha Bikram Shah',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      '076BCT041',
                      style: TextStyle(
                        fontSize: 13,
                        letterSpacing: 0.6,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      FontAwesomeIcons.fileCode,
                      size: 17.0,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Dipesh Adhikari',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      '076BCT031',
                      style: TextStyle(
                        fontSize: 13,
                        letterSpacing: 0.6,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      FontAwesomeIcons.bug,
                      size: 17.0,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Lijesh Subedi',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      '076BCT043',
                      style: TextStyle(
                        fontSize: 13,
                        letterSpacing: 0.6,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      FontAwesomeIcons.bug,
                      size: 17.0,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Deepak Sharma',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      '076BCT029',
                      style: TextStyle(
                        fontSize: 13,
                        letterSpacing: 0.6,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class ExpansionTileWidget extends StatelessWidget {
  ExpansionTileWidget(
      {super.key, required this.title, required this.description});

  String title;
  String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ExpansionTile(
          title: Text(
            title,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          // subtitle: Text('Trailing expansion arrow icon'),
          children: <Widget>[
            ListTile(
              title: Text(
                description,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black.withOpacity(0.7),
                  letterSpacing: 0.4,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
