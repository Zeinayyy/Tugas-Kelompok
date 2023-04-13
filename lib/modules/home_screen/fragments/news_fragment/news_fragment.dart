import 'package:flutter/material.dart';
import 'package:pertemuan_v/data/news_data.dart';

class NewsFragment extends StatelessWidget {
  const NewsFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        const ListTile(
          leading: Icon(Icons.newspaper),
          title: Text("News List"),
        ),
        Column(
          children: newslist
              .map((news) => Card(
                    child: ListTile(
                      leading: AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Image.network(news.gambar),
                      ),
                      title: Text(
                        news.judul,
                        maxLines: 2,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(news.deskripsi, maxLines: 4),
                    ),
                  ))
              .toList(),
        )
      ],
    ));
  }
}
