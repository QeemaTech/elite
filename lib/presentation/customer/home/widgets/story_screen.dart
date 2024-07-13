import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryScreen extends StatefulWidget {
  @override
  _StoryScreenState createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  final storyController = StoryController();

  @override
  void dispose() {
    storyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stories"),
      ),
      body: Directionality(
        textDirection: TextDirection.ltr,
        child: StoryView(
          storyItems: [
            StoryItem.text(
              title: "I guess you'd love to see more of our ads. That's great.",
              backgroundColor: Colors.blue,
            ),
            StoryItem.text(
              title: "Nice!\n\nTap to continue.",
              backgroundColor: Colors.red,
              textStyle: TextStyle(
                fontFamily: 'Dancing',
                fontSize: 40,
              ),
            ),
            StoryItem.inlineProviderImage(
              AssetImage(
                "assets/images/car2.png",
              ),
              caption: Text(
                "Car sampling",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            StoryItem.inlineProviderImage(
              AssetImage(
                "assets/images/car3.png",
              ),
              caption: Text(
                "Car sampling",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            // StoryItem.pageImage(
            //   url:
            //       "https://image.ibb.co/cU4WGx/Omotuo-Groundnut-Soup-braperucci-com-1.jpg",
            //   caption: Text(
            //     "Still sampling",
            //     style: TextStyle(
            //       fontSize: 15,
            //       color: Colors.white,
            //     ),
            //     textAlign: TextAlign.center,
            //   ),
            //   controller: storyController,
            // ),
          ],
          onStoryShow: (storyItem, index) {
            print("Showing a story");
          },
          onComplete: () {
            print("Completed a cycle");
            Navigator.pop(context);
          },
          progressPosition: ProgressPosition.top,
          repeat: false,
          controller: storyController,
        ),
      ),
    );
  }
}
