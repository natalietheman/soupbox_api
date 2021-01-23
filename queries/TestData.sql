use soup_schema;
insert into recipe (recipe_id, name_ch, name_en, method_id, servings, summary_ch, summary_en, photo_url, width, height, photo_sort_order, sort_order) values 
(1,'蘋果海底椰蜜棗瘦肉湯','apple sea underwater coocnut',1,2,'五指毛桃俗稱[南茋]，有淡淡的椰子香味，其味甘性平,有健脾補肺益氣和行氣袪濕之效。玉竹則有養陰潤...','coconut Generate Lorem Ipsum placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools','https://i.pinimg.com/originals/3c/d8/cf/3cd8cfda108f72a581d5fcf742388fc8.jpg',73,110,1,1),
(2,'金針蓮藕生地瘦肉湯','golden needle skinny meat',2,2,'猴頭菇有獨特的清香味道，也是很百搭的煲湯材料，加入栗子、紅蘿蔔和蟲草花煲，更是清甜可口。猴頭菇性...','skinny Generate Lorem Ipsum placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools','https://embed.widencdn.net/img/mccormick/rvr1iyzale/1318x1318px/chinese_chicken_noodle_soup_with_garlic_&_ginger_6247.jpg?crop=true&anchor=727,26&q=80&r=270&color=ffffffff&u=o2hyef',1,1,2,2),
(3,'無花果海底椰瘦肉湯','no flower fruit underwater coconut skinny',1,4,'黑蒜印度椰子栗子素湯~養生保健湯水。黑蒜有滋陰潤燥、提高人體免疫力和消除疲勞的作用，原因是黑蒜中...','skinny coconut Generate Lorem Ipsum placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools','https://www.recipetineats.com/wp-content/uploads/2016/09/Wontons_1-1.jpg',225,281,3,3),
(4,'節瓜百合瘦肉湯','holiday melon skinny meat',3,6,'紅菜頭被列入超級食物當中，其營養價值拍得住中國人用來補身的靈芝，所以亦有「歐洲靈芝」之稱。是一款...','meat Generate Lorem Ipsum placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools','https://www.sayweee.com/static_img/2015-11/LVNCJiAqQ-O8fGr7ZTRW0A.jpg',3,2,4,4),
(5,'薏米馬蹄瘦肉湯','rice chesnut skinny meat',4,2,'一年四季都適合飲用的湯水，拂手瓜本身健脾開胃，加上栗子補腎，最近天氣忽冷忽熱，比較適合飲用一些清...','skinny meat Generate Lorem Ipsum placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools','https://healthynibblesandbits.com/wp-content/uploads/2019/10/Chinese-Chicken-Broth-FF.jpg',1,1,5,5),
(6,'金銀菜蠔豉豬踭湯','gold silver vegetbale pork',1,1,'腰果/合桃、椰棗、南北杏、薯仔、蕃茄、洋蔥、紅菜頭、甘筍','vegetable pork Generate Lorem Ipsum placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools','https://www.gimmesomeoven.com/wp-content/uploads/2017/01/Chinese-Hot-and-Sour-Soup-Recipe-1-2.jpg',48,71,6,6),
(7,'蓮子芡實墨魚豬踭湯','lotus fishy pork soup',2,3,'五指毛桃、合桃、南北杏、椰棗、無花果、蘋果、玉竹','pork Generate Lorem Ipsum placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools','https://www.thespruceeats.com/thmb/i_pbDByxAG88XA-0A0GHjT8LQjA=/3656x2742/smart/filters:no_upscale()/chinese-noodle-soup-147454944-58331a205f9b58d5b13260c9.jpg',4,3,7,7),
(8,'紅蘿蔔粟米瘦肉湯','corn and carrot skinny meat soup',3,2,'太子參、紅蘿蔔、蘋果、鮮淮山、無花果、椰棗、南北杏、腰果','skinny meat carrot pork Generate Lorem Ipsum placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools','https://www.seriouseats.com/recipes/images/2017/12/20171115-chicken-soup-vicky-wasik-11-1500x1125.jpg',4,3,8,8),
(9,'赤小豆粉葛豬脷湯','little bean powder with pork',3,2,'木瓜、花生、眉豆、紅棗、雪耳、果皮','pork Generate Lorem Ipsum placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools','https://images.media-allrecipes.com/userphotos/7813460.jpg',3,2,9,9),
(10,'益母草紅棗豬肝湯','strawberry red date pork liver soup',1,3,'鮮百合、魚腥草、棕櫚果、椰棗、龍脷葉、腰果、南北杏、青欖','date pork liver soup Generate Lorem Ipsum placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools','https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTVncrJr1WuuFompKv5ZrDPDBpHhnFMcixUKw&usqp=CAU',183,275,10,10);

