import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_stories_clone/app/helper/style.dart';
import 'package:instagram_stories_clone/app/models/user_model.dart';

class UserInfo extends StatelessWidget {
  final User user;
  const UserInfo({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Wrap(
        children: <Widget>[
          CircleAvatar(
            radius: 15.0.r,
            backgroundColor: Colors.grey[300],
            backgroundImage: CachedNetworkImageProvider(user.profileImageUrl),
          ),
          SizedBox(width: 10.0.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(user.name,
                  style: textsizeMediam12.copyWith(color: Colors.white)),
              Text(
                ' 14.h',
                style: textsize12.copyWith(
                    color: Colors.white, fontWeight: FontWeight.w100),
              )
            ],
          )
        ],
      ),
    );
  }
}
