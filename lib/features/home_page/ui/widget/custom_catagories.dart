
import 'package:first_task/core/helpers/app_colors.dart';
import 'package:first_task/features/home_page/data/model/get_catagories_model.dart';
import 'package:flutter/material.dart';
class CustomCatagories extends StatelessWidget {
  const CustomCatagories({
    super.key,
    required this.data,
  });

  final List<GetCatagoriesData> data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(right: 14),
          child: Container(
            width: 67,
            decoration: BoxDecoration(
              color: AppColors.lightpink,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Column(
              children: [
                Center(
                  child: Image.network(
                     "${data[index].icon}",
                    fit: BoxFit.fill,
                    // placeholder: (context, url) => CircularProgressIndicator(),
                    // errorWidget: (context, url, error) => Icon(Icons.broken_image),
                    
                  ),
                ),
                Text(data[index].name.toString()),
              ],
            ),
          ),
        );
      },
    );
  }
}
 
 