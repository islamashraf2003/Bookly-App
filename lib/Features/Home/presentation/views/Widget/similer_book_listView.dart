import 'package:booky_app/Features/Home/presentation/views/Widget/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBookListViewe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .178,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: CustomBookImage(
                    imgUrl:
                        'https://www.google.com/search?sca_esv=600247804&sxsrf=ACQVn08Y4_IOWCafTyxJli0Dit0n9LdEhQ:1705855263105&q=error+image+url&tbm=isch&source=lnms&sa=X&ved=2ahUKEwi2jvuH9u6DAxWUfKQEHQxWBKgQ0pQJegQIDBAB&biw=1528&bih=742&dpr=1.25#imgrc=IELwgGfK18BhyM'),
              );
            }),
      ),
    );
  }
}
