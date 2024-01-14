import 'package:booky_app/Core/widget/custom_button.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
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
              textTitle: "Free preview",
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
}
