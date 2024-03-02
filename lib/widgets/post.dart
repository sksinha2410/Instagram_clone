import "package:flutter/material.dart";

import "../utils/global.dart";

class Post extends StatefulWidget {
  final String username;
  final String posturl;
  final String title;
  final String desc;
  final String date;
  final int likes;
  final String userurl;

  const Post(
      {Key?key,
      required this.date,
      required this.desc,
      required this.likes,
      required this.posturl,
      required this.title,
      required this.username,
      required this.userurl});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              CircleAvatar(
                radius: 27,
                backgroundImage: NetworkImage(
                    widget.userurl),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.username,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      )),
                  Text(widget.title,
                      style: const TextStyle(
                        fontSize: 12,
                        color: secondaryColor,
                      )),
                ],
              ),
              const Expanded(flex: 1, child: SizedBox()),
              const Icon(Icons.more_vert, color: Colors.white, size: 25),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Image(
              image: AssetImage(widget.posturl), fit: BoxFit.cover),
        ),
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Icon(Icons.favorite_outline, color: Colors.white, size: 25),
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.messenger_outline, size: 22, color: Colors.white),
                SizedBox(width: 15),
                Icon(Icons.send_outlined, color: Colors.white, size: 22),
                Expanded(flex: 1, child: SizedBox()),
                Icon(Icons.save_alt, color: Colors.white, size: 25),
              ],
            )),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.likes.toString(), style: const TextStyle(color: Colors.white, fontSize: 12)),
              Text(
                widget.desc,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
              Text(widget.date,
                  style: const TextStyle(
                      color: secondaryColor,
                      fontSize: 10,
                      fontWeight: FontWeight.w600)),
            ],
          ),
        )
      ],
    );
  }
}
