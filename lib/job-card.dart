import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  String companyName;
  String companyLogo;
  String position;
  String rate;

  JobCard({
    required this.companyName,
    required this.companyLogo,
    required this.position,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, right: 15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
            width: 200,
            padding: EdgeInsets.all(12),
            color: Colors.grey[200],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(height: 50, child: Image.asset(companyLogo),),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Text(companyName, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                Text(position, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                Text('\$${rate}/hr', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),)
              ],
            )
        ),
      ),
    );
  }
}
