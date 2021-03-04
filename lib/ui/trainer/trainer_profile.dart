import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class TrainerProfileScreen extends StatelessWidget {
  final images = [
    'https://www.anabolicshealth.com/wp-content/uploads/2020/12/Jeff-Seid-Steroids.jpg',
    'https://blog.priceplow.com/wp-content/uploads/myprotein-jeff-seid-priceplow-1200x900-cropped.png',
    'https://i.ytimg.com/vi/KHjRbEaRaLQ/maxresdefault.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final imageHeight = size.height / 2.5;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                height: imageHeight,
                child: Swiper(
                  autoplay: true,
                  itemHeight: imageHeight,
                  containerHeight: imageHeight,
                  pagination: SwiperPagination(
                    margin: EdgeInsets.only(bottom: 38),
                  ),
                  itemBuilder: (context, index) {
                    return Image.network(
                      images[index],
                      fit: BoxFit.cover,
                    );
                  },
                  itemCount: images.length,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                height: size.height - imageHeight,
                child: Card(
                  margin: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: ListView(
                    padding: EdgeInsets.symmetric(vertical: 40, horizontal: 16),
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Jeff Seid',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Rs 150',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.blue),
                              ),
                              Text(
                                'Per session',
                                style: TextStyle(color: Colors.black38),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            '5+',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'years of experiences',
                          ),
                          Spacer(),
                          Icon(Icons.verified_user, color: Colors.blue),
                          SizedBox(width: 4),
                          Text(
                            'Certified',
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Divider(endIndent: 12, indent: 12, thickness: 0.8),
                      SizedBox(height: 16),
                      Text(
                        'About me ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 24),
                      Text(
                        'I was born June 12th, 1994 in Renton, Washington, '
                        'United States. I began playing sports at the young '
                        'age of 5 and it was essentially the beginning of '
                        'what has become an epic journey.',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(height: 16),
                      Divider(endIndent: 12, indent: 12, thickness: 0.8),
                      SizedBox(height: 16),
                      Text(
                        'My Expertise',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 24),
                      Wrap(
                        children: ['GYM', 'YOGA', 'BOXING']
                            .map(
                              (e) => Container(
                                padding: EdgeInsets.all(12),
                                margin: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(e),
                              ),
                            )
                            .toList(),
                      ),
                      SizedBox(height: 16),
                      Divider(endIndent: 12, indent: 12, thickness: 0.8),
                      SizedBox(height: 16),
                      Text(
                        'Medical Condition Experience',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 24),
                      Text(
                        'Injury | Smoking Addiction | Anxiety',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 16),
                      Divider(endIndent: 12, indent: 12, thickness: 0.8),
                      SizedBox(height: 16),
                      Text(
                        'My Location',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 24),
                      Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.blue),
                          SizedBox(width: 12),
                          Text(
                            'Dellaware, United States',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Divider(endIndent: 12, indent: 12, thickness: 0.8),
                      SizedBox(height: 16),
                      Text(
                        'Modes of Training',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 24),
                      Row(
                        children: [
                          Icon(
                            Icons
                                .signal_cellular_connected_no_internet_4_bar_outlined,
                            size: 28,
                            color: Colors.blue,
                          ),
                          SizedBox(width: 16),
                          Text(
                            'Online (Google Meet)',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(
                            Icons.home,
                            color: Colors.blue,
                            size: 28,
                          ),
                          SizedBox(width: 16),
                          Text(
                            'In home',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(
                            Icons.streetview,
                            color: Colors.blue,
                            size: 28,
                          ),
                          SizedBox(width: 16),
                          Text(
                            'Outdoors',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Divider(endIndent: 12, indent: 12, thickness: 0.8),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Text(
                            '1-on1 Pricing',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 8),
                          Icon(Icons.info)
                        ],
                      ),
                      SizedBox(height: 24),
                      Plan(
                        title: 'STARTER PLAN',
                        subtitle1: 'Buy 5 sessions',
                        subtitle2: 'Rs 150/ sessions',
                      ),
                      SizedBox(height: 20),
                      Plan(
                        title: 'POPULAR PLAN',
                        subtitle1: 'Buy 5 sessions',
                        subtitle2: 'Rs 150/ sessions',
                      ),
                      SizedBox(height: 20),
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Text(
                              'Money Back Guarantee',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 16),
                            Icon(Icons.info)
                          ],
                        ),
                      ),
                      SizedBox(height: 16),
                      Divider(endIndent: 12, indent: 12, thickness: 0.8),
                      SizedBox(height: 16),
                      Text(
                        'Availibility',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 24),
                      Wrap(
                        children: [
                          '6:00 AM TO 7:00 AM',
                          '10:30 AM TO 11:30 AM',
                          '11:00 AM TO 12:00 PM'
                        ]
                            .map(
                              (e) => Container(
                                padding: EdgeInsets.all(12),
                                margin: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(e),
                              ),
                            )
                            .toList(),
                      ),
                      SizedBox(height: 16),
                      Divider(endIndent: 12, indent: 12, thickness: 0.8),
                      SizedBox(height: 16),
                      Text(
                        'Training Days',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 24),
                      Text(
                        'Monday | Tuesday | Wednesday',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 16),
                      Divider(endIndent: 12, indent: 12, thickness: 0.8),
                      SizedBox(height: 16),
                      Text(
                        'Languages',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 24),
                      Row(
                        children: [
                          Icon(
                            Icons.language,
                            size: 28,
                            color: Colors.blue,
                          ),
                          SizedBox(width: 16),
                          Text(
                            'Hindi',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(
                            Icons.language,
                            color: Colors.blue,
                            size: 28,
                          ),
                          SizedBox(width: 16),
                          Text(
                            'English',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(
                            Icons.language,
                            color: Colors.blue,
                            size: 28,
                          ),
                          SizedBox(width: 16),
                          Text(
                            'Nepali',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Divider(endIndent: 12, indent: 12, thickness: 0.8),
                      SizedBox(height: 16),
                      Text(
                        'Educational Qualification',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 24),
                      Text(
                        'B.Sc in Sport and Exercise Science',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 16),
                      Divider(endIndent: 12, indent: 12, thickness: 0.8),
                      SizedBox(height: 16),
                      Text(
                        'People I love training with',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 24),
                      Wrap(
                        children: [
                          'ACTORS',
                          'MEN',
                          'BEGINNERS',
                          'MODEL',
                          'YOUTH',
                        ]
                            .map(
                              (e) => Container(
                                padding: EdgeInsets.all(12),
                                margin: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(e),
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Plan extends StatelessWidget {
  final title;
  final subtitle1;
  final subtitle2;

  const Plan({Key key, this.title, this.subtitle1, this.subtitle2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.deepPurpleAccent.withOpacity(0.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            color: Colors.deepPurple.withOpacity(0.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Text(
            subtitle1,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Text(
            subtitle2,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 12)
        ],
      ),
    );
  }
}
