import 'package:flutter/material.dart';
import 'package:kt7/models/car/car.dart';

class CarDetailsScreen extends StatelessWidget {
  final Car car;

  const CarDetailsScreen({Key? key, required this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Details'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text:'Brand: ${car.brand} ',style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), fontSize: 40)),
                          ]
                        )
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text:'Model: ${car.model} ',style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), fontSize: 40)),
                          ]
                        )
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text:'Color: ${car.color} ',style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), fontSize: 40)),
                          ]
                        )
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text:'Price: ${car.price} ',style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), fontSize: 40)),
                            WidgetSpan(
                              child: Icon(Icons.attach_money_outlined, color: const Color.fromARGB(255, 255, 255, 255), size: 40,) )
                          ]
                        )
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      if (car.availability)
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text:'Available  ',style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), fontSize: 40)),
                              WidgetSpan(
                                child: Icon(Icons.check, color: Colors.green, size: 40,) )
                            ]
                          )
                        )
                    else
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text:'Not available  ',style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), fontSize: 40)),
                            WidgetSpan(
                              child: Icon(Icons.close, color: Colors.red,size: 40,) )
                          ]
                        )
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