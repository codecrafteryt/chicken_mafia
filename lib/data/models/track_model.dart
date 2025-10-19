/*
  ---------------------------------------
  Project: Chicken Mafia Mobile Application
  Date: Oct 16, 2025
  Author: Ch Salman
  ---------------------------------------
  Description: Track Model
*/

class TrackModel {
  final String id;
  final String name;
  final String artist;
  final String duration;
  final String filePath;
  final int sequence;
  final DateTime createdAt;

  TrackModel({
    required this.id,
    required this.name,
    required this.artist,
    required this.duration,
    required this.filePath,
    required this.sequence,
    required this.createdAt,
  });

  // Convert to Map for storage
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'artist': artist,
      'duration': duration,
      'filePath': filePath,
      'sequence': sequence,
      'createdAt': createdAt.millisecondsSinceEpoch,
    };
  }

  // Create from Map
  factory TrackModel.fromMap(Map<String, dynamic> map) {
    return TrackModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      artist: map['artist'] ?? '',
      duration: map['duration'] ?? '0:00',
      filePath: map['filePath'] ?? '',
      sequence: map['sequence'] ?? 0,
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt'] ?? 0),
    );
  }

  // Copy with method for updates
  TrackModel copyWith({
    String? id,
    String? name,
    String? artist,
    String? duration,
    String? filePath,
    int? sequence,
    DateTime? createdAt,
  }) {
    return TrackModel(
      id: id ?? this.id,
      name: name ?? this.name,
      artist: artist ?? this.artist,
      duration: duration ?? this.duration,
      filePath: filePath ?? this.filePath,
      sequence: sequence ?? this.sequence,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
