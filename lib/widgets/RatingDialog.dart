import 'package:flutter/material.dart';

class RatingDialog extends StatefulWidget {
  final String title;
  final String message;
  final onCancelled;
  final submitButton;
  final image;
  final int rating;
  final Color ratingColor;
  final ValueSetter<int> onSubmitted;

  RatingDialog(
      {this.ratingColor,
      this.title,
      this.onCancelled,
      this.message,
      this.rating,
      this.image,
      this.onSubmitted,
      this.submitButton});

  @override
  _RatingDialogState createState() => _RatingDialogState();
}

class _RatingDialogState extends State<RatingDialog> {
  @override
  Widget build(BuildContext context) {
    return RatingDialog();
  }
}
