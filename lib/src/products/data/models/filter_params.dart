class FilterParams{
  final String? search;
  final int? page;

  FilterParams({this.search, this.page});

  Map<String, dynamic> toJson() {
    return {
      'search': search,
      'page': page,
    };
  }
}