import 'package:flutter/material.dart';
import 'package:social_share/social_share.dart';
import 'package:tinder_clone/theme/colors.dart';

class PopUpSharing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  //var buttonName = ["instagram", "Facebook"];
  
  return new AlertDialog(
      title: const Text('Choisi ton reseaux:'),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new ElevatedButton(
                child: new Text("Instagram"),
                onPressed: () {
                  SocialShare.shareInstagramStory("img_lol.jpeg");
                  Navigator.of(context).pop();
                },
              ),
              new ElevatedButton(
                child: new Text("Facebook"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
        /*children: List.generate(buttonName.length, (index) {
            return Container(
              width: 100,
              height: 58,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: black,
                  boxShadow: [
                    BoxShadow(
                      color: grey.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 10,
                      // changes position of shadow
                    ),
                  ]),
                child: ElevatedButton (
                child: Text(buttonName[index]),
                  onPressed: () {
                  },
              ),
            );
          }),*/
      ),
      actions: <Widget>[
        new FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme.of(context).primaryColor,
          child: Text('Close'),
        ),
      ],
    );
  }
}
