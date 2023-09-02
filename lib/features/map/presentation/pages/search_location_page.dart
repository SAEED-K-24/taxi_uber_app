import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:taxi_app/app/constsnt.dart';
import 'package:taxi_app/features/map/map.dart';

class SeacrhLocationPage extends StatefulWidget {
  const SeacrhLocationPage({super.key});

  @override
  State<SeacrhLocationPage> createState() => _SeacrhLocationPageState();
}

class _SeacrhLocationPageState extends State<SeacrhLocationPage> {
  final TextEditingController _textEditingController = TextEditingController();
  var searchInfo = <SearchInfo>[];
  bool isLoading = false;
  // String country = '';
  // List<String> countries = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                    controller: _textEditingController,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: primaryColor),
                      ),
                    ),
                  )),
                  IconButton(
                      onPressed: () async {
                        if (_textEditingController.text.isEmpty) return;
                        var data = await addressSuggestion(
                            _textEditingController.text);
                        if (data.isNotEmpty) {
                          searchInfo = data;
                          setState(() {});
                        }
                      },
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white70,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              'Choose One',
              style: TextStyle(fontSize: 16.sp),
            ),
            SizedBox(
              height: 5.h,
            ),
            Expanded(
              child: isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : searchInfo.isEmpty
                      ? Container()
                      : Consumer(builder:
                          (BuildContext ctx, WidgetRef ref, Widget? _) {
                          return ListView.separated(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: 20.h,
                              );
                            },
                            itemCount: searchInfo.length,
                            itemBuilder: (context, index) {
                              return Container(
                                color: primaryColor,
                                padding: EdgeInsets.all(4.h),
                                child: ListTile(
                                  onTap: () {
                                    ref
                                        .read(tripProvider.notifier)
                                        .drawRoad(
                                            searchInfo[index].address!.city!,
                                            searchInfo[index].point!.latitude,
                                            searchInfo[index].point!.longitude);
                                    if (context.canPop()) context.pop();
                                  },
                                  title: Text(searchInfo[index]
                                      .address!
                                      .country
                                      .toString()),
                                  subtitle: Text('${searchInfo[index].point}'),
                                ),
                              );
                            },
                          );
                        }),
            ),
          ],
        ),
      ),
    );
  }
}
