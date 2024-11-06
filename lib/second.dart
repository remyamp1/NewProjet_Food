import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:newporjet_foodapp/database.dart';

class SecondPages extends StatefulWidget {
  const SecondPages({super.key});

  @override
  State<SecondPages> createState() => _SecondPagesState();
}

class _SecondPagesState extends State<SecondPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.green,
                  ),
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                Icon(
                  Icons.location_pin,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  "Magura, BD",
                  style:
                      TextStyle(color: const Color.fromARGB(255, 82, 81, 81)),
                ),
                SizedBox(width: 100),
                Container(
                  height: 30,
                  width: 30,
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/images4.jpeg"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10))),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Hi Rinku",
              style: TextStyle(color: Colors.green, fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              "Find your food",
              style: TextStyle(
                  color: const Color.fromARGB(255, 8, 8, 8), fontSize: 25),
            ),
            SizedBox(height: 10),
            Container(
              color: const Color.fromARGB(255, 238, 252, 239),
              height: 40,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 5),
                    Text('Search Food'),
                    Spacer(),
                    Container(
                      height: 50,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.green,
                      ),
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('Food', style: TextStyle(color: Colors.green)),
                Spacer(),
                Text(
                  "Fruits",
                  style: TextStyle(color: Colors.grey),
                ),
                Spacer(),
                Text(
                  "Vegetables",
                  style: TextStyle(color: Colors.grey),
                ),
                Spacer(),
                Text(
                  "Grocery",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 7),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return SingleChildScrollView(
                        child: Container(
                          height: 500,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 236, 235, 235),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                Container(
                                  height: 100,
                                  //  width: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              Database.Mylist[index]['image']),
                                          fit: BoxFit.cover)),
                                ),
                                Text(Database.Mylist[index]['name']),
                                Row(
                                  children: [
                                    Text(Database.Mylist[index]['time']),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    )
                                  ],
                                ),
                                Text(Database.Mylist[index]['rs']),
                              ],
                            ),
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
