import 'package:flutter/material.dart';
import 'package:movie_info_app/screens/home/components/gallery.dart';

import '../../../constants.dart';
import 'cast_card.dart';

class CastAndCrew extends StatelessWidget {
  final List casts;

  const CastAndCrew({Key? key, required this.casts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Cast & Crew', style: Theme.of(context).textTheme.headline5),
            SizedBox(
            height: 64,
            width: 64,
            child: FlatButton (
              color: Colors.transparent,
              splashColor: Colors.black26,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Gallery()));
              },
              child: const Icon(Icons.image),
              ),
            ),
            const SizedBox(height: kDefaultPadding),
            SizedBox(
              height: size.height * 0.18,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CastCard(cast: casts[index]),
                itemCount: casts.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
