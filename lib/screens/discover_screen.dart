import 'package:flutter/material.dart';
import 'package:news/screens/articals_screen.dart';
import 'package:news/widgets/image_container.dart';

class DiscoverScreen extends StatefulWidget {
  final newsData;

  DiscoverScreen({Key? key, this.newsData}) : super(key: key);
  static const routeName = '/discover';

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  var articles;
  var articlesListForSearch;

  @override
  void initState() {
    articles = widget.newsData['articles'];
    // print(articles);
    articlesListForSearch = articles;
    super.initState();
  }

  void searchFunctionality(String query) {
    setState(() {
      //print(articles);

      articlesListForSearch = articles.where((singleItem) {
        var singleItemName = singleItem['title'].toLowerCase();
        return singleItemName.toString().contains(query);
      }).toList();
    });
  }

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
              color: Colors.black,
            )),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          // Discover News
          // const _DiscoverNews(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Discover',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w900),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text('News from all over the world',
                    style: Theme.of(context).textTheme.bodySmall),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  onChanged: (query) {
                    query = query.toLowerCase();
                    searchFunctionality(query);
                  },
                  decoration: InputDecoration(
                    hintText: 'Search',
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    // prefixIcon comes firsts to hint text
                    // start in TextField
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    // suffixIcon comes in end
                    suffixIcon: const RotatedBox(
                      // quarterTurns: 1 means rotate by 90 degrees
                      quarterTurns: 1,
                      child: Icon(
                        Icons.tune,
                        color: Colors.grey,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                )
              ],
            ),
          ),
          /**  CategoryNews
             CategoryNews(tabs: tabs, articles: newsData['articles']), 
             */
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: articlesListForSearch.length,
                  itemBuilder: ((context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, ArticalsScreen.routeName,
                            arguments: articlesListForSearch[index]);
                      },
                      child: Row(
                        children: [
                          ImageContainer(
                              width: 80,
                              height: 80,
                              margin: const EdgeInsets.all(10.0),
                              borderRadius: 5,
                              imageUrl: articlesListForSearch[index]
                                  ['urlToImage']),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  articlesListForSearch[index]['title'],
                                  maxLines: 2,
                                  overflow: TextOverflow.clip,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.newspaper,
                                      size: 18,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '${articlesListForSearch[index]['source']['name']}',
                                      style: const TextStyle(fontSize: 12),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

// class CategoryNews extends StatelessWidget {
//   final List<String> tabs;
//   final articles;
//   CategoryNews({
//     Key? key,
//     required this.tabs,
//     required this.articles,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }

// class _DiscoverNews extends StatelessWidget {
//   const _DiscoverNews({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }
