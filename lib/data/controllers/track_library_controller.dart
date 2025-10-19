/*
  ---------------------------------------
  Project: Chicken Mafia Mobile Application
  Date: Oct 16, 2025
  Author: Ch Salman
  ---------------------------------------
  Description: Track Library Controller
*/

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../models/track_model.dart';

class TrackLibraryController extends GetxController {
  final SharedPreferences _prefs;

  TrackLibraryController({required SharedPreferences prefs}) : _prefs = prefs;

  // Observable list of tracks
  final RxList<TrackModel> _tracks = <TrackModel>[].obs;
  List<TrackModel> get tracks => _tracks;

  // Loading state
  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  @override
  void onInit() {
    super.onInit();
    loadTracks();
  }

  // Load tracks from SharedPreferences
  Future<void> loadTracks() async {
    try {
      _isLoading.value = true;
      final String? tracksJson = _prefs.getString('tracks');

      if (tracksJson != null) {
        final List<dynamic> tracksList = json.decode(tracksJson);
        _tracks.value =
            tracksList.map((track) => TrackModel.fromMap(track)).toList();

        // Sort by sequence
        _tracks.sort((a, b) => a.sequence.compareTo(b.sequence));
      }
    } catch (e) {
      print('Error loading tracks: $e');
    } finally {
      _isLoading.value = false;
    }
  }

  // Save tracks to SharedPreferences
  Future<void> _saveTracks() async {
    try {
      final List<Map<String, dynamic>> tracksList =
          _tracks.map((track) => track.toMap()).toList();
      final String tracksJson = json.encode(tracksList);
      await _prefs.setString('tracks', tracksJson);
    } catch (e) {
      print('Error saving tracks: $e');
    }
  }

  // Add predefined track from assets
  Future<void> addPredefinedTrack(String trackName) async {
    try {
      // Check if track already exists
      if (_tracks.any((track) => track.name == trackName)) {
        // Track already exists, skip silently
        return;
      }

      final String id = DateTime.now().millisecondsSinceEpoch.toString();
      final int nextSequence = _tracks.isEmpty ? 1 : _tracks.last.sequence + 1;

      // Predefined track data
      final Map<String, String> trackData = {
        'Linda track Monkey': 'assets/audio/linda_track_monkey.mp3',
        'Some of Usd': 'assets/audio/some_of_usd.mp3',
        'Near You': 'assets/audio/near_you.mp3',
        'So Far': 'assets/audio/so_far.mp3',
        'Gotta': 'assets/audio/gotta.mp3',
      };

      final TrackModel newTrack = TrackModel(
        id: id,
        name: trackName,
        artist: 'Chicken Mafia',
        duration: '3:45', // Default duration
        filePath: trackData[trackName] ?? 'assets/audio/default.mp3',
        sequence: nextSequence,
        createdAt: DateTime.now(),
      );

      _tracks.add(newTrack);
      await _saveTracks();

      // Track added silently
    } catch (e) {
      // Error handled silently
    }
  }

  // Add new track (keeping for compatibility)
  Future<void> addTrack({
    required String name,
    required String artist,
    required String duration,
    required String filePath,
  }) async {
    try {
      final String id = DateTime.now().millisecondsSinceEpoch.toString();
      final int nextSequence = _tracks.isEmpty ? 1 : _tracks.last.sequence + 1;

      final TrackModel newTrack = TrackModel(
        id: id,
        name: name,
        artist: artist,
        duration: duration,
        filePath: filePath,
        sequence: nextSequence,
        createdAt: DateTime.now(),
      );

      _tracks.add(newTrack);
      await _saveTracks();

      // Track added silently
    } catch (e) {
      // Error handled silently
    }
  }

  // Delete track
  Future<void> deleteTrack(String trackId) async {
    try {
      _tracks.removeWhere((track) => track.id == trackId);
      await _saveTracks();

      // Track deleted silently
    } catch (e) {
      // Error handled silently
    }
  }

  // Move track up in sequence
  Future<void> moveTrackUp(String trackId) async {
    try {
      final int currentIndex = _tracks.indexWhere(
        (track) => track.id == trackId,
      );

      if (currentIndex > 0) {
        // Swap with previous track
        final TrackModel currentTrack = _tracks[currentIndex];
        final TrackModel previousTrack = _tracks[currentIndex - 1];

        // Update sequences
        _tracks[currentIndex] = currentTrack.copyWith(
          sequence: previousTrack.sequence,
        );
        _tracks[currentIndex - 1] = previousTrack.copyWith(
          sequence: currentTrack.sequence,
        );

        // Sort by sequence
        _tracks.sort((a, b) => a.sequence.compareTo(b.sequence));
        await _saveTracks();

        // Track moved up silently
      }
    } catch (e) {
      // Error handled silently
    }
  }

  // Move track down in sequence
  Future<void> moveTrackDown(String trackId) async {
    try {
      final int currentIndex = _tracks.indexWhere(
        (track) => track.id == trackId,
      );

      if (currentIndex < _tracks.length - 1) {
        // Swap with next track
        final TrackModel currentTrack = _tracks[currentIndex];
        final TrackModel nextTrack = _tracks[currentIndex + 1];

        // Update sequences
        _tracks[currentIndex] = currentTrack.copyWith(
          sequence: nextTrack.sequence,
        );
        _tracks[currentIndex + 1] = nextTrack.copyWith(
          sequence: currentTrack.sequence,
        );

        // Sort by sequence
        _tracks.sort((a, b) => a.sequence.compareTo(b.sequence));
        await _saveTracks();

        // Track moved down silently
      }
    } catch (e) {
      // Error handled silently
    }
  }

  // Get track by ID
  TrackModel? getTrackById(String trackId) {
    try {
      return _tracks.firstWhere((track) => track.id == trackId);
    } catch (e) {
      return null;
    }
  }

  // Clear all tracks
  Future<void> clearAllTracks() async {
    try {
      _tracks.clear();
      await _saveTracks();

      // All tracks cleared silently
    } catch (e) {
      // Error handled silently
    }
  }
}
