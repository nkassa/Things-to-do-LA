import 'package:flutter/material.dart';
import 'location_info.dart';

class Bars extends StatefulWidget {
  const Bars({Key? key, required this.placesToDrink}) : super(key: key);
  final List<LocationInfo> placesToDrink;

  @override
  State<Bars> createState() => _Bars();

}

class _Bars extends State<Bars>
{
  late List<int> visitedList;
  late List<int> rating;

  @override
  void initState()
  {
    super.initState();
    visitedList = List.generate(widget.placesToDrink.length, (index) => 0);
    rating = List.generate(widget.placesToDrink.length, (index) => 0);
  }

  void _onPressed(int index)
  {
    setState(() {
      visitedList[index] = visitedList[index]  == 0 ? 1 : 0;
    });
  }

  void _onPressedRate(int index, int rate)
  {
    setState(() {
      rating[index] = rate;
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Night Out'),
      ),
      backgroundColor: Colors.brown[200],
      body: ListView(
        padding: const EdgeInsets.only(top: 30, bottom: 30, right: 30, left: 30),
        children: [
          for(int i = 0; i < widget.placesToDrink.length; i++)
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
                                widget.placesToDrink[i].urlOfPlaces,
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover
                            )
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                            flex: 1,
                            child:
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.placesToDrink[i].name,
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(.9),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  widget.placesToDrink[i].address,
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(.9),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13
                                  ),
                                ),
                              ],
                            )
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          flex: 2,
                          child:
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () => _onPressed(i),
                                style: ElevatedButton.styleFrom(
                                    fixedSize: const Size(150, 50)
                                ),
                                child: visitedList[i] == 1
                                    ? const Text('Visited')
                                    : const Text('Not-Visited'),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  for(int rate = 1; rate < 6; rate++)
                                    Padding(padding: const EdgeInsets.only(right: 5),
                                    child: ElevatedButton(
                                      onPressed: () => _onPressedRate(i, rate),
                                      style: ElevatedButton.styleFrom(
                                        fixedSize: const Size(5, 5),
                                        backgroundColor: rating[i] == rate ? Colors.brown[200] : Colors.grey[800],
                                      ),
                                      child: Text('$rate'),
                                      ),
                                    )
                                ],
                              )
                            ],
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
