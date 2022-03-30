import 'package:agriverts/core/constants/color_constants.dart';
import 'package:agriverts/core/constants/text_constants.dart';
import 'package:agriverts/product/widgets/custom_fade_image.dart';
import 'package:flutter/material.dart';

class FAQView extends StatelessWidget {
  const FAQView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(TextConstants.sssTitle),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: MyColors.authContainerColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'What is vertical farming? ',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Vertical farming is actually a large-scale farming method in an urban environment called controlled environment farming or structure integrated farming. The aim of vertical farming is to reduce the use of pesticides that pollute the environment, such as pesticides and herbicides. It is to prevent the loss of agricultural lands, to prevent the conversion of forest lands to agricultural lands, and to eliminate transportation costs by facilitating the transportation of products. ',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: MyColors.authContainerColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'What are the Advantages of Vertical Agriculture? ',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '- Thanks to climate control systems, products can be accessed in all seasons. ',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '- As the external factors are taken under control, maximum efficiency can be obtained from the products. ',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '- Since water can be used repeatedly, 90% water is saved compared to traditional agriculture. ',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '- Soil tillage tools and machines, spraying machines etc. There is less carbon emission because traditional agricultural tools are not used. ',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: MyColors.authContainerColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'What Crops Are Grown in Vertical Agriculture? ',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Many vegetables can be produced with vertical farming, but for now, it is preferred to grow microgreens. Vertical farming systems are used especially for the production of short-length greens such as strawberries and lettuce. Crops such as mint, spinach, basil and beans can be produced by vertical farming. ',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: GridView.count(
                              shrinkWrap: true,
                              primary: false,
                              crossAxisSpacing: 10.0,
                              mainAxisSpacing: 10,
                              childAspectRatio: 0.45,
                              crossAxisCount: 2,
                              children: <Widget>[
                                SSSCard(
                                  imgUrl:
                                      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.sebzemeyvedunyasi.com%2FUploads%2FUrunResimleri%2FKivircik-Marul-cb9a.png&f=1&nofb=1',
                                  title: 'Curly Lettuce ',
                                  desc:
                                      'It is a plant grown at a rate of 51% in vertical agriculture. Lettuce is a leafy vegetable that is famous for forming the basis of salads. The health benefits of lettuce come primarily from its vitamin content. ',
                                ),
                                SSSCard(
                                  imgUrl:
                                      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.ckwxcJs-BXz0d1VaFzrjgQHaHa%26pid%3DApi&f=1',
                                  title: 'Spinach',
                                  desc:
                                      'Spinach is a superfood. Spinach is a low-calorie, dark and green leafy vegetable. It is important for skin, hair and bone health. It also provides protein, iron, vitamins and minerals. ',
                                ),
                                SSSCard(
                                  imgUrl:
                                      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.mevsimgida.com.tr%2FUploads%2FUrunResimleri%2Fbuyuk%2Fcilek-bursa-9b9f.jpg&f=1&nofb=1',
                                  title: 'Strawberry ',
                                  desc:
                                      'Strawberries, like other fruits, are rich in vitamins, minerals, fiber and antioxidant compounds that have anti-inflammatory properties. ',
                                ),
                                SSSCard(
                                  imgUrl:
                                      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.3mzys4jmtSa1dDPAfABcDQHaHa%26pid%3DApi&f=1',
                                  title: 'Dill',
                                  desc:
                                      'Dill has been used as a medicinal plant since the Middle Ages, often to treat digestive problems and ailments.',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SSSCard extends StatelessWidget {
  const SSSCard({
    Key? key,
    required this.imgUrl,
    required this.title,
    required this.desc,
  }) : super(key: key);
  final String imgUrl;
  final String title;
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          CustomFadeInImage(
            imgUrl: imgUrl,
            borderRadius: BorderRadius.circular(20),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 2,
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(desc),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
