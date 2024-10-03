
import 'package:flutter_learning/entities/tag.dart';

class ChannelDetails {
  const ChannelDetails({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.assessment,
    required this.tags,
    required this.urls
  });

  final int id;
  final String imageUrl;
  final String name;
  final double assessment;
  final String description;
  final List<Tag> tags;
  final List<String> urls;
}
