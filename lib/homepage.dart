import 'package:flutter/material.dart';
import 'package:job_app/job-card.dart';
import 'package:job_app/recent_job_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List jobs = [
    ['Google', 'assets/google.png', 'UI/UX Designer', '60'],
    ['Apple', 'assets/apple.png', 'Front End', '50'],
    ['Uber', 'assets/uber.png', 'App Developer', '45'],
    ['Nike', 'assets/nike.png', 'UI Designer', '40'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // appbar
          SizedBox(
            height: 75,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Container(
              padding: EdgeInsets.all(8),
              height: 50,
              child: Image.asset(
                'assets/menu_left.png',
                color: Colors.grey[800],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 1, color: Colors.white),
                  color: Colors.grey[200]),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          // discove new pat
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Discover New Path',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          // search jobs
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          height: 30,
                          child: Image.asset(
                            'assets/search.png',
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                      Expanded(
                          child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search for a job',
                          border: InputBorder.none,
                        ),
                      ))
                    ],
                  ),
                )),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 50,
                  child: Image.asset(
                    'assets/preferences.png',
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(12)),
                )
              ],
            ),
          ),
          // for you job tiles
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'For You',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            height: 140,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: jobs.length,
                itemBuilder: (context, index) {
                  return JobCard(
                    companyName: jobs[index][0],
                    companyLogo: jobs[index][1],
                    position: jobs[index][2],
                    rate: jobs[index][3],
                  );
                }),
          ),
          // recently added jobs
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Recently Added Jobs',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListView.builder(
                itemCount: jobs.length,
                itemBuilder: (context, index) {
                  return RecentJobCard(
                      companyName: jobs[index][0],
                      companyLogo: jobs[index][1],
                      position: jobs[index][2],
                      rate: jobs[index][3]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
