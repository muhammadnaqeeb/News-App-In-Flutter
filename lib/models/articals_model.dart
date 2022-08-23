import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final int views;
  final DateTime createdAt;

  const Article({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.body,
    required this.author,
    required this.authorImageUrl,
    required this.category,
    required this.imageUrl,
    required this.views,
    required this.createdAt,
  });

  static List<Article> articles = [
    Article(
        id: '1',
        title:
            "Tesla dominates charging experience satisfaction and it’s problem",
        subtitle: "Tesla dominates charging experience",
        body:
            "Tesla is dominating the charging experience satisfaction among EV owners, and it’s going to be a problem for charging network operators now that Supercharger is going public. This is a problem that needs to be put in perspective since most electric car chargi…",
        author: 'Fred Lambert',
        authorImageUrl:
            "https://i0.wp.com/electrek.co/wp-content/uploads/sites/3/2022/07/Tesla-Supercharger-cube-lounge.jpg?resize=1200%2C628&quality=82&strip=all&ssl=1",
        category: 'cars',
        imageUrl:
            "https://s.france24.com/media/display/7c8d9f6c-220b-11ed-b575-005056bfb2b6/w:1280/p:16x9/000_32EA882.jpg",
        views: 1204,
        createdAt: DateTime.now()),
    Article(
        id: '2',
        title:
            "Elon Musk announces price hike for Tesla's Full Self-Driving feature",
        subtitle: "SpaceX CEO Elon Musk has announced a price",
        body:
            "SpaceX CEO Elon Musk has announced a price hike for Tesla's Full Self-Driving feature that will be implemented into its pricing next month. Continue reading at TweakTown >",
        author: 'Jak Connor',
        authorImageUrl:
            "https://static.tweaktown.com/news/8/8/88053_02_elon-musk-announces-price-hike-for-teslas-full-self-driving-feature_full.jpg",
        category: 'cars',
        imageUrl: "https://images.mktw.net/im-608127/social",
        views: 2025,
        createdAt: DateTime.now()),
    Article(
        id: '3',
        title:
            "Elon Musk announces price hike for Tesla's Full Self-Driving feature",
        subtitle: "SpaceX CEO Elon Musk has announced a price",
        body:
            "SpaceX CEO Elon Musk has announced a price hike for Tesla's Full Self-Driving feature that will be implemented into its pricing next month. Continue reading at TweakTown >",
        author: 'Jak Connor',
        authorImageUrl:
            "https://static.tweaktown.com/news/8/8/88053_02_elon-musk-announces-price-hike-for-teslas-full-self-driving-feature_full.jpg",
        category: 'cars',
        imageUrl: "https://images.mktw.net/im-608127/social",
        views: 2025,
        createdAt: DateTime.now()),
  ];

  @override
  List<Object?> get props => [
        id,
        title,
        subtitle,
        body,
        author,
        authorImageUrl,
        category,
        imageUrl,
        views,
        createdAt,
      ];
}
