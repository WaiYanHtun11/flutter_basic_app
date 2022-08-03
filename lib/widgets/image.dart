import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart' show kTransparentImage;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:extended_image/extended_image.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          const ListTile(
            title: Text("Image From Asset:"),
          ),
          Card(
            child: Image.asset("images/img1.png"),
          ),
          const Divider(),
          const ListTile(
            title: Text("Image from url"),
          ),
          Card(
            child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: "https://i.picsum.photos/id/237/536/354.jpg?hmac=i0yVXW1ORpyCZpQ-CknuyV-jbtU7_x9EBQVhvT5aRr0"),
          ),
          const Divider(),
          const ListTile(
            title: Text("Cached network image:"),
          ),
          CachedNetworkImage(
            imageUrl: "https://picsum.photos/536/354",
            placeholder: (context,url){
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            errorWidget: (context,url,error){
              return const Icon(Icons.error);
            },
          ),
          const Divider(),
          const ListTile(
            title: Text("Extended Image"),
            subtitle: Text("provides more functionalities like image caching and shape and border radius and editing"),
          ),
          ExtendedImage.network(
            "https://picsum.photos/id/1084/536/354?grayscale",
            shape: BoxShape.rectangle,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
        ],
      ),
    );
  }
}
