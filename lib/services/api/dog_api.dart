import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// import 'package:puppers_mobile/utilities/utilities.dart';

@immutable
class DogAPI {
  final Uri _apiUrl = Uri.parse('https://dog.ceo/api/');

  /// Get one random image
  Future<http.Response> getRandomImage() {
    return http.get(_apiUrl.resolve('$_apiUrl/breeds/image/random'));
  }

  /// List all breeds
  Future<http.Response> getAllBreeds() {
    return http.get(_apiUrl.resolve('$_apiUrl/breeds/list/all'));
  }

  /// List all sub-breeds for a given breed
  Future<http.Response> getSubBreeds(final String breed) {
    return http.get(_apiUrl.resolve('$_apiUrl/breed/$breed/list'));
  }

  /// Get images for given breed
  Future<http.Response> getImagesForBreed(final String breed) {
    return http.get(_apiUrl.resolve('$_apiUrl/breed/$breed/images'));
  }

}
