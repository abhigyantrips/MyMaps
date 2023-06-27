class MyMap {
  final String name;
  final String url;

  const MyMap({
    required this.name,
    required this.url,
  });

  factory MyMap.fromJson(Map<String, dynamic> json) {
    return MyMap(
      name: json['name'].toString(),
      url: json['url'].toString(),
    );
  }
}
