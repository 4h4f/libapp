import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Explore",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        elevation: 0,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: CircleAvatar(
            radius: 5,
            backgroundColor: Colors.black12.withOpacity(.1),
            child: IconButton(
              icon: Image.asset('assets/icons/hamburger1.png'),
              onPressed: () {},
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10, top: 5),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/img/habib.jpg'),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.search),
                      ),
                      const Expanded(
                          child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Search For Books...',
                          border: InputBorder.none,
                        ),
                      ))
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Now',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                GestureDetector(
                  child: const Text("Show All"),
                  onTap: () {},
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 300,
              width: double.infinity,
              //color: Colors.purple,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 200,
                        width: 150,
                        //color: Colors.teal,
                        decoration: BoxDecoration(
                            color: Colors.teal.withOpacity(.2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            height: 150,
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/img/book1.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 80,
                        width: 150,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Memory",
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                const Text(
                                  "By Tomas John",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 200,
                        width: 150,
                        //color: Colors.teal,
                        decoration: BoxDecoration(
                            color: Colors.teal.withOpacity(.2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: SizedBox(
                            height: 150,
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/img/book2.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 80,
                        width: 150,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "The King ",
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                const Text(
                                  "By Tomas John",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
