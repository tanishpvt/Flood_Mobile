import 'package:flood_mobile/Constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Padding(
        padding: EdgeInsets.all(22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
            ),
            Image(
              image: AssetImage(
                'assets/images/icon.png',
              ),
              width: 150,
              height: 150,
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                SvgPicture.network(
                  'https://img.shields.io/github/v/release/CCExtractor/Flood_Mobile?include_prereleases',
                ),
                SvgPicture.network(
                    'https://img.shields.io/github/last-commit/CCExtractor/Flood_Mobile?label=commit'),
                SvgPicture.network(
                    'https://img.shields.io/github/workflow/status/CCExtractor/Flood_Mobile/Flutter%20CI'),
                SvgPicture.network(
                    'https://img.shields.io/github/issues/CCExtractor/Flood_Mobile'),
                SvgPicture.network(
                    'https://img.shields.io/github/issues-pr/CCExtractor/Flood_Mobile?label=PR')
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Flood is a monitoring service for various torrent clients. It\'s a Node.js service that communicates with your favorite torrent client and serves a decent mobile UI for administration. This project is based on the original Flood project.',
                  style: TextStyle(color: Colors.white60, fontSize: 15),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Feedback',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'If you have a specific issue or bug, please file a GitHub issue. Please join the Flood Discord server to discuss feature requests and implementation details.',
                  style: TextStyle(color: Colors.white60, fontSize: 15),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'More Information',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Check out the Wiki for more information.',
                  style: TextStyle(color: Colors.white60, fontSize: 15),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
