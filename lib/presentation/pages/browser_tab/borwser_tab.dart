import 'package:flutter/material.dart';
import 'package:social_bible/app/config/app_colors.dart';
import 'package:social_bible/presentation/pages/browser_tab/search_categories.dart';

class BrowserTab extends StatelessWidget {
  const BrowserTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 7.0),
                color: Colors.white,
                child: const Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Search",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search, size: 30.0)),
                      ),
                    ),
                  ],
                ),
              ),
              const SearchCategories(),
              Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story21.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story20.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story19.jpg',
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 2.0),
              Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story18.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story17.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story16.jpg',
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 2.0),
              Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story15.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story14.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story13.jpg',
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 2.0),
              Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story12.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story11.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story10.jpg',
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 2.0),
              Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story9.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/playstation.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story7.jpg',
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 2.0),
              Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story6.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story5.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story4.jpg',
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 2.0),
              Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story3.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story2.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/xbox.jpeg',
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 2.0),
              Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story21.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story20.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story19.jpg',
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 2.0),
              Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story18.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story17.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story16.jpg',
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 2.0),
              Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story15.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story14.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story13.jpg',
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 2.0),
              Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story12.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story11.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story10.jpg',
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 40.0)
            ],
          ),
        ),
      ),
    );
  }
}
