import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              const OnboardingPage(
                imagePath: 'assets/images/Farmers market-amico.png',
                title: 'Welcome To Agrihub',
                description:
                    'Empowering Farmers, Connecting Communities\n\nJoin a thriving network of farmers, suppliers, and experts dedicated to enhancing agricultural productivity and sustainability. Whether you’re looking to buy, sell, or learn, AgriHub brings the resources you need right to your fingertips.',
              ),
              SecondOnboardingPage(), // New widget for the second screen
              const OnboardingPage(
                imagePath: 'assets/images/Team goals-bro.png',
                title: 'Empower Your Farming Community',
                description:
                    'Join a thriving network of farmers to share knowledge, gain insights, and grow together. AgriLink connects you with resources and support tailored to your needs.',
              ),
            ],
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () {
                // Implement skip functionality
              },
              child: const Text("Skip"),
            ),
          ),
          // Move dots to the top left
          Positioned(
            top: 50,
            left: 20,
            child: Row(
              children: List.generate(3, (index) => buildDot(index, context)),
            ),
          ),
          if (_currentPage != 2) // Hide "Get Started" button on the last page
            Positioned(
              bottom: 30,
              left: 50,
              right: 50,
              child: ElevatedButton(
                onPressed: () {
                  _controller.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: const Text('Get Started'),
              ),
            ),
        ],
      ),
    );
  }

  Widget buildDot(int index, BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      height: 10,
      width: _currentPage == index ? 24 : 8,
      decoration: BoxDecoration(
        color: _currentPage == index ? Colors.green : Colors.grey,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const OnboardingPage({
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath, height: 250),
        const SizedBox(height: 30),
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            description,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class SecondOnboardingPage extends StatefulWidget {
  @override
  _SecondOnboardingPageState createState() => _SecondOnboardingPageState();
}

class _SecondOnboardingPageState extends State<SecondOnboardingPage> {
  final PageController _pageController = PageController();

  final List<Map<String, String>> sections = [
    {
      'title': 'Marketplace',
      'description':
          'Buy and sell farming products with ease. Connect directly with buyers and sellers to find the best deals for your farm.',
      'image': 'assets/images/Add to Cart-amico.png'
    },
    {
      'title': 'Knowledge',
      'description':
          'Access a vast repository of agricultural knowledge to enhance your farming practices.',
      'image': 'assets/images/Bibliophile-rafiki.png'
    },
    {
      'title': 'Finance',
      'description':
          'Explore financial services tailored for farmers to boost your farming business.',
      'image': 'assets/images/Calculator-amico.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: sections.length,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(sections[index]['image']!, height: 250),
              const SizedBox(height: 30),
              Text(
                sections[index]['title']!,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  sections[index]['description']!,
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
