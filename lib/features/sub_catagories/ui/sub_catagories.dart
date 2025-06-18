import 'package:first_task/core/helpers/app_colors.dart';
import 'package:first_task/core/widgets/custom_app_bar.dart';
import 'package:first_task/features/home_page/ui/widget/custom_text.dart';
import 'package:first_task/features/sub_catagories/data/model/sub_catagories_model.dart';
import 'package:first_task/features/sub_catagories/logic/sub_catagories_by_id/sub_catagories_by_id_cubit.dart';
import 'package:first_task/features/sub_catagories/logic/sub_catagories_by_id/sub_catagories_by_id_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubCatagories extends StatefulWidget {
  final int subCatagoreisId;
final String name;
  const SubCatagories({super.key, required this.subCatagoreisId, required this.name});

  @override
  State<SubCatagories> createState() => _SubCatagoriesState();
}

class _SubCatagoriesState extends State<SubCatagories> {
  List<SubCatagoriesData> getSubCatagories = [];

  @override
  void initState() {
    super.initState();
    BlocProvider.of<SubCatagoriesByIdCubit>(context)
        .emitGetSubCatagoriesById(widget.subCatagoreisId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: widget.name,onPressed: (){
        Navigator.of(context).pop();
      }),
      
      body: BlocBuilder<SubCatagoriesByIdCubit, SubCatagoriesByIdState>(
        builder: (context, state) {
          if (state is GetSubCatagoriesById) {
            getSubCatagories = state.getSubCatagoriesById;

            return Padding(
              padding: const EdgeInsets.all(16),
              child: GridView.builder(

                itemCount: getSubCatagories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  return Container(
                   
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(2, 2),
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         CustomText(text:  getSubCatagories[index].name ?? '',),
                         10.verticalSpace,
                        InkWell(
                          onTap: (){
                            
                            
                          },
                          child: Container(
                            width: double.infinity,
                            height: 140.h,
                            decoration: BoxDecoration(
                              color: AppColors.verylightblue,
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Center(
                              child: Image.network(
                                getSubCatagories[index].icon ?? '',
                                fit: BoxFit.fill,
                                // ?placeholder:/ (context, url) =>
                                //  ?   const CircularProgressIndicator(),
                                // er?rorWidget: (context, url, error) =>
                                  //  ? const Icon(Icons.broken_image),
                              ),
                            ),
                          ),
                        ),
                    
                      
                              
                      ],
                    ),
                  );
                },
              ),
            );
          }
else{
          return const Center(child: CircularProgressIndicator());
}
        },
      ),
    );
  }
}
