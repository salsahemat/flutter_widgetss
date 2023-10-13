import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoved = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Mission 1",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.blue[400],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.centerRight,
            colors: [Colors.blue, Colors.white],
          ),
        ),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                    width: double.infinity,
                    child: ClipRRect(
                      child: Image.asset(
                        'images/golden1.jpeg',
                        fit: BoxFit.fill,
                      ),
                    )),
                Positioned(
                  top: 10.0,
                  right: 10.0,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isLoved = !isLoved;
                      });
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.favorite,
                          color: isLoved ? Colors.red : Colors.grey[700],
                        ),
                      ),
                    ),
                  ), 
                ),
              ], //children
            ), //stack
            Container(
              child: Container(
                margin: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: AspectRatio(
                              aspectRatio: 1.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset('images/golden2.jpeg',
                                    fit: BoxFit.fill),
                              ),
                            ))),
                    Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: AspectRatio(
                              aspectRatio: 1.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset('images/golden3.jpeg',
                                    fit: BoxFit.fill),
                              ),
                            ))),
                    Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: AspectRatio(
                              aspectRatio: 1.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset('images/golden4.jpeg',
                                    fit: BoxFit.fill),
                              ),
                            ))),
                    Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: AspectRatio(
                              aspectRatio: 1.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset('images/golden5.jpeg',
                                    fit: BoxFit.fill),
                              ),
                            ))),
                  ],
                ),
              ),
            ),
            Text(
              "Welcome to Golden Tulip Holland Batu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(8),
                children: [
                  // Teks panjang yang bisa di-scroll
                  Text(
                    "The 4-star Golden Tulip Holland Resort is ideally located in the heart of leisure place in Batu, with easy access to family recreational place and entertainments. It offers two food & beverage venues, swimming pools, a spa, a fitness center, a kids playground and meeting room facilities which cater up to 2000 person. Golden Tulip Holland Resort offers the kind of facilities and services that make travelling with children a breeze. The hotel is geared towards the needs and requirements of all families, big and small. Our hotel offers various activities for kids, along with a pool/slide.Try our tempting menu of drinks and light meals available 24 hours. When you feel the need of food and beverage, we are ready to serve you. Our business",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ], //children
        ), //column
      ), //container
    ); //Scaffold
  }
}