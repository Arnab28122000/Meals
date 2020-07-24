import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavouritesScreen extends StatelessWidget {
  final List<Meal> favouriteMeal;

  FavouritesScreen(this.favouriteMeal);
  @override
  Widget build(BuildContext context) {
    if(favouriteMeal.isEmpty){
      return Container(
     child: Text('You have no favourites yet - start adding some'),
    );
    }else{
      return ListView.builder(
            itemBuilder: (ctx, index){
              return MealItem(
                id: favouriteMeal[index].id,
                title: favouriteMeal[index].title, 
                imageUrl: favouriteMeal[index].imageUrl, 
                duration: favouriteMeal[index].duration, 
                complexity: favouriteMeal[index].complexity, 
                affordability: favouriteMeal[index].affordability,
                );

            },
            itemCount: favouriteMeal.length,
          );
    }
    
  }
}