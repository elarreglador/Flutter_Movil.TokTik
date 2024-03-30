import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  List<VideoPost> videos = [];
  bool initialLoading = true;

  Future<void> loadNextPage() async{

    //todo: cargar videos

    notifyListeners();
  }

  

}