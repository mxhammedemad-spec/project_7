import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_6/screens/second.dart';

import '../bloc/anime_bloc.dart';

class Home extends StatefulWidget {

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    BlocProvider.of<AnimeBloc>(context).add(FetchAnimeEvent());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    List<String>image=["asset/theglory.png","asset/oppen.png","asset/theglory.png","asset/oppen.png"];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('PopularMovie',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.sp,
          fontWeight: FontWeight.w700,
        ),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body:  BlocBuilder<AnimeBloc, AnimeState>(
  builder: (context, state) {
    if (state is AnimeblocLoading) return Center(child: CircularProgressIndicator());
    if (state is AnimeblocError) return Center(child: Text("Error"));
    if(state is AnimeblocLoaded){
      return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
        (crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 185/264,
      ),
        itemCount: state.animemodel.data!.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap:() {
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Second(image:state.animemodel.data![index].image.toString() ,
                title:state.animemodel.data![index].title.toString(), genies:state.animemodel.data![index].genres.toString(),
                synopsis:state.animemodel.data![index].synopsis.toString(), episode:state.animemodel.data![index].episodes.toString(),
              )
              ),
              );
            },
            child: Container(
              width:360.w,
              height: 445.h,
              child: Image.network(state.animemodel.data![index].image.toString()),


            ),
          );
        },
      );
    }
   else {return SizedBox();}
  },
),
    );
  }
}