insert into method(method_id, name_ch, name_en, description_ch, description_en, icon_ch, icon_en, sort_order) values
(1,'老火','slow cook','老火老火老火','slow cookslow cookslow cook','test','test',1),
(2,'熬','cooked','熬熬熬','cookedcookedcooked','test','test',2),
(3,'煲','boil','煲煲煲','boilboilboil','test','test',3),
(4,'滾','dun','滾滾滾','dundundun','test','test',4);

insert into seasons(season_id, name_ch, name_en, icon_ch, icon_en, sort_order) values
(1,'冬','winter','test','test',1),
(2,'夏','summer','test','test',2),
(3,'秋','fall','test','test',3),
(4,'春','spring','test','test',4);

insert into recipe_season(recipe_season_id, recipe_id, season_id) values
(1,1,1),
(2,2,2),
(3,3,3),
(4,4,3),
(5,5,4),
(6,6,2),
(7,7,4),
(8,8,1),
(9,9,1),
(10,10,2);

insert into main(main_id, name_ch, name_en, sort_order) values
(1,'豬','pig',1),
(2,'牛','cow',2),
(3,'羊','lamb',3),
(4,'雞','chicken',4),
(5,'魚','fish',5),
(6,'菜','vegetable',6);

insert into recipe_main(recipe_main_id, recipe_id, main_id) values
(1,1,1),
(2,2,5),
(3,3,3),
(4,4,4),
(5,5,2),
(6,6,3),
(7,7,2),
(8,8,3),
(9,9,1),
(10,10,1);

insert into recipe_ingredients (recipe_ingredient_id, recipe_id, ingredient_ch, quantity_ch, ingredient_en, quantity_en, sort_order) values
(1,1,'豬骨','2人份量','pork bone','2 lb',1),
(2,1,'雪耳','1隻','snow ear','1 bunch',2),
(3,1,'准山','6-8塊','mountain','6-8 pieces',3),
(4,1,'蓮子','適量','lotus','as much as u want),',4),
(5,1,'無花果','2粒','no flower fruit','2 pieces),',5),
(6,1,'百合','適量','lily bulb','as much as u want',6),
(7,2,'豬骨2','2人份量','pork bone2','2 lb',1),
(8,2,'雪耳2','1隻','snow ear2','1 bunch',2),
(9,2,'准山2','6-8塊','mountain2','6-8 pieces',3),
(10,2,'蓮子2','適量','lotus2','as much as u want',4),
(11,2,'無花果2','2粒','no flower fruit2','2 pieces',5),
(12,2,'百合2','適量','lily bulb2','as much as u want',6),
(13,3,'豬骨3','2人份量','pork bone3','2 lb',1),
(14,3,'雪耳3','1隻','snow ear3','1 bunch',2),
(15,3,'准山3','6-8塊','mountain3','6-8 pieces',3),
(16,3,'蓮子3','適量','lotus3','as much as u want',4),
(17,3,'無花果3','2粒','no flower fruit3','2 pieces',5),
(18,3,'百合3','適量','lily bulb3','as much as u want',6);

insert into recipe_steps (recipe_step_id, recipe_id, step_ch, step_en, sort_order) values 
(1,1,'豬骨洗淨後， 出水備用；雪耳、准山、蓮子、百合先浸一浸','ingredients wash wash',1),
(2,1,'無花果切半後，凍水落','cold water fruit add half',2),
(3,1,'水滾後，加入所有材料，中火滾15-20分鐘，再轉細花慢慢煲15小時','add ingredients after the water boils, cover lid and cook for 1.5 hours',3),
(4,2,'豬骨洗淨後， 出水備用；雪耳、准、蓮子、百合先浸一浸2','ingredients wash wash2',1),
(5,2,'無花果切半後，凍水落2','cold water fruit add half2',2),
(6,2,'水滾後，加入所有材料，中火滾15-20分鐘，再轉細花慢慢煲1.5時2','add ingredients after the water boils, cover lid and cook for 1.5 hours2',3),
(7,3,'豬骨洗淨後， 出水備用；雪耳、准山蓮子、百合先浸一浸3','ingredients wash wash3',1),
(8,3,'無花果切半後，凍水落3','cold water fruit add half3',2),
(9,3,'水滾後，加入所有材料，中火滾15-20分鐘，再轉細花慢慢煲1.5時3','add ingredients after the water boils, cover lid and cook for 1.5 hours3',3);


/* -- select (columns)
-- from (tables)
   -- join by alias.common_parameter
-- where (rows that fulfill the criteria)
-- order by (result)
select *
from recipe_gallery rg
	 join recipe r on (rg.recipeId = r.recipeId)
where photoURL like "%mccormick%"
order by r.name_ch

delete from recipe_gallery

-- clears the whole table
truncate table recipe_gallery; */