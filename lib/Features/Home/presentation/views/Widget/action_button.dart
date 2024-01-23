import 'package:booky_app/Core/functions/custom_lunchUrrl.dart';
import 'package:booky_app/Core/functions/warning_message.dart';
import 'package:booky_app/Core/widget/custom_button.dart';
import 'package:booky_app/Features/Home/data/Models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
            onPressed: () {
              waringMeassage(
                  context,
                  "We will add the book purchase feature soon, Stay tuned",
                  Colors.grey);
            },
            textTitle: "19.99€",
            backgroundColor: Colors.black,
            outlinedBorder: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                bottomLeft: Radius.circular(18),
              ),
            ),
          )),
          Expanded(
            child: CustomButton(
              onPressed: () {
                customLaunchUrl(context, bookModel.volumeInfo.previewLink!);
              },
              textTitle: cheakText(bookModel),
              textColor: Colors.black,
              backgroundColor: const Color(0xffE06065),
              outlinedBorder: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(18),
                  bottomRight: Radius.circular(18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String cheakText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return "Not Avaliable";
    } else {
      return "Preview";
    }
  }
}
