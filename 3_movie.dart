class Movie {
  String title;
  String studio;
  String rating;

  Movie(this.title, this.studio, [this.rating = "PG"]);

  getPG(List<Movie> movies) {
    for (int i = 0; i < movies.length; i++) {
      if (movies[i].rating == "PG") {
        print(movies[i].title);
      }
    }
  }
}

void main() {
  Movie m1 = Movie("Casino Royale", "Eon Productions", "PG13");
  Movie m2 = Movie("الاسطوره", "محمد رمضان", "PG");

  List<Movie> list = [m1, m2];
  m1.getPG(list);
}
