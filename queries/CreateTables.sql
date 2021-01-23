use soup_schema;

-- DROPDOWN: method
create table method (
   method_id int primary key,
   name_ch nvarchar(100),
	name_en varchar(100),
   description_ch nvarchar(255),
   description_en varchar(255),
   icon_ch varchar(1000),
   icon_en varchar(1000),
   sort_order int
);

-- Recipes
create table recipe (
	recipe_id int primary key,
   name_ch nvarchar(100), 
   name_en varchar(100),
   method_id int,
   servings int,
   summary_ch text,
   summary_en text,
   photo_url varchar(1000),
   width int, 
   height int, 
   photo_sort_order int,
   sort_order int,
   constraint fk_recipe_method_id foreign key (method_id) references method(method_id)
) character set utf8 collate utf8_general_ci;


-- DROPDOWN: season
create table seasons (
	season_id int primary key,
   name_ch nvarchar(100),
	name_en varchar(100),
   icon_ch varchar(1000),
   icon_en varchar(1000),
   sort_order int
);

create table recipe_season (
	recipe_season_id int primary key,
   recipe_id int, 
   season_id int, 
   index (season_id),
   constraint fk_recipe_season_recipe_id foreign key (recipe_id) references recipe(recipe_id),
   constraint fk_recipe_season_season_id foreign key (season_id) references seasons(season_id)
);

-- DROPDOWN: main ingredient
create table main (
	main_id int primary key,
   name_ch nvarchar(100),
	name_en varchar(100),
   sort_order int
);

create table recipe_main (
	recipe_main_id int primary key,
   recipe_id int, 
   main_id int, 
   index (main_id),
   constraint fk_recipe_main_recipe_id foreign key (recipe_id) references recipe(recipe_id),
   constraint fk_recipe_main_main_id foreign key (main_id) references main(main_id)
);

-- Recipe ingredients
create table recipe_ingredients (
	recipe_ingredient_id int primary key,
	recipe_id int,
	ingredient_ch nvarchar(255),
   quantity_ch nvarchar(255),
   ingredient_en varchar(255),
   quantity_en varchar(255),
   sort_order int,
   constraint fk_recipe_ingredients_recipe_id foreign key (recipe_id) references recipe(recipe_id)
);

-- Recipe's steps
create table recipe_steps (
	recipe_step_id int primary key,
	recipe_id int,
	step_ch nvarchar(255),
	step_en varchar(255),
   sort_order int,
   constraint fk_recipe_steps_recipe_id foreign key (recipe_id) references recipe(recipe_id)
);
