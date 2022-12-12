import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_responsive_ui/models/models.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({
    Key? key,
    required this.currentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      height: 110,
      color: Colors.white,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey[200]!,
              backgroundImage: CachedNetworkImageProvider(currentUser.imageUrl),
            ),
            const SizedBox(width: 8.0),
            const Expanded(
              child: TextField(
                decoration: InputDecoration.collapsed(
                  hintText: 'What\'s on your mind?',
                ),
              ),
            ),
          ],
        ),
        const Divider(height: 10.0, thickness: 0.5),
        SizedBox(
          height: 40.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.videocam,
                  color: Colors.red,
                ),
                label: const Text('Live'),
              ),
              const VerticalDivider(width: 8.0),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.photo_library,
                  color: Colors.green,
                ),
                label: const Text('Photo'),
              ),
              const VerticalDivider(width: 8.0),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.video_call,
                  color: Colors.purpleAccent,
                ),
                label: const Text('Room'),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
