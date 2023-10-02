import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Populares', style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            )),
          ),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index) => _MoviePoster(),
            ),
          )
        ],
      ),
    );
  }
}


class _MoviePoster extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 190,
      color: Colors.green,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: const Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/no-image.jpg'), 
            image: NetworkImage('https://via.placeholder.com/300x400'),
            width: 130,
            height: 190,
            fit: BoxFit.cover,
          ),

          SizedBox(height: 5,),

          Text(
            'Mondaji tachi ga isekai kara kuro sou desu you',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}