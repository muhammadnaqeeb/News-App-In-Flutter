import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);
  static const routeName = '/discover';
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
      bottomNavigationBar: const BottomNavBar(index: 1),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          _DiscoverNews(),
        ],
      ),
    );
  }
}

class _DiscoverNews extends StatelessWidget {
  const _DiscoverNews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Discover',
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.black, fontWeight: FontWeight.w900),
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
    );
  }
}
