// Our movie model
class Movie {
  final int? id, year, numOfRatings, criticsReview, metascoreRating;
  final double? rating;
  final List<String>? genra;
  final String? plot, title, poster, backdrop, duration, clasification;
  final List<Map>? cast;

  Movie({
    this.poster,
    this.backdrop,
    this.title,
    this.id,
    this.year,
    this.numOfRatings,
    this.criticsReview,
    this.metascoreRating,
    this.rating,
    this.genra,
    this.plot,
    this.cast,
    this.duration,
    this.clasification
  });
}

// our demo data movie data
List<Movie> movies = [
  Movie(
    id: 1,
    title: "John Wick 3 - Parabellum",
    duration: "2h 67m",
    clasification: "PG-13",
    year: 2020,
    poster: "assets/images/poster_4.jpg",
    backdrop: "assets/images/backdrop_4.jpg",
    numOfRatings: 150212,
    rating: 7.3,
    criticsReview: 50,
    metascoreRating: 76,
    genra: ["Action", "Drama"],
    plot: "John Wick is back again but with a bounty on his head being chased by mercenaries. After murdering one of the members of his guild, Wick is expelled and becomes the focus of attention of all the assassins of the organization.",
    cast: [
      {
        "orginalName": "James Mangold",
        "movieName": "Director",
        "image": "assets/images/actor_5.png",
      },
      {
        "orginalName": "Matt \n Damon",
        "movieName": "Carroll",
        "image": "assets/images/actor_2.png",
      },
      {
        "orginalName": "Christian Bale",
        "movieName": "Ken Miles",
        "image": "assets/images/actor_3.png",
      },
      {
        "orginalName": "Caitriona Balfe",
        "movieName": "Mollie",
        "image": "assets/images/actor_4.png",
      },
    ],
  ),
  Movie(
    id: 2,
    title: "Ford v Ferrari ",
    year: 2019,
    duration: "2h 67m",
    clasification: "PG-13",
    poster: "assets/images/poster_2.jpg",
    backdrop: "assets/images/backdrop_2.jpg",
    numOfRatings: 150212,
    rating: 8.2,
    criticsReview: 100,
    metascoreRating: 76,
    genra: ["Action", "Biography", "Drama"],
    plot: "American car designer Carroll Shelby and driver Kn Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order.",
    cast: [
      {
        "orginalName": "James Mangold",
        "movieName": "Director",
        "image": "assets/images/actor_5.png",
      },
      {
        "orginalName": "Matt Damon",
        "movieName": "Carroll",
        "image": "assets/images/actor_2.png",
      },
      {
        "orginalName": "Christian Bale",
        "movieName": "Ken Miles",
        "image": "assets/images/actor_3.png",
      },
      {
        "orginalName": "Caitriona Balfe",
        "movieName": "Mollie",
        "image": "assets/images/actor_4.png",
      },
    ],
  ),
  Movie(
    id: 1,
    title: "Onward",
    year: 2020,
    duration: "2h 67m",
    clasification: "PG-13",
    poster: "assets/images/poster_3.jpg",
    backdrop: "assets/images/backdrop_3.jpg",
    numOfRatings: 150212,
    rating: 7.6,
    criticsReview: 50,
    metascoreRating: 79,
    genra: ["Action", "Drama"],
    plot: "American car designer Carroll Shelby and driver Kn Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order.",
    cast: [
      {
        "orginalName": "James Mangold",
        "movieName": "Director",
        "image": "assets/images/actor_1.png",
      },
      {
        "orginalName": "Matt Damon",
        "movieName": "Carroll",
        "image": "assets/images/actor_2.png",
      },
      {
        "orginalName": "Christian Bale",
        "movieName": "Ken Miles",
        "image": "assets/images/actor_3.png",
      },
      {
        "orginalName": "Caitriona Balfe",
        "movieName": "Mollie",
        "image": "assets/images/actor_4.png",
      },
    ],
  ),
];

