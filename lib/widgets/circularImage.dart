import 'package:cached_network_image/cached_network_image.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  const CircularImage(this.imageUrl,
      {this.height = 100,
        this.width = 100,
        this.iconSize = 40,
        this.isAddProfileImage = false,
        this.shadow = true});

  final double width, height, iconSize;
  final String imageUrl;
  final bool isAddProfileImage;
  final bool shadow;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          // Circle shape
            border: Border.all(color: Colors.white),
            shape: BoxShape.circle,
            color: Theme.of(context).primaryColor,
            boxShadow: shadow
                ? <BoxShadow>[
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 5.0,
              ),
            ]
                : null),
        child: ClipOval(
          child: imageUrl != null ? CachedNetworkImage(
            imageUrl: imageUrl,
            placeholder: (BuildContext context, String url) => Center(
                heightFactor: 0.4, child: getDefaultIcon(context)),
            errorWidget: (BuildContext context, String url, Object error) =>
                getDefaultIcon(context),
            fit: BoxFit.cover,
          ) : getDefaultIcon(context),
        ));
  }

  Icon getDefaultIcon(BuildContext context) {
    return Icon(
      isAddProfileImage ? EvaIcons.cameraOutline : EvaIcons.personOutline,
      size: iconSize,
      color: Theme.of(context).accentColor,
    );
  }
}
