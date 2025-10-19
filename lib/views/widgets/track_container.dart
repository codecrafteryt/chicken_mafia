/*
  ---------------------------------------
  Project: Chicken Mafia Mobile Application
  Date: Oct 16, 2025
  Author: Ch Salman
  ---------------------------------------
  Description: Custom Track Container Widget
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/models/track_model.dart';
import '../../data/controllers/track_library_controller.dart';
import '../../utils/values/my_color.dart';

class TrackContainer extends StatelessWidget {
  final TrackModel track;
  final int index;
  final int totalTracks;

  const TrackContainer({
    super.key,
    required this.track,
    required this.index,
    required this.totalTracks,
  });

  @override
  Widget build(BuildContext context) {
    final TrackLibraryController controller =
        Get.find<TrackLibraryController>();

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: MyColors.bgLight,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: MyColors.lightGrey.withOpacity(0.3)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, 2),
            blurRadius: 8,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            // Sequence number
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: MyColors.primary,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  '${track.sequence}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),

            // Track info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    track.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    track.artist,
                    style: TextStyle(
                      color: MyColors.lightestGrey,
                      fontSize: 14,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    track.duration,
                    style: TextStyle(
                      color: MyColors.lightestGrey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),

            // Action buttons
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Move up button
                if (index > 0)
                  IconButton(
                    onPressed: () => controller.moveTrackUp(track.id),
                    icon: const Icon(
                      Icons.keyboard_arrow_up,
                      color: MyColors.lightestGrey,
                    ),
                    tooltip: 'Move Up',
                  ),

                // Move down button
                if (index < totalTracks - 1)
                  IconButton(
                    onPressed: () => controller.moveTrackDown(track.id),
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: MyColors.lightestGrey,
                    ),
                    tooltip: 'Move Down',
                  ),

                // Delete button
                IconButton(
                  onPressed: () => controller.deleteTrack(track.id),
                  icon: const Icon(Icons.delete, color: Colors.red),
                  tooltip: 'Delete Track',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
