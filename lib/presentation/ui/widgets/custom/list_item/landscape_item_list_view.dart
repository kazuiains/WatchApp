import 'package:flutter/material.dart';
import 'package:watch_app/app/config/app_constants.dart';
import 'package:watch_app/domain/entities/feature/movie/movie_feature.dart';

class LandscapeItemListView extends StatelessWidget {
  final MovieFeature item;
  final void Function()? onTap;

  const LandscapeItemListView({
    super.key,
    required this.item,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Material(
        child: InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: onTap,
          child: item.backdropPath != null
              ? Ink.image(
                  image: NetworkImage(
                    "$imgUrl500${item.backdropPath}",
                  ),
                  width: 190,
                  height: 130,
                  fit: BoxFit.cover,
                )
              : Ink.image(
                  image: const AssetImage(
                    AssetsConstants.imageNoImage,
                  ),
                  width: 190,
                  height: 130,
                  fit: BoxFit.cover,
                ),
        ),
      ),
    );
  }
}
