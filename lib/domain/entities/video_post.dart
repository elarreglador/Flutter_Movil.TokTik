class VideoPost {
  // Los VideoPost son los objetos que terminaremos mostrando en nuestra app

  final String caption;
  final String videoURL;
  final int likes;
  final int views;

  // constructor
  VideoPost({
    required this.caption,
    required this.videoURL,
    this.likes = 0,
    this.views = 0
  });
}