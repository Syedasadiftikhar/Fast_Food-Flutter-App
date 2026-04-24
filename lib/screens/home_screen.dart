import 'package:flutter/material.dart';
import '../data/deals_data.dart';
import '../data/food_data.dart';
import '../models/food_item.dart';
import '../widgets/deal_card.dart';
import '../widgets/food_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Top-level tabs: Deals, plus all food categories.
    final List<String> tabTitles = [
      'Deals',
      ...foodCategories.map((c) => c.name),
    ];

    return DefaultTabController(
      length: tabTitles.length,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [_buildSliverAppBar(context, tabTitles)];
          },
          body: TabBarView(
            children: [
              // Deals Tab
              _buildDealsList(context),
              // Other Food Category Tabs
              ...foodCategories.map(
                (category) => _buildFoodList(context, category),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomInfo(context),
      ),
    );
  }

  Widget _buildDealsList(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(24, 32, 24, 48),
      itemCount: appDeals.length + 1, // +1 for the header text at the top
      itemBuilder: (context, index) {
        if (index == 0) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Exclusive Deals',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w900,
                    color: Theme.of(context).colorScheme.primary,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 1.2,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'CHEESY GOODNESS IN EVERY SLICE,\nEVERY BITE',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          );
        }
        return DealCard(deal: appDeals[index - 1]);
      },
    );
  }

  Widget _buildFoodList(BuildContext context, FoodCategory category) {
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(24, 32, 24, 48),
      itemCount: category.items.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category.name.replaceAll('\n', ' ').toUpperCase(),
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w900,
                    color: Theme.of(context).colorScheme.primary,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 1.2,
                  ),
                ),
              ],
            ),
          );
        }
        return FoodCard(food: category.items[index - 1]);
      },
    );
  }

  Widget _buildSliverAppBar(BuildContext context, List<String> tabTitles) {
    return SliverAppBar(
      expandedHeight: 280.0,
      pinned: true,
      backgroundColor: const Color(0xFF1A1A1A),
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          'CHEZIFY',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            letterSpacing: 8.0,
            shadows: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.8),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
        ),
        background: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              'https://images.unsplash.com/photo-1579751626657-72bc17010498?w=800&auto=format&fit=crop&q=80', // Dark moody pizza backdrop
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFF1A1A1A),
                    Colors.black.withValues(alpha: 0.5),
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: const [0.0, 0.4, 1.0],
                ),
              ),
            ),
          ],
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(60.0), // height of TabBar
        child: Container(
          color: const Color(0xFF1A1A1A),
          child: TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            indicatorColor: Theme.of(context).colorScheme.primary,
            indicatorWeight: 4,
            labelColor: Theme.of(context).colorScheme.primary,
            unselectedLabelColor: Colors.white60,
            labelStyle: const TextStyle(
              fontWeight: FontWeight.w900,
              letterSpacing: 1.0,
            ),
            unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            tabs: tabTitles.map((title) {
              return Tab(text: title.replaceAll('\n', ' ').toUpperCase());
            }).toList(),
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.share, color: Colors.white),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildBottomInfo(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
      decoration: BoxDecoration(
        color: const Color(0xFF151515), // Very dark gray, almost black
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.6),
            blurRadius: 20,
            offset: const Offset(0, -10),
          ),
        ],
        border: const Border(top: BorderSide(color: Colors.white12)),
      ),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Theme.of(
                      context,
                    ).colorScheme.primary.withValues(alpha: 0.2),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.delivery_dining,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    'Free Delivery Only In Naval Anchorage\nAbove 500 Amount Order',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.white70,
                      fontWeight: FontWeight.w600,
                      height: 1.4,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildInfoItem(
                  context,
                  Icons.access_time_filled,
                  '12:00 PM TO 3:00 AM',
                ),
                Container(width: 1, height: 24, color: Colors.white24),
                _buildInfoItem(
                  context,
                  Icons.location_on,
                  'Commercial II plaza 24\nNaval Anchorage',
                ),
              ],
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(
                    context,
                  ).colorScheme.secondary.withValues(alpha: 0.5),
                ),
                borderRadius: BorderRadius.circular(16),
                color: Theme.of(
                  context,
                ).colorScheme.secondary.withValues(alpha: 0.1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.phone_in_talk,
                    color: Colors.white,
                    size: 20,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    '0302-4703336 | 0310-5206758',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      letterSpacing: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoItem(BuildContext context, IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 20, color: Theme.of(context).colorScheme.primary),
        const SizedBox(width: 8),
        Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
