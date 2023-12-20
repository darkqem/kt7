import 'package:flutter/material.dart';
import 'package:kt7/models/car/car.dart';
import 'package:kt7/card/card_details.dart';



class CarWidget extends StatelessWidget 
{
  final Car car;
  final index;

  const CarWidget({super.key, required this.car, required this.index});

  @override
  Widget build(BuildContext context) 
  {
    return GestureDetector
    (
      onTap: () 
      {
        Navigator.push
        (
          context,
          MaterialPageRoute
          (
            builder: (context) => CarDetailsScreen(
                car: car),
          ),
        );
      }, 
      child: Card
      (
       color: Color.fromARGB(255, 255, 255, 255),
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      
       child: ListTile
       (
          isThreeLine: true,
          
          subtitle: 
          Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text:'${car.brand}  ${car.model} ',style: TextStyle(
                    color: Colors.black, fontSize: 20)),
                      
                    ]
                    )
                ),
         leading: Column(
            children: [
              SizedBox(
               height: 6,
             ),
              Text(
                index.toString(),
                style: TextStyle(
                    color: Colors.black, fontSize: 25,
                   fontWeight: FontWeight.bold),
              )
           ],
         ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (car.availability)
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text:'Available  ',style: TextStyle(
                    color: Colors.black, fontSize: 20)),
                      WidgetSpan(
                        child: Icon(Icons.check, color: Colors.green,) )
                    ]
                    )
                )
              else
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text:'Not available  ',style: TextStyle(
                    color: Colors.black, fontSize: 20)),
                      WidgetSpan(
                        child: Icon(Icons.close, color: Colors.red,) )
                    ]
                   )
                )  
            ],
          ),
        ),
      ),
    );
  }
}