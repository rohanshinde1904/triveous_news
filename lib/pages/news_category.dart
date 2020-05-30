import 'package:flutter/material.dart';
import 'package:triveousnews/helper/news.dart';
import 'package:triveousnews/model/article_model.dart';


class News_Category extends StatefulWidget {

  final String category;

  News_Category({this.category});

  @override
  _News_CategoryState createState() => _News_CategoryState();
}

class _News_CategoryState extends State<News_Category> {

  List<Article_model> articles = new List<Article_model>();

  bool _loading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getCategoryNews();
  }

  getCategoryNews() async {
    CategoryNews newsHome = new CategoryNews();
    await newsHome.getNews(widget.category);
    articles = newsHome.news;

    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Triveous News",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        actions: <Widget>[
          Opacity(
            opacity: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.description),
            ),
          )
        ],
        centerTitle: true,
        elevation: 0.0,
      ),
      body:  _loading ? Center(
        child: Container(
            child: CircularProgressIndicator(),
        ),): SingleChildScrollView(
    child:Container(
    padding: EdgeInsets.symmetric(horizontal: 16),

    child: Column(
          children: <Widget>[
            ////News Headlines

            Container(
              padding: EdgeInsets.only(top: 16),
              child: ListView.builder(
                itemCount: articles.length,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Blog_Title(
                    imageUrl: articles[index].urlToimage,
                    title: articles[index].title,
                    desc: articles[index].description,
                    url: articles[index].url,
                  );
                },
              ),
            ),

          ],
        ),
      ),

    )
    );
  }
}

class Blog_Title extends StatelessWidget {
  final String imageUrl, title, desc, url;

  Blog_Title(
      {@required this.imageUrl,
        @required this.title,
        @required this.desc,
        @required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
       /* Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Article_Details(
                  article_url: url,
                )));*/
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        child: Column(
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(imageUrl)),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              desc,
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
