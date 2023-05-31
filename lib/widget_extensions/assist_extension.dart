part of '../awesome_extensions.dart';

extension AssistExtensions on Widget {
  /// Add round corners to a Container
  ///  if the Container already has a color use [backgroundColor] instead and remove the
  ///  [Color] from the Container it self
  Widget withRoundCorners({required double radius}) => 
    Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: this,
        ),
      );

  /// A shadow cast by a box
  ///
  /// [shadowColor]
  Widget withShadow(
          {Color shadowColor = Colors.grey,
          double blurRadius = 20.0,
          double spreadRadius = 1.0,
          Offset offset = const Offset(10.0, 10.0)}) =>
      Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: shadowColor,
                blurRadius: blurRadius,
                spreadRadius: spreadRadius,
                offset: offset),
          ],
        ),
        child: this,
      );
      
  Widget asSquare() {
    return AspectRatio(
      aspectRatio: 1.0,
      child: this,
    );
  }
}

