// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:newsapp/provider/news_provider.dart';
import 'package:provider/provider.dart';

class NewsAppScreen extends StatefulWidget {
  const NewsAppScreen({Key? key}) : super(key: key);

  @override
  State<NewsAppScreen> createState() => _NewsAppScreenState();
}

class _NewsAppScreenState extends State<NewsAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("191011401222_YULIAN ISLAM PRAYOGA")),
        ),
        body: Consumer<NewsProvider>(builder: (context, provider, _) {
          return ListView.builder(
              itemCount: provider.newsModel.data?.length ?? 0,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Image.network(
                            provider.newsModel.data![index].image!),
                      )
                    ],
                  ),

                  // leading: Container(
                  //   //color: Colors.grey[200],
                  //   height: 100,
                  //   width: 100,
                  //   child: Image.network(
                  //     provider.newsModel.data![index].image!,
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                  // title: Text(
                  //   provider.newsModel.data![index].title!,
                  //   maxLines: 2,
                  //   overflow: TextOverflow.ellipsis,
                  // ),
                  // subtitle: Text(provider.newsModel.data![index].description!),
                );
              });
        }));
  }
}
