// ignore_for_file: unused_element, depend_on_referenced_packages, library_prefixes, deprecated_member_use

import 'dart:ui';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: SizedBox(
          width: 128,
          height: 24,
          child: Image.asset(
            'images/moodinger_logo.png',
          ),
        ),
        actions: [
          Container(
            height: 24,
            width: 24,
            margin: const EdgeInsets.only(right: 18),
            child: Image.asset(
              'images/icon_direct.png',
            ),
          )
        ],
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: _getStoryList(),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Column(
                    children: [
                      const SizedBox(height: 34),
                      _getHeaderPost(),
                      const SizedBox(height: 24),
                      _getPostContent(),
                    ],
                  );
                },
                childCount: 4,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _getStoryList() {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return index == 0 ? _getAddStoryBox() : _getStoryListBox();
        },
      ),
    );
  }

  Widget _getAddStoryBox() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Column(
        children: [
          Container(
            width: 68,
            height: 68,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(17),
            ),
            child: Image.asset('images/icon_plus.png'),
          ),
          const SizedBox(height: 8),
          const Text(
            'Your Story',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'GB',
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _getStoryListBox() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Column(
        children: [
          Container(
            width: 68,
            height: 68,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              border: Border.all(
                width: 2,
                color: const Color(0xffF35383),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'images/profile.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'amirhamadadibii',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'GB',
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _getHeaderPost() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        children: [
          _getStoryBox(),
          const Padding(
            padding: EdgeInsets.only(left: 12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'amirhamadadibii',
                  style: TextStyle(
                    fontFamily: 'GB',
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                Text(
                  'امیراحمدادیبی برنامه‌نویس موبایل',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'SM',
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Image.asset('images/icon_more.png'),
        ],
      ),
    );
  }

  Widget _getStoryBox() {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 2,
          color: const Color(0xffF35383),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          'images/profile.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _getPostContent() {
    return SizedBox(
      height: 440,
      width: 394,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Positioned(
            top: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'images/post_cover.png',
              ),
            ),
          ),
          Positioned(
            top: 15,
            right: 15,
            child: Image.asset(
              'images/icon_video.png',
            ),
          ),
          Positioned(
            bottom: 15,
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                child: Container(
                  width: 340,
                  height: 46,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.white.withOpacity(0.5),
                        Colors.white.withOpacity(0.2),
                      ],
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 15),
                      Row(
                        children: [
                          Image.asset(
                            'images/icon_hart.png',
                          ),
                          const SizedBox(width: 6),
                          const Text(
                            '2.5 k',
                            style: TextStyle(
                              fontFamily: 'GB',
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(width: 42),
                      Row(
                        children: [
                          Image.asset(
                            'images/icon_comments.png',
                          ),
                          const SizedBox(width: 6),
                          const Text(
                            '1.5 k',
                            style: TextStyle(
                              fontFamily: 'GB',
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(width: 42),
                      Image.asset(
                        'images/icon_share.png',
                      ),
                      const SizedBox(width: 42),
                      Image.asset(
                        'images/icon_save.png',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
