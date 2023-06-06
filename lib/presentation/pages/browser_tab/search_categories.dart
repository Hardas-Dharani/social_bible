import 'package:flutter/material.dart';
import 'package:social_bible/app/config/app_colors.dart';

class SearchCategories extends StatelessWidget {
  const SearchCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 15.0),
      height: 50.0,
      width: MediaQuery.of(context).size.width,
      color: AppColors.white,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: <Widget>[
          const SizedBox(width: 7.0),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 7.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                    width: 0.3, color: Colors.black.withOpacity(0.6))),
            child: const Center(
                child: Text('Travel',
                    style: TextStyle(fontWeight: FontWeight.bold))),
          ),
          const SizedBox(width: 7.0),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 7.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                    width: 0.3, color: Colors.black.withOpacity(0.6))),
            child: const Center(
                child: Text('Architecture',
                    style: TextStyle(fontWeight: FontWeight.bold))),
          ),
          const SizedBox(width: 7.0),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 7.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                    width: 0.3, color: Colors.black.withOpacity(0.6))),
            child: const Center(
                child: Text('Food',
                    style: TextStyle(fontWeight: FontWeight.bold))),
          ),
          const SizedBox(width: 7.0),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 7.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                    width: 0.3, color: Colors.black.withOpacity(0.6))),
            child: const Center(
                child: Text('Decor',
                    style: TextStyle(fontWeight: FontWeight.bold))),
          ),
          const SizedBox(width: 7.0),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 7.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                    width: 0.3, color: Colors.black.withOpacity(0.6))),
            child: const Center(
                child:
                    Text('Art', style: TextStyle(fontWeight: FontWeight.bold))),
          ),
          const SizedBox(width: 7.0),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 7.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                    width: 0.3, color: Colors.black.withOpacity(0.6))),
            child: const Center(
                child: Text('Style',
                    style: TextStyle(fontWeight: FontWeight.bold))),
          ),
          const SizedBox(width: 7.0),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 7.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                    width: 0.3, color: Colors.black.withOpacity(0.6))),
            child: const Center(
                child:
                    Text('DIY', style: TextStyle(fontWeight: FontWeight.bold))),
          ),
          const SizedBox(width: 7.0),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 7.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                    width: 0.3, color: Colors.black.withOpacity(0.6))),
            child: const Center(
                child: Text('Music',
                    style: TextStyle(fontWeight: FontWeight.bold))),
          ),
          const SizedBox(width: 7.0),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 7.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                    width: 0.3, color: Colors.black.withOpacity(0.6))),
            child: const Center(
                child: Text('Sports',
                    style: TextStyle(fontWeight: FontWeight.bold))),
          ),
          const SizedBox(width: 7.0),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 7.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                    width: 0.3, color: Colors.black.withOpacity(0.6))),
            child: const Center(
                child: Text('Beauty',
                    style: TextStyle(fontWeight: FontWeight.bold))),
          ),
          const SizedBox(width: 7.0),
        ],
      ),
    );
  }
}
