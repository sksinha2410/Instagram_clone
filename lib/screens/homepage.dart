import "package:flutter/material.dart";
import "../utils/global.dart";
import "../widgets/post.dart";
import "../widgets/story.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: darkBackgroundColor,
        appBar: AppBar(
          backgroundColor: darkBackgroundColor,
          centerTitle: false,
          automaticallyImplyLeading: false,
          title: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/images/logo.png'),
                    height: 35,
                  ),
                  Expanded(flex: 1, child: SizedBox()),
                  Icon(Icons.favorite_outline, color: Colors.white, size: 26),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.message_outlined, color: Colors.white, size: 26),
                ],
              )),
        ),
        body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20),
                    child: const Row(children: [
                      Story(
                          img:"https://firebasestorage.googleapis.com/v0/b/samagam-e10a2.appspot.com/o/posts%2Fpost1705856655990post.jpg?alt=media&token=7c465a7a-c87e-4012-ba51-b5ec56f09306",
                          username: "Shivam"),
                      Story(
                          img:"https://firebasestorage.googleapis.com/v0/b/samagam-e10a2.appspot.com/o/PosterEvent%2F1706124785197profile.jpg?alt=media&token=52463582-facc-46d9-81de-a5bb1d31f30b",
                          username: "DesCo"),
                      Story(
                          img:
                          "https://firebasestorage.googleapis.com/v0/b/samagam-e10a2.appspot.com/o/PosterEvent%2F1706107942259profile.jpg?alt=media&token=72c1ba50-d1d5-4b00-a2a9-f143933ce7ed",
                          username: "Natvansh"),
                      Story(img: "https://firebasestorage.googleapis.com/v0/b/samagam-e10a2.appspot.com/o/posts%2Fpost1706084819590post.jpg?alt=media&token=6234306f-1c24-4d35-958a-d0e0f5c6271c", username: 'Saurabh'),
                      Story(
                          img:"https://firebasestorage.googleapis.com/v0/b/samagam-e10a2.appspot.com/o/posts%2Fpost1705417165687post.jpg?alt=media&token=52209e2a-a42d-4ee7-99a6-f910f877dd24",
                          username: "BonFire"),
                    ]),
                  ),
                ),
                const Divider(
                  thickness: 0.2,
                  color: secondaryColor,
                ),
                const Post(
                  username: "Shivam",
                  userurl:
                  "https://firebasestorage.googleapis.com/v0/b/samagam-e10a2.appspot.com/o/PosterEvent%2F1705825337632profile.jpg?alt=media&token=7a53c5d9-e42d-4ab0-8f8d-24d210e9b016",
                  date: '02/03/2024',
                  desc: "Ghumne chale?",
                  likes: 1604,
                  posturl: "assets/images/post1.png",
                  title: "Shimla",
                ),
                const Post(
                    date: "01/03/202",
                    desc: "Feeling sad with 59 others",
                    likes: 563,
                    posturl: "assets/images/post2.jpg",
                    title: "Shillong",
                    username: "Angel Priya",
                    userurl:
                    "https://firebasestorage.googleapis.com/v0/b/college-project-a5632.appspot.com/o/download.jpeg?alt=media&token=64f1938e-2398-422c-b750-21583fd6a721"),
                const Post(
                  username: "Saurabh",
                  userurl:
                  "https://firebasestorage.googleapis.com/v0/b/samagam-e10a2.appspot.com/o/users%2Fnullprofile.jpg?alt=media&token=967aaa3e-0ad8-4ee4-83b4-290b1496b7b6",
                  date: '29/02/2024',
                  desc: "Chat-GPT use karne wale😂",
                  likes: 7435,
                  posturl: "assets/images/1696762728335.jpeg",
                  title: "NIT Patna",
                ),
                const Post(
                  username: "Students",
                  userurl:
                  "https://firebasestorage.googleapis.com/v0/b/college-project-a5632.appspot.com/o/profile.png?alt=media&token=0b7b817b-9fba-4800-9444-5ed62b548fa0",
                  date: '01/01/2024',
                  desc: "🙄",
                  likes: 155,
                  posturl: "assets/images/post4.jpeg",
                  title: "NIT Patna",
                ),
              ],
            )));
  }
}
