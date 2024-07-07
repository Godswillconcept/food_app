
// static Movie getMovies() => List<Movie>() [
//     Movie(title,year,rated,released,runtime,
// genre,director,writer,actors,plot,
// plot,language,country,awards,poster,
// metascore,imbdRating,imbdVotes,imbdID,type,response,images)
// ];

class Movie {
  final String title;
  final String year;
  final String rated;
  final String released;
  final String runtime;
  final String genre;
  final String director;
  final String writer;
  final String actors;
  final String plot;
  final String language;
  final String country;
  final String awards;
  final String poster;
  final String metascore;
  final String imdbRating;
  final String imdbVotes;
  final String imdbID;
  final String type;
  final String response;
  final List<String> images;

  Movie({
    required this.title,
    required this.year,
    required this.rated,
    required this.released,
    required this.runtime,
    required this.genre,
    required this.director,
    required this.writer,
    required this.actors,
    required this.plot,
    required this.language,
    required this.country,
    required this.awards,
    required this.poster,
    required this.metascore,
    required this.imdbRating,
    required this.imdbVotes,
    required this.imdbID,
    required this.type,
    required this.response,
    required this.images,
  });

  static List<Movie> getMovies() {
    return [
          Movie(
      title: "The Secret of the Lost City",
      year: "2023",
      rated: "PG-13",
      released: "July 15, 2023",
      runtime: "142 min",
      genre: "Adventure, Mystery",
      director: "John Smith",
      writer: "Alice Johnson",
      actors: "Tom Cruise, Emily Watson, Michael Johnson",
      plot: "A group of explorers embarks on a quest to find a hidden city deep in the jungle.",
      language: "English",
      country: "USA",
      awards: "3 wins & 5 nominations",
      poster: "https://fastly.picsum.photos/id/0/5000/3333.jpg?hmac=_j6ghY5fCfSD6tvtcV74zXivkJSPIfR9B8w34XeQmvU",
      metascore: "68",
      imdbRating: "7.5",
      imdbVotes: "42,567",
      imdbID: "tt1234567",
      type: "Movie",
      response: "True",
       images: ["https://hips.hearstapps.com/hmg-prod/images/index-avatar-1665421955.jpg?crop=0.502xw:1.00xh;0.250xw,0&resize=1200:*", 'https://pyxis.nymag.com/v1/imgs/51b/28a/622789406b8850203e2637d657d5a0e0c3-avatar-rerelease.1x.rsquare.w1400.jpg', 'https://images.immediate.co.uk/production/volatile/sites/3/2022/12/Avatar-The-Way-of-Water-cast-a7ea95b.jpg?resize=620%2C325'],
    ),
    Movie(
      title: "Galactic Warriors",
      year: "2022",
      rated: "PG",
      released: "February 2, 2022",
      runtime: "120 min",
      genre: "Science Fiction, Action",
      director: "Sarah Adams",
      writer: "David Wilson",
      actors: "Jessica Lee, John Davis, Michelle Rodriguez",
      plot: "In a distant galaxy, a group of warriors battles evil forces to save the universe.",
      language: "English",
      country: "USA",
      awards: "2 wins & 3 nominations",
      poster: "https://fastly.picsum.photos/id/1/5000/3333.jpg?hmac=_j6ghY5fCfSD6tvtcV74zXivkJSPIfR9B8w34XeQmvU",
      metascore: "74",
      imdbRating: "6.9",
      imdbVotes: "35,812",
      imdbID: "tt2345678",
      type: "Movie",
      response: "True",
       images: ["https://hips.hearstapps.com/hmg-prod/images/index-avatar-1665421955.jpg?crop=0.502xw:1.00xh;0.250xw,0&resize=1200:*", 'https://pyxis.nymag.com/v1/imgs/51b/28a/622789406b8850203e2637d657d5a0e0c3-avatar-rerelease.1x.rsquare.w1400.jpg', 'https://images.immediate.co.uk/production/volatile/sites/3/2022/12/Avatar-The-Way-of-Water-cast-a7ea95b.jpg?resize=620%2C325'],
    ),
    Movie(
      title: "The Enchanted Forest",
      year: "2023",
      rated: "PG",
      released: "April 1, 2023",
      runtime: "110 min",
      genre: "Fantasy, Family",
      director: "Julia Anderson",
      writer: "Mark Wilson",
      actors: "Emma Roberts, David Johnson, Sophie Turner",
      plot: "A magical forest comes to life, and three friends must save it from destruction.",
      language: "English",
      country: "USA",
      awards: "1 win & 2 nominations",
      poster: "https://fakeapi.com/poster3.jpg",
      metascore: "82",
      imdbRating: "8.1",
      imdbVotes: "29,456",
      imdbID: "tt3456789",
      type: "Movie",
      response: "True",
      images: ["https://fakeapi.com/image5.jpg", "https://fakeapi.com/image6.jpg"]
    ),
    Movie(
      title: "Infinite Dimensions",
      year: "2022",
      rated: "PG-13",
      released: "May 20, 2022",
      runtime: "128 min",
      genre: "Science Fiction, Thriller",
      director: "Robert Adams",
      writer: "Laura Johnson",
      actors: "Chris Evans, Jennifer Lawrence, Michael Smith",
      plot: "A physicist discovers a way to access parallel universes, leading to unexpected consequences.",
      language: "English",
      country: "USA",
      awards: "5 wins & 7 nominations",
      poster: "https://fakeapi.com/poster4.jpg",
      metascore: "70",
      imdbRating: "7.0",
      imdbVotes: "38,124",
      imdbID: "tt4567890",
      type: "Movie",
      response: "True",
      images: ["https://fakeapi.com/image7.jpg", "https://fakeapi.com/image8.jpg"]
    ),
    Movie(
      title: "Deserted Island",
      year: "2023",
      rated: "PG-13",
      released: "September 10, 2023",
      runtime: "135 min",
      genre: "Drama, Survival",
      director: "Lucy Johnson",
      writer: "Daniel Davis",
      actors: "Anne Hathaway, Matthew McConaughey, Lily Smith",
      plot: "Stranded on a remote island, survivors must work together to escape.",
      language: "English",
      country: "USA",
      awards: "2 wins & 4 nominations",
      poster: "https://fakeapi.com/poster5.jpg",
      metascore: "77",
      imdbRating: "7.8",
      imdbVotes: "28,910",
      imdbID: "tt5678901",
      type: "Movie",
      response: "True",
      images: ["https://fakeapi.com/image9.jpg", "https://fakeapi.com/image10.jpg"]
    ),
  
     
      
    ];
  }
}
