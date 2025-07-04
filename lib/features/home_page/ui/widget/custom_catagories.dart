
import 'package:first_task/core/helpers/app_colors.dart';
import 'package:first_task/features/home_page/data/model/get_catagories_model.dart';
import 'package:first_task/features/home_page/ui/widget/custom_text.dart';
import 'package:first_task/features/sub_catagories/ui/sub_catagories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomCatagories extends StatelessWidget {
  const CustomCatagories({
    super.key,
    required this.data,
  });

  final List<GetCatagoriesData> data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: data.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 14),
            child:
            Column(
                children: [
                   InkWell(
                   
                onTap: () {
        final id = data[index].id;
         final name = data[index].name;
        // GoRouter.of(context).push('${AppRouter.kSubCatagories}/$id');
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SubCatagories(
          subCatagoreisId: id??1,name:name??'')));
      },
      
                    
                     child: Container(
                                width: 67,
                           height: 67,
                                 decoration: BoxDecoration(
                                   color: AppColors.verylightblue,
                                   borderRadius: BorderRadius.circular(14),
                                 ),
                                 child: 
                                     Center(
                      child: Image.network(
                         "${data[index].icon}",
                        fit: BoxFit.fill,
                        // placeholder: (context, url) => CircularProgressIndicator(),
                        // errorWidget: (context, url, error) => Icon(Icons.broken_image),
                        
                      ),
                                     ),
                                    
                     ),
                   ),
                   2.verticalSpace,
                  
                   CustomText(text:data[index].name.toString()),
                 
                ],
            ),
          );
        },
      ),
    );
  }
}
 
 