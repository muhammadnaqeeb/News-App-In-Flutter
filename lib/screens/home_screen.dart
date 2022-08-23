import 'package:flutter/material.dart';
import 'package:news/models/articals_model.dart';
import 'package:news/screens/articals_screen.dart';
import 'package:news/widgets/custom_tag.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/image_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            )),
      ),

      // making container behind the appBar
      extendBodyBehindAppBar: true,
      bottomNavigationBar: const BottomNavBar(index: 0),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          _NewsOfTheDay(),
          _BreakingNews(
            articles: Article.articles,
          ),
        ],
      ),
    );
  }
}

class _BreakingNews extends StatelessWidget {
  final List<Article> articles;

  const _BreakingNews({
    Key? key,
    required this.articles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Breaking News',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20.0,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: articles.length,
              itemBuilder: (context, index) {
                return Container(
                  // giving width will make more text to go on next line
                  width: MediaQuery.of(context).size.width * 0.5,
                  margin: const EdgeInsets.only(right: 10.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        ArticalsScreen.routeName,
                        arguments: articles[index],
                      );
                      // print(index);
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ImageContainer(
                            width: MediaQuery.of(context).size.width * 0.5,
                            imageUrl: articles[index].imageUrl),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          articles[index].title,
                          // this will allow to text be in onle 2 lines
                          maxLines: 2,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  fontWeight: FontWeight.bold, height: 1.5),
                        ),
                        Text(
                          'by ${articles[index].author}',
                          // this will allow to text be in onle 2 lines
                          maxLines: 2,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  height: 1.5),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _NewsOfTheDay extends StatelessWidget {
  const _NewsOfTheDay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageContainer(
      height: MediaQuery.of(context).size.height * 0.45,
      width: double.infinity,
      imageUrl: Article.articles[1].imageUrl,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTag(
            backgroundColor: Colors.grey.withAlpha(150),
            children: [
              Text(
                'News of the day',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                    ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            Article.articles[0].title,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                  height: 1.25,
                  color: Colors.white,
                ),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
            child: Row(
              children: [
                Text(
                  'Learn More',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        height: 1.25,
                        color: Colors.white,
                      ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.arrow_right_alt,
                  color: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
