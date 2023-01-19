import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchBarArea extends StatelessWidget {
  const SearchBarArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SizedBox(
              //width: 304,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffFEF6ED),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none),
                  hintText: 'What do you want to order?',
                  hintStyle: const TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.orange,
                  ),
                ),
              ),
            ),
          ),
          Gap(45),
          Container(
            height: 55,
            width: 54,
            decoration: BoxDecoration(
              color: Color(0xffFEF6ED),
              borderRadius: BorderRadius.circular(16.71),
              //image: const DecorationImage(
                //image: AssetImage(
                 // 'assets/images/healthy.png',
               // ),
               // fit: BoxFit.cover,
             // ),
            ),
          ),
        ],
      ),
    );
  }
}
