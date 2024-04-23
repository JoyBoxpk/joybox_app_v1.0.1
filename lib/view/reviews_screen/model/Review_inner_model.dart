
// Step 1: Create a ReviewsInnerModel model
class ReviewsInnerModel {
  final String name;
  final String reviewtext;
  final int rating;
  final String date;

  ReviewsInnerModel({
    required this.name,
    required this.reviewtext,
    required this.rating,
    required this.date,
  });
}