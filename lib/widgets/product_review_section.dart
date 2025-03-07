import 'package:flutter/material.dart';

class Review {
  final String id;
  final String userId;
  final String username;
  final String comment;
  final double rating;
  final DateTime date;

  Review({
    required this.id,
    required this.userId,
    required this.username,
    required this.comment,
    required this.rating,
    required this.date,
  });
}

class ProductReviewSection extends StatefulWidget {
  final String productId;
  final String productName;

  const ProductReviewSection({
    Key? key,
    required this.productId,
    required this.productName,
  }) : super(key: key);

  @override
  State<ProductReviewSection> createState() => _ProductReviewSectionState();
}

class _ProductReviewSectionState extends State<ProductReviewSection> {
  final _commentController = TextEditingController();
  double _userRating = 5;
  bool _isAddingReview = false;

  // Mock data for reviews - in a real app, this would come from a database or API
  final List<Review> _reviews = [
    Review(
      id: '1',
      userId: 'user1',
      username: 'Sahan Abishek',
      comment: 'My dog loves this food. Great quality and value!',
      rating: 5,
      date: DateTime.now().subtract(const Duration(days: 5)),
    ),
    Review(
      id: '2',
      userId: 'user2',
      username: 'Kavya Samaraweera',
      comment: 'Good product but a bit expensive compared to other brands.',
      rating: 4,
      date: DateTime.now().subtract(const Duration(days: 12)),
    ),
  ];

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  void _submitReview() {
    if (_commentController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a comment')),
      );
      return;
    }

    // In a real app, you would send this to your backend
    final newReview = Review(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      userId: 'current_user_id', // Would come from auth
      username: 'Current User', // Would come from auth
      comment: _commentController.text,
      rating: _userRating,
      date: DateTime.now(),
    );

    setState(() {
      _reviews.insert(0, newReview);
      _commentController.clear();
      _userRating = 5;
      _isAddingReview = false;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Review submitted successfully')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        const Divider(),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Customer Reviews',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton.icon(
              onPressed: () {
                setState(() {
                  _isAddingReview = !_isAddingReview;
                });
              },
              icon: Icon(
                _isAddingReview ? Icons.close : Icons.add,
                color: const Color.fromARGB(255, 245, 146, 69),
              ),
              label: Text(
                _isAddingReview ? 'Cancel' : 'Add Review',
                style: const TextStyle(
                  color: Color.fromARGB(255, 245, 146, 69),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),

        // Add review form
        if (_isAddingReview) _buildAddReviewForm(),

        // Review list
        _reviews.isEmpty
            ? const Center(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'No reviews yet. Be the first to review this product!',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              )
            : Column(
                children:
                    _reviews.map((review) => _buildReviewItem(review)).toList(),
              ),
      ],
    );
  }

  Widget _buildAddReviewForm() {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Write a Review',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Product: ${widget.productName}',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 16),
            const Text('Rating:'),
            Row(
              children: List.generate(5, (index) {
                return IconButton(
                  onPressed: () {
                    setState(() {
                      _userRating = index + 1;
                    });
                  },
                  icon: Icon(
                    index < _userRating ? Icons.star : Icons.star_border,
                    color: Colors.amber,
                    size: 30,
                  ),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                );
              }),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _commentController,
              decoration: InputDecoration(
                labelText: 'Comment',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                filled: true,
                fillColor: Colors.grey[100],
              ),
              maxLines: 3,
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _submitReview,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 245, 146, 69),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Submit Review',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReviewItem(Review review) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  review.username,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  '${_formatDate(review.date)}',
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              children: List.generate(5, (index) {
                return Icon(
                  index < review.rating ? Icons.star : Icons.star_border,
                  color: Colors.amber,
                  size: 16,
                );
              }),
            ),
            const SizedBox(height: 8),
            Text(
              review.comment,
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
