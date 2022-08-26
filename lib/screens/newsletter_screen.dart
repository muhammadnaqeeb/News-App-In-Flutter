import 'package:flutter/material.dart';
import '../widgets/newsletter_point.dart';

class NewsletterScreen extends StatelessWidget {
  const NewsletterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // remove extra padding around AppBar leading icon in Flutter
        titleSpacing: 0,
        automaticallyImplyLeading: false,
        leading: const Padding(
          padding: EdgeInsets.only(left: 21),
          child: Icon(Icons.newspaper),
        ),

        title: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text('News'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 17.0),
            child: GestureDetector(
              onTap: () {},
              child: const Image(
                image: AssetImage('images/notification.png'),
                width: 27,
                height: 27,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 17.0),
            child: Container(
              width: 30,
              height: 30,
              child: const Image(image: AssetImage('images/person.png')),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 17.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(Icons.menu),
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 25,
          right: 25,
        ),
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            const Text(
              'Join our newsletter 🎉',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Stack is a production-ready libaray of of stackable content block',
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(
              height: 20,
            ),
            NewsletterPoint(
              pointNo: 1,
              pointText: 'Get more discount',
              color: Colors.green,
            ),
            const SizedBox(
              height: 8,
            ),
            NewsletterPoint(
              pointNo: 2,
              pointText: 'Get premium account',
              color: Colors.purple,
            ),
            const SizedBox(
              height: 8,
            ),
            NewsletterPoint(
              pointNo: 3,
              pointText: 'Get Daily Breaking news',
              color: Colors.blue,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  suffixIcon: Container(
                      width: 40,
                      height: 40,
                      margin: const EdgeInsets.only(
                          right: 10, top: 5, bottom: 5, left: 0),
                      decoration: BoxDecoration(
                          color: const Color(0xff00B0FF),
                          borderRadius: BorderRadius.circular(50.0)),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_right_alt,
                            color: Colors.white),
                        onPressed: () {
                          //print('Email button pressed');
                        },
                      )),
                  hintText: "Enter your email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
            // Container(
            //   height: 230,
            //   width: 230,
            //   child: Image.asset('images/Mailbox.png'),
            // )
          ],
        ),
      ),
    );
  }
}
