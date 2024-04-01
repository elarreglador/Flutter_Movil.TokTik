
import 'package:toktik/domain/entities/video_post.dart';

class LocalVideoModel {
  // API >> JSON >> LocalVideoModel >> VideoPost

  final String name;
  final String videoURL;
  final int likes;
  final int views;

  // constructor
  LocalVideoModel({
    required this.name,
    required this.videoURL,
    this.likes = 0,
    this.views = 0
  });

  // cuando consultamos una api, nos devolera un json como el local_video_post.dart, y a partir de
  // ese json obtendremos un objeto LocalVideoModel
  factory LocalVideoModel.fromJson(Map<String, dynamic> json) => LocalVideoModel(
    name: json["name"],
    videoURL: json["videoUrl"],
    likes: json["likes"],
    views: json["views"]
  );

  // los VideoPosts son los que usara nuestra app para mostrarlos, y los generaremos desde aqui
  // oteniendo los datos desde LocalVideoModel.toVideoPostEntity
  VideoPost toVideoPostEntity() => VideoPost(
    caption: name,
    videoURL: videoURL,
    likes: likes,
    views: views
  );
}