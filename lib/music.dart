import 'package:flutter/material.dart';

class MusicTab extends StatelessWidget {
  // Sample data for music NFTs
  final List<Map<String, String>> musicItems = [
   {
      'image': 'assets/images/music1.jpg',
      'title': 'Call Out My Name',
      'artist': 'The Weeknd',
      'price': '0.5 ETH',
    },
    {
      'image': 'assets/images/music2.jpg',
      'title': 'Torna a casa',
      'artist': 'Måneskin',
      'price': '0.8 ETH',
    },
    {
      'image': 'assets/images/music3.jpg',
      'title': 'Not Like Us ',
      'artist': 'Kendrick Lamar',
      'price': '1.2 ETH',
    },
    {
      'image': 'assets/images/music4.jpg',
      'title': 'Bécane',
      'artist': 'Yamê',
      'price': '0.7 ETH',
    },
    {
      'image': 'assets/images/music5.jpg',
      'title': 'The Door',
      'artist': 'Teddy Swims',
      'price': '0.7 ETH',
    },
    {
      'image': 'assets/images/music6.jpg',
      'title': 'Usikvarulod',
      'artist': 'Megi Gogitidze',
      'price': '0.7 ETH',
    },
    {
      'image': 'assets/images/music7.jpg',
      'title': 'Notice Me',
      'artist': 'Migos ',
      'price': '0.7 ETH',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f6f8),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: musicItems.length,
        itemBuilder: (context, index) {
          final item = musicItems[index];
          return MusicItemLine(
            image: item['image']!,
            title: item['title']!,
            artist: item['artist']!,
            price: item['price']!,
          );
        },
      ),
    );
  }
}

class MusicItemLine extends StatelessWidget {
  final String image;
  final String title;
  final String artist;
  final String price;

  const MusicItemLine({
    required this.image,
    required this.title,
    required this.artist,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            image,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          artist,
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.grey,
          ),
        ),
        trailing: Text(
          price,
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}