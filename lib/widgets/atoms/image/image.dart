/*
*  image.dart
*  mlcoin_app 2020-06-02.
*  mlcoin_app 2020-06-02
*
*  Created by [Allan Nava].
*  Updated by [Allan Nava]
*  Copyright © 2020 [Allan Nava]. All rights reserved.
*/
import 'package:flutter/material.dart';
///
import 'package:cached_network_image/cached_network_image.dart';
///
///
///
class AtomImage extends StatefulWidget {
  ///
  AtomImage.localCircle(this.url, { this.size , this.fit: BoxFit.fill } )
      : isCircle = true,
        isNetwork = false;
  ///
  AtomImage.localBox(this.url, { this.size, this.fit: BoxFit.fill } )
      : isCircle = false,
        isNetwork = false;
  ///
  AtomImage.remoteCircle(this.url, { this.size, this.fit: BoxFit.fill } )
      : isCircle = true,
        isNetwork = true;
  ///
  //AtomImage.remoteBox(this.url, {this.size = 24.0})
  AtomImage.remoteBox(this.url, { this.size, this.fit: BoxFit.fill } )
      : isCircle = false,
        isNetwork = true;
  ///
  String url;
  double size;
  bool isCircle;
  bool isNetwork;
  BoxFit fit;
  AtomImage(this.url, this.isCircle, this.isNetwork);
  ///
  @override
  _AtomImageState createState() => _AtomImageState();
  ///
}
///
class _AtomImageState extends State<AtomImage> {

  @override
  Widget build(BuildContext context) {
    if (widget.url == null) {
      widget.url        = 'assets/images/google-plus.png';
      widget.isNetwork  = false;
    }
    //
    return widget.isCircle
        ? ClipRRect(
          borderRadius: BorderRadius.circular(50.0),
          child: widget.isNetwork 
                ?
                  CachedNetworkImage(
                    width: widget.size,
                    height: widget.size,
                    placeholder: (context, url) => CircularProgressIndicator(),
                    imageUrl: widget.url,
                    fit: widget.fit,
                  )
                : Image.asset(widget.url,
                    width: widget.size,
                    height: widget.size,
                    fit: widget.fit,) )
        : widget.isNetwork 
                ? 
                  CachedNetworkImage(
                    placeholder: (context, url) => CircularProgressIndicator(),
                    imageUrl: widget.url,
                    width: widget.size,
                    height: widget.size,
                    fit: widget.fit,
                  ) 
                : Image.asset(widget.url,
                    width: widget.size,
                    height: widget.size,
                    fit: widget.fit,
                  );
  }
}
///