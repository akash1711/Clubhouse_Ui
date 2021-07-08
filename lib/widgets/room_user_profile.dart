import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clubhouse_ui/data.dart';
import 'package:flutter_clubhouse_ui/widgets/user_profile_image.dart';

class RoomUserProfile extends StatelessWidget {
  final User speaker;
  RoomUserProfile({Key? key, required this.speaker}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            UserProfileImage(imageUrl: speaker.imageUrl, size: 70.0),
            Positioned(
              right: 0.0,
              bottom: 0.0,
              child: Container(
                child: Icon(CupertinoIcons.mic_off),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 2),
                      blurRadius: 6.0)
                ], shape: BoxShape.circle, color: Colors.white),
              ),
            )
          ],
        ),
        Flexible(
            child: Text(
          speaker.givenName,
          overflow: TextOverflow.ellipsis,
        ))
      ],
    );
  }
}
