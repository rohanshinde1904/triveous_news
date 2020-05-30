import 'package:triveousnews/model/Category_model.dart';

List<Category_Model> getCategories() {
  List<Category_Model> category = new List<Category_Model>();

  Category_Model category_model;

  // 1st category
  category_model = new Category_Model();
  category_model.category_name = "Business";
  category_model.imageUrl =
      "https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80";
  category.add(category_model);

  // 2nd Category
  category_model = new Category_Model();
  category_model.category_name = "Entertainment";
  category_model.imageUrl =
      "https://images.unsplash.com/photo-1522869635100-9f4c5e86aa37?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80";
  category.add(category_model);

  // 3rd Category
  category_model = new Category_Model();
  category_model.category_name = "General";
  category_model.imageUrl =
      "https://images.unsplash.com/photo-1432821596592-e2c18b78144f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80";
  category.add(category_model);

  // 4th Category
  category_model = new Category_Model();
  category_model.category_name = "Health";
  category_model.imageUrl =
      "https://images.unsplash.com/photo-1506126613408-eca07ce68773?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=431&q=80";
  category.add(category_model);

  // 5th Category
  category_model = new Category_Model();
  category_model.category_name = "Science";
  category_model.imageUrl =
      "https://images.unsplash.com/photo-1451187580459-43490279c0fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=752&q=80";
  category.add(category_model);

  // 6th Category
  category_model = new Category_Model();
  category_model.category_name = "Sports";
  category_model.imageUrl =
      "https://images.unsplash.com/photo-1552667466-07770ae110d0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80";
  category.add(category_model);

  // 7th Category
  category_model = new Category_Model();
  category_model.category_name = "Technology";
  category_model.imageUrl =
      "https://images.unsplash.com/photo-1518770660439-4636190af475?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80";
  category.add(category_model);

  return category;
}
