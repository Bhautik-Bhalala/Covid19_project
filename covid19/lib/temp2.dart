import 'temp.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
class PhotosList {
  final List<Album> photos;

  PhotosList({
    this.photos,
  });

  factory PhotosList.fromJson(List<dynamic> parsedJson) {

    List<Album> photos = new List<Album>();
    photos = parsedJson.map((i)=>Album.fromJson(i)).toList();

    return new PhotosList(
        photos: photos
    );
  }
}
class Album {
  final String userId;
  final String id;
  final String title;

  Album({this.userId, this.id, this.title});

  factory Album.fromJson(Map<String, dynamic>  json) {
    return new Album(
      userId: json['cured'].toString(),
      id: json['deaths'].toString(),
      title: json['state'],
    );
  }
}
class Photo {
  final int albumId;
  final int id;
  final int title;
  final String url;
//  final String thumbnailUrl;

  Photo({this.albumId, this.id, this.title, this.url});

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      albumId: json['deaths'] as int,
      id: json['cured'] as int,
      title: json['noOfCases'] as int,
      url: json['name'] as String,
//      thumbnailUrl: json['thumbnailUrl'] as String,
    );
  }
}