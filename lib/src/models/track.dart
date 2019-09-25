class Track {
  int id;
  String name;
  String albumName;
  String albumArt;
  TrackSource source;

  Track({
    this.id,
    this.name,
    this.source,
    this.albumArt,
    this.albumName,
  });
}

enum TrackSource {
  iTunes,
  spotify,
}
