class QuickAccessModel {
  String trackName;
  String artistName;
  String albumArt;
  QuickAccessCategry categry;

  QuickAccessModel({
    this.categry,
    this.albumArt,
    this.trackName,
    this.artistName,
  });
}

enum QuickAccessCategry {
  recent,
  favourites,
}