class Article {
  String key;
  int kasus;
  int sembuh;
  int meninggal;
  int dirawat;
  

  Article(
      {
      this.key,
      this.kasus,
      this.sembuh,
      this.meninggal,
      this.dirawat});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
        
        key: json["key"],
        kasus: json["jumlah_kasus"],
        sembuh: json["jumlah_sembuh"],
        meninggal: json["jumlah_meninggal"],
        dirawat: json["jumlah_dirawat"]);
  }
}


