import 'package:flutter/material.dart';
import 'activities_in_la.dart';
import 'activity_screen.dart';
import 'places_to_see.dart';
import 'places_to_eat.dart';
import 'places_to_drink.dart';
import 'location_info.dart';

void main() {
  runApp(const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to LA',
      routes: <String, WidgetBuilder> {
        '/a' : (BuildContext context) =>  Restaurants(
          places: [
            LocationInfo(
                name: 'n/naka',
                address: '3455 Overland Ave, Los Angeles, CA 90034',
                urlOfPlaces: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSffVLyqxpM8OmFi2hsgleH3iCMYMUSa2gG5w&usqp=CAU',
            ),
            LocationInfo(
                name: 'Hayato',
                address: '1320 E 7th St #126, Los Angeles, CA 90021',
                urlOfPlaces: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHk8whzQFPEHbWvOR1TVHC4FiCOufNieFGLQ&usqp=CAU',
            ),
            LocationInfo(
                name: 'Bavel',
                address: '500 Mateo St #102, Los Angeles, CA 90013',
                urlOfPlaces: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNxp6eanqZe9caKhFnSxge3XDURoEqp-V9qQ&usqp=CAU',
            ),
            LocationInfo(
              name: 'Orsa & Winston',
              address: 'FARMERS AND MERCHANTS BANK BUILDING, 122 4th St, Los Angeles, CA 90013',
              urlOfPlaces: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8hKRDkMeZd1hOl-KnJrcixV2rk5jTx4IjgA&usqp=CAU',
            ),
            LocationInfo(
              name: 'Bestia',
              address: '2121 E 7th Pl, Los Angeles, CA 90021',
              urlOfPlaces: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNzTML0tpPOKwfZpp-H-l3_MtlzeuXXO9sjA&usqp=CAU',
            ),
            LocationInfo(
              name: 'République',
              address: '624 S La Brea Ave, Los Angeles, CA 90036',
              urlOfPlaces: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzNyUmE_xhy3gklNJ6WMUSUR9C89lP5tkCIw&usqp=CAU',
            ),
            LocationInfo(
              name: 'Damian',
              address: '2132 E 7th Pl, Los Angeles, CA 90021',
              urlOfPlaces: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTA0Jll4L8TdHk0jbIEe7P2EWHdvptNy68dQ&usqp=CAU',
            ),
            LocationInfo(
              name: 'Jitlada',
              address: '5233 Sunset Blvd, Los Angeles, CA 90027',
              urlOfPlaces: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqBrRYjayiy81PUojAOOxZc0cViD4iDXdMdw&usqp=CAU',
            ),
            LocationInfo(
              name: 'Sushi Kaneyoshi',
              address: '250 1st St B1, Los Angeles, CA 90012',
              urlOfPlaces: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdiNW2f8ialllznpVrtPP0JpoNrQoJVlLvwg&usqp=CAU',
            ),
            LocationInfo(
              name: 'Pijja Palace',
              address: '2711 Sunset Blvd, Los Angeles, CA 90026',
              urlOfPlaces: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWQ6YH7mTCFtr4BEb3rKUnkRQFZpxjkmje5w&usqp=CAU',
            ),
          ],
        ),
        '/b' : (BuildContext context) =>  Bars(
          placesToDrink: [
            LocationInfo(
              name: 'All Seasons Brewing',
              address: '800 S La Brea Ave, Los Angeles, CA 90036, United States',
              urlOfPlaces: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzzNkPvmP_H1dZ5DCiZkM8XGg_OJ78RsJirA&usqp=CAU',
            ),
            LocationInfo(
              name: 'Apothéke',
              address: '1746 N Spring St, Los Angeles, CA 90012, United States',
              urlOfPlaces: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR59G8YTQBhMjjbMO8xcpec9SHIXOJStihpEQ&usqp=CAU',
            ),
            LocationInfo(
              name: 'The Ruby Fruit',
              address: '3510 Sunset Blvd, Los Angeles, CA 90026',
              urlOfPlaces:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJbCtql4jrgX6E0mmltCE_RlabjOFl6HMDfg&usqp=CAU' ,
            ),
            LocationInfo(
              name: 'Tiki Ti',
              address: '4427 Sunset Blvd, Los Angeles, CA 90027',
              urlOfPlaces: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyeQhLxvAVCf5KxXBMbH7dAIJBf-ERyJhiDQ&usqp=CAU',
            ),
            LocationInfo(
              name: 'Employees Only',
              address: '7953 Santa Monica Blvd., West Hollywood, CA 90046',
              urlOfPlaces: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqwFmGZmbkpRrmqfHuqrD8G3CXVo6Kfmf2Ww&usqp=CAU',
            ),
            LocationInfo(
              name: 'Mrs. Fish',
              address: '448 S. Hill Street, Los Angeles, CA 90013',
              urlOfPlaces: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn6B5FhoQkhI-vi9htB3M7m5gDjmHwskwz1Q&usqp=CAU',
            ),
            LocationInfo(
              name: ' Spire 73',
              address: '900 Wilshire Blvd fl 73, Los Angeles, CA 90017',
              urlOfPlaces: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlSLRUOhLnTMaOFB2QxLXhoSWjYm5aY8WMpur0Kk469kgOI5jMbGW4493W4_Fdzboncyk&usqp=CAU',
            ),
            LocationInfo(
              name: 'The Let’s Go! Disco & Cocktail Club',
              address: '710 E 4th Pl, Los Angeles, CA 90013',
              urlOfPlaces: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUywGp1wU4DtzI7xZpmEKcHGxzUa0s1xFROA&usqp=CAU',
            ),
            LocationInfo(
              name: ' Madre',
              address: '8905 Melrose Ave, West Hollywood, CA 90069',
              urlOfPlaces: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTcMxafE_bjTfPQ-SpVmvHIyQi4WkpaT8bPA&usqp=CAU',
            ),
            LocationInfo(
              name: 'The Varnish',
              address: '118 E 6th St, Los Angeles, CA 90014',
              urlOfPlaces: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2j9Wl9-A3HVuAK8Dv5zjNK9a25TUvT7JtVw&usqp=CAU',
            ),
          ],
        ),
        '/c' : (BuildContext context) =>  Visit(
          placesToSee: [
            LocationInfo(
              name: 'Venice Beach',
              address: '1800, Front Walk, Los Angeles, California',
              urlOfPlaces: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHwE3p377PAUidu1w9L8iAfjGX5Bu0jt7I3g&usqp=CAU',
            ),
            LocationInfo(
              name: 'Universal Studios',
              address: '100 Universal City Plaza, California, 91098, USA',
              urlOfPlaces: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQN6392BqwFaiF48mVwYXhVVJ9hY2X87_IWCQ&usqp=CAU',
            ),
            LocationInfo(
              name: 'The Getty Center',
              address: '1200, Getty Center, Los Angeles, California, 90049',
              urlOfPlaces: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdMRalqltWZmVXiHHGQMkGeuVY0QA_dn0EeQ&usqp=CAU',
            ),
            LocationInfo(
              name: 'Santa Monica Beach',
              address: 'Pacific Coast Hwy, Santa Monica, CA 90401, USA',
              urlOfPlaces: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJxIuMDiB_3SkHRilOs-mqVLO2IE7UFjcfjw&usqp=CAU',
            ),
            LocationInfo(
              name: 'The Museum of Jurassic Technology',
              address: '9341 Venice Boulevard, Culver City, 90232 California',
              urlOfPlaces: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGM_-7Oj_1WAWwa6WQj-NkNN0c2TWNwQwHGQ&usqp=CAU',
            ),
            LocationInfo(
              name: 'The Griffith Observatory',
              address: '4730 Crystal Springs Dr, Los Angeles, CA 90027, USA',
              urlOfPlaces: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRojwAI4NlMMW3xM6oEhMg99YD5JqHbG60qjA&usqp=CAU',
            ),
            LocationInfo(
              name: 'The Hollywood Walk of Fame',
              address: ' North Highland Ave & Hollywood Boulevard, Los Angeles, CA 90028',
              urlOfPlaces: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfJGzMJZ-UuStAzzKgYUdIDKyhoBHYzKIyrw&usqp=CAU',
            ),
            LocationInfo(
              name: 'Disneyland Park',
              address: '1313 Disneyland Dr, Anaheim, CA 92802, USA',
              urlOfPlaces: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmUZ634FDy3aV5S0GCrSQ89dWLdg_4Ezmo2Q&usqp=CAU',
            ),
            LocationInfo(
              name: 'The Broad',
              address: '221 S Grand Ave, Los Angeles, CA 90012, USA',
              urlOfPlaces: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDlrJk_5FnOaaF_77-CSQrGETawLSAYanwHA&usqp=CAU',
            ),
            LocationInfo(
              name: 'The Nethercutt Collection',
              address: '15151 Bledsoe St, Sylmar, CA 91342, USA',
              urlOfPlaces: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJ0emjkUi_4tqrixMSKAVjVxwc2ppJBKX84Q&usqp=CAU',
            ),
          ],
        ),
      },
      theme: ThemeData (
        appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.grey[800]),
              fixedSize: MaterialStateProperty.all<Size>(
                const Size(100, 60),
              ),
            )
          ),
        ),
      home: ActivityList(
        listOfThings: [
          ThingsToDo(
            attractions: 'Places to Eat',
            url: 'https://a.cdn-hotels.com/gdcs/production0/d1513/35c1c89e-408c-4449-9abe-f109068f40c0.jpg',
          ),
          ThingsToDo(
            attractions: 'Places to Drink',
            url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu86_ev8lpkb2LWxpmx0jNY1CKyTCcTDJSPw&usqp=CAU',
          ),
          ThingsToDo(
            attractions: 'Places to See',
            url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFfIht1OFPzvTCuGCSzOqyxsydef8VZfsnJQ&usqp=CAU',
          ),
        ],
      ),
    );
  }
}
