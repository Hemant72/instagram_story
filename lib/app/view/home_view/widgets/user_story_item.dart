import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_stories_clone/app/app_data/story_data.dart';

class UserStoryItem extends StatefulWidget {
  final int index;
  final Function(Rect?) setRectPoint;
  const UserStoryItem({
    super.key,
    required this.index,
    required this.setRectPoint,
  });

  @override
  State<UserStoryItem> createState() => _UserStoryItemState();
}

class _UserStoryItemState extends State<UserStoryItem>
    with TickerProviderStateMixin {
  late Animation<double> gap;
  late Animation<double> base;
  late Animation<double> reverse;
  AnimationController? animationController;
  Rect? rect;
  GlobalKey touchPoint = GlobalKey();

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 10));
    base = CurvedAnimation(parent: animationController!, curve: Curves.easeOut);
    reverse = Tween<double>(begin: 0.0, end: -1.0).animate(base);
    gap = Tween<double>(begin: 3.0, end: 0.0).animate(base)
      ..addListener(() {
        setState(() {});
      });
    animationController!.forward();
    animationController!.addListener(() {
      if (animationController!.isCompleted) {
        animationController!.repeat();
      }
    });
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0.w),
      child: GestureDetector(
        key: touchPoint,
        behavior: HitTestBehavior.opaque,
        onTapUp: (detalis) {
          var object = touchPoint.currentContext?.findRenderObject();
          var translation = object?.getTransformTo(null).getTranslation();
          var size = object?.semanticBounds.size;
          rect = Rect.fromLTWH(
              translation!.x, translation.y, size!.width, size.height);
          widget.setRectPoint(rect);
        },
        child: Hero(
          tag: "index${widget.index}",
          transitionOnUserGestures: true,
          child: Container(
            alignment: Alignment.center,
            child: DashedCircle(
              gapSize: 8,
              dashes: stories.length,
              color: const Color(0xffed4634),
              child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage("assets/images/img1.jpg"),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
