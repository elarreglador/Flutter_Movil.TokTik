

import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/presentation/widgets/shared/video_buttons.dart';

class VideoScrollableView extends StatelessWidget {

  final List<VideoPost> videos;

  const VideoScrollableView({
    super.key,
    required this.videos
  });

  @override
  Widget build(BuildContext context){
    return PageView.builder(
      physics: const BouncingScrollPhysics(), // especifico de android
      scrollDirection: Axis.vertical, // por defecto el movimiento es horizontal
      itemCount: videos.length, // numero de objetos en el pageview
      itemBuilder: (context, index) {
        final videoPost = videos[index];

        return Stack ( // capa sobre el video que contiene widget del degradado negro, botones y texto
          children: [
            Positioned( //ubicacion de la botonera
              bottom: 40, // a X del borde inferior
              right: 20, // a Y del borde derecho
              child: VideoButtons(video: videoPost)
            ) 
          ]
        );
      },
    );
  }
}