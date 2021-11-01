import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import 'package:chat_app/resources/app_colors.dart';
import 'package:chat_app/widgets/search_widget/search_widget.dart';

import 'components/contact_widget/contact_widget.dart';
import 'components/contacts_list_widget/contacts_list_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static const double _collapsedHeight = 66;
  static const double _searchContainerHeight = 64;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
            expandedHeight: 110,
            collapsedHeight: _collapsedHeight,
            centerTitle: true,
            title: Text(
              FlutterI18n.translate(context, 'home.title'),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
            flexibleSpace: Column(
              children: [
                const Spacer(),
                Container(
                  height: _searchContainerHeight,
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [AppColors.tuna, AppColors.mercury],
                      stops: [0.5, 0.5],
                    ),
                  ),
                  child: const SearchWidget(),
                ),
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ).copyWith(
              bottom: 24,
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Column(
                    children: const [
                      ContactsListWidget(
                        title: 'Recent Messages',
                        contacts: [
                          ContactWidget(
                            title: 'Internet Bundle',
                            time: '45 mins ago',
                            messageText:
                                'You have reached 80% of AT_499_BDT...',
                          ),
                        ],
                      ),
                      ContactsListWidget(
                        title: 'All Messages',
                        contacts: [
                          ContactWidget(
                            title: 'Pizza Hut',
                            time: 'yesterday 4:56 PM',
                            messageText:
                                'Happy weekend! BUY 1 GET 1 free on...',
                          ),
                        ],
                      ),
                    ],
                  );
                },
                childCount: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
