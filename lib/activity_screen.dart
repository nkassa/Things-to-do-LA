import 'package:flutter/material.dart';
import 'activities_in_la.dart';


class ActivityList extends StatelessWidget {
  const ActivityList({Key? key, required this.listOfThings}) : super(key:key);
  final List<ThingsToDo> listOfThings;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to LA'),
      ),
      backgroundColor: Colors.brown[200],
      body: ListView(
        padding: const EdgeInsets.only(top: 30, bottom: 30, right: 30, left: 30),
        children: [
          for(int i = 0; i < listOfThings.length; i++)
          Container(
            margin: const EdgeInsets.only(bottom: 25, top: 25),
            decoration: BoxDecoration(
              borderRadius:  BorderRadius.circular(5),
              color: Colors.black,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 20, bottom: 20, right: 20, left: 20),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                            listOfThings[i].url,
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover
                          )
                      ),
                      const SizedBox(width: 25),
                      Expanded(
                        flex: 2,
                        child: Text(
                          listOfThings[i].attractions,
                          style: TextStyle(
                              color: Colors.white.withOpacity(.9),
                              fontWeight: FontWeight.bold,
                              fontSize: 25
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: Text(''),
                      ),
                      Expanded(
                        flex: 1,
                        child:
                        ElevatedButton(
                            onPressed: () {
                              String pagePath;
                              if(i == 0)
                                {
                                  pagePath = '/a';
                                }
                              else if (i == 1)
                                {
                                  pagePath = '/b';
                                }
                              else
                                {
                                  pagePath = '/c';
                                }
                              Navigator.of(context).pushNamed(pagePath);
                            },
                            child: const Text('Explore')
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
