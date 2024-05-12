import 'package:flutter/material.dart';
import 'package:watch_app/app/config/constants/assets_constants.dart';
import 'package:watch_app/app/config/constants/link_page_constants.dart';
import 'package:watch_app/domain/entities/feature/movie/movie_feature.dart';

class PortraitItemListView extends StatelessWidget {
  final MovieFeature item;
  final void Function()? onTap;

  const PortraitItemListView({
    super.key,
    required this.item,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Material(
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: onTap,
          child: SizedBox(
            width: 190,
            height: 240,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: item.backdropPath != null
                      ? Ink.image(
                          image: NetworkImage(
                            "$imgUrl500${item.backdropPath}",
                          ),
                          fit: BoxFit.cover,
                        )
                      : Ink.image(
                          image: const AssetImage(
                            AssetsConstants.imageNoImage,
                          ),
                          fit: BoxFit.cover,
                        ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.black.withOpacity(.1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "${item.title}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis,
                        ),
                        maxLines: 1,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Text(
                            "${item.voteAverage?.toStringAsFixed(1)}",
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
