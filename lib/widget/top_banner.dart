import 'package:flutter/material.dart';

class TopBanner extends StatefulWidget {
  TopBanner(this.title, this.description);
  final String title, description;
  TopBannerState createState() => TopBannerState();
}

class TopBannerState extends State<TopBanner> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff55ce23),
            Color(0xffbefd32),
          ],
        ),
      ),
      child: new Align(
        alignment: Alignment.topLeft,
        child: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                new SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                new Column(
                  children: <Widget>[
                    new SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                    new Text(
                      widget.title,
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 35.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            new Row(
              children: <Widget>[
                new SizedBox(
                  width: MediaQuery.of(context).size.width * 0.025,
                ),
                new Column(
                  children: <Widget>[
                    new SizedBox(
                      height: 10.0,
                    ),
                    new Text(
                      widget.description,
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}