List<CategoryModel> category = [
  CategoryModel(name: 'Business'),
  CategoryModel(name: 'Entertainment'),
  CategoryModel(name: 'General'),
  CategoryModel(name: 'Health'),
  CategoryModel(name: 'Science'),
  CategoryModel(name: 'Sports'),
  CategoryModel(name: 'Technology'),
];

class CategoryModel {
  final String name;

  CategoryModel({
    required this.name,
  });
}
