import 'package:first_task/core/helpers/app_colors.dart';
import 'package:first_task/core/widgets/custom_app_bar.dart';
import 'package:first_task/features/sub_catagories/logic/sub_catagory/sub_catagory_cubit.dart';
import 'package:first_task/features/sub_catagories/logic/sub_catagory/sub_catagory_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubCatagory extends StatefulWidget {
  final int id;
  final String name;

  const SubCatagory({super.key, required this.id, required this.name});

  @override
  State<SubCatagory> createState() => _SubCatagoryState();
}

class _SubCatagoryState extends State<SubCatagory> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SubCatagoryCubit>(context)
        .emitGetSubCatagoryById(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: widget.name,
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      body: BlocBuilder<SubCatagoryCubit, SubCatagoryState>(
        builder: (context, state) {
          if (state is GetSubCatagoryById) {
            final getSubCatagory = state.getSubCatagoryById;

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200.h,
                    decoration: BoxDecoration(
                      color: AppColors.verylightblue,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Center(
                      child: getSubCatagory.icon != null &&
                              getSubCatagory.icon!.isNotEmpty
                          ? Image.network(
                              getSubCatagory.icon!,
                              fit: BoxFit.fill,
                              width: 343,
                              height: 210,
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(Icons.broken_image),
                            )
                          : const Icon(Icons.image_not_supported),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // CustomText(
                  //   text: getSubCatagory.name ?? "No name available",
                  //   // fontSize: 18.sp,
                  //   // fontWeight: FontWeight.bold,
                  // ),
                  // Add more content as needed
                ],
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
