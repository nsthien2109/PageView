import 'package:flutter/material.dart';
import 'package:page_view/data/local_data.dart';

class PageMain extends StatefulWidget {
  const PageMain({ Key? key }) : super(key: key);

  @override
  _PageMainState createState() => _PageMainState();
}


List<PageInfo> pages = [
  PageInfo(image: 'assets/images/img1.jpg', title: "Beauty Gril P", description: 'She was born Tokyo Japan , and now she is a teacher in an University at Vietnam'),
  PageInfo(image: 'assets/images/img2.jpg', title: "Beauty Gril V", description: 'She was born Vietnam , and now artish'),
  PageInfo(image: 'assets/images/img3.jpg', title: "Beauty Gril C", description: 'She was born Tokyo Japan , dont akca ma ns amc xa nac oivss ácaaA'),
];

class _PageMainState extends State<PageMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation: 0.5,
        title: const Text("Page View"),
        centerTitle: true,
      ),
      body: PageView.builder(
        itemCount: 3,
        itemBuilder: (_,index) => SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(pages[index].title.toString(),style: const TextStyle(
                  fontSize: 25
                )),
                const SizedBox(height: 15),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(pages[index].image.toString(),fit: BoxFit.cover)
                  )
                ),
                const SizedBox(height: 15),
                Text(pages[index].description.toString(),style: const TextStyle(
                  fontSize: 18
                )),
              ],
            )
          ),
        )
      ),
    );
  }
}