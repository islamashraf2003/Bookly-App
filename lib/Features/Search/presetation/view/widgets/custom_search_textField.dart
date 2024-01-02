import 'package:flutter/material.dart';

class CustomSearchTextFiled extends StatelessWidget {
  const CustomSearchTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",
          enabledBorder: outlineInputBorder(),
          focusedBorder: outlineInputBorder(),
          suffixIcon: IconButton(
            color: const Color(0xffE06065),
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color(0xffE06065),
      ),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
