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
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 270,
                    decoration: BoxDecoration(
                      color: MyColors.authContainerColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Dikey tarım nedir?',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Dikey tarım aslında kontrollü çevre tarım veya yapı entegre tarım adında şehir ortamında büyük ölçekli tarım yöntemidir. Dikey tarımın amacı pestisit ve herbisit gibi çevreyi kirleten tarım ilaçlarının kullanımını azaltmak. Tarım arazilerindeki kaybı önlemek, orman arazilerinin tarım arazilerine dönüşmesinin önüne geçilmesini sağlamak ve ürünlerin ulaşımını kolaylaştırarak ulaşım masraflarını ortadan kaldırmaktır.',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 20,),
                          
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
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 280,
                    decoration: BoxDecoration(
                      color: MyColors.authContainerColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Dikey Tarımın Avantajları Nelerdir?',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '- İklim kontrol sistemleri sayesinde ürünlere her mevsim ulaşım sağlanabiliyor',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            '- Dışarıdan gelecek etkenler kontrol altına alındığı için ürünlerden maksimum verim alınabiliyor.',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            '- Suyun tekrar tekrar kullanılabilmesi sebebi ile geleneksel tarıma göre %90 su tasarrufu yapılıyor.',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            '- Toprak işleme alet ve makinaları ilaçlama makinaları vb geleneksel tarım aletleri kullanılmadığı için daha az karbon salınımı oluyor',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 5,),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 1010,
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
                            'Dikey Tarımda Hangi Ürünler Yetişir?',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Dikey tarım ile birçok sebze üretilebiliyor ancak şimdilik daha çok mikro yeşilliklerin yetiştirilmesi tercih ediliyor. Özellikle çilek yetiştiriciliği, marul gibi kısa boylu yeşillik üretimi için dikey tarım sistemleri kullanılıyor. Nane, ıspanak, fesleğen, fasulye gibi ekinlerin üretimi dikey tarım ile yapılabiliyor. ',
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
                                  title: 'Kıvırcık Marul',
                                  desc:
                                      'Dikey tarımda %51 oranında yetiştirilen bitkidir. Marul, salataların temelini oluşturulmasıyla ünlü yapraklı bir sebzedir. Marulun sağlığa faydaları öncelikle vitamin içeriğinden gelir',
                                ),
                                SSSCard(
                                  imgUrl:
                                      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.ckwxcJs-BXz0d1VaFzrjgQHaHa%26pid%3DApi&f=1',
                                  title: 'Ispanak',
                                  desc:
                                      ' Ispanak bir süper besindir. Ispanak, düşük kalorili, koyu ve  yeşil yapraklı sebzeler içerisinde yer. Cilt, saç ve kemik sağlığı için önemlidir. Ayrıca protein, demir, vitamin ve mineral sağlar.',
                                ),
                                 SSSCard(
                                  imgUrl:
                                      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.mevsimgida.com.tr%2FUploads%2FUrunResimleri%2Fbuyuk%2Fcilek-bursa-9b9f.jpg&f=1&nofb=1',
                                  title: 'Çilek',
                                  desc:
                                      'Çilek, diğer meyveler gibi antienflamatuar özelliklere sahip vitamin, mineral,  lif ve antioksidan bileşikler açısından zengindir.',
                                ),
                                SSSCard(
                                  imgUrl:
                                      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.3mzys4jmtSa1dDPAfABcDQHaHa%26pid%3DApi&f=1',
                                  title: 'Dereotu',
                                  desc:
                                      'Dereotu, Orta Çağdan beri tıbbi bitki olarak, genellikle sindirim problemlerini ve hastalıklarını tedavi etmek için kullanılmıştır.',
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
