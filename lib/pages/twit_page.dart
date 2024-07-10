import 'package:flutter/material.dart';

class TwitPage extends StatefulWidget {
  const TwitPage({super.key});

  @override
  State<TwitPage> createState() => _TwitPageState();
}

class _TwitPageState extends State<TwitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        // elevation: 0,
        leading: IconButton(
          icon: const Icon(
            size: 32,
            Icons.person_outline,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(24)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/twitter_icon.png",
                height: 24,
              ),
              const SizedBox(
                width: 8,
              ),
              const Text(
                "Search Twitter",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        actions:  [
          // Image(
          //   image: AssetImage("assets/images/sparkles_icon.png"),
          //   height: 30,
          //   width: 30,
          // )

          IconButton(
            icon:  Icon(
              size: 32,
              Icons.star_border_sharp,
              color: Colors.black,
            ),
            onPressed: () {},
          ),

        ],
      ),
      body: ListView(
        children: [
          makeFeed(
              userName: 'Cleve',
              userImage: 'assets/images/twit_user1.jpg',
              feedTime: '@all_the_sportz 1h',
              feedText:
                  "What's the most obscure hobby you've taken up in the last months? "
                  "Mine is making my own perfume. Be glad you don't have to smell it.",
              feedImage: 'assets/images/twit_post1.jpg'),
          makeFeed(
              userName: 'Katie O.',
              userImage: 'assets/images/twit_user2.jpg',
              feedTime: '@kay_tee_oh 1h',
              feedText: "Coffee&Plants, best way to start the day",
              feedImage: 'assets/images/twit_post2.jpg'),
          makeFeed(
              userName: 'Patel',
              userImage: 'assets/images/twit_user3.jpg',
              feedTime: '@patel_232 2h',
              feedText:
                  "Summer's here and all I have planned is staying inside and reading books."
                  "Is this a dream come true?",
              feedImage: 'assets/images/twit_post3.jpg'),
        ],
      ),
    );
  }

  //

  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(userImage), fit: BoxFit.cover)),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Text(
                                userName,
                                style: TextStyle(
                                    color: Colors.grey[900],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              SizedBox(width: 5),
                              Text(
                                feedTime,
                                style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_horiz),
                          color: Colors.grey[600],
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(
                      feedText,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),

                    SizedBox(height: 10),
                    Container(
                      height: 240,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(feedImage), fit: BoxFit.cover)),
                    ),
                    SizedBox(height: 5,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.comment, color: Colors.grey),
                        Icon(Icons.repeat, color: Colors.grey),
                        Icon(Icons.favorite_border, color: Colors.grey),
                        Icon(Icons.share, color: Colors.grey),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
