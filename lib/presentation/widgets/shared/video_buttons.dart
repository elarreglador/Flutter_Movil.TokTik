import 'package:flutter/material.dart';
import 'package:toktik/config/helpers/human_formats.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {

  final VideoPost video;

  const VideoButtons({
    super.key,
    required this.video
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(value: video.likes, iconData: Icons.favorite, iconColor: Colors.red), // like
        const SizedBox( height: 20 ), // espaciado entre botones
        _CustomIconButton(value: video.views, iconData: Icons.remove_red_eye_outlined), // views
        const SizedBox( height: 20 ), // espaciado entre botones
        const _CustomIconButton(value: 0, iconData: Icons.play_circle_outline) // play
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {

  final int value;
  final IconData iconData;
  final Color? color;

  const _CustomIconButton({
    required this.value,
    required this.iconData,
    iconColor
  }): color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: () {}, 
        icon: Icon(iconData, color: color, size: 50)),

        if (value > 0 )
          Text(HumanFormats.humanReadbleNumber(value.toDouble()))
      ],
    );
  }
}