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
              height: 10,
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
          ],
        ),
      ),
    );
  }
}
