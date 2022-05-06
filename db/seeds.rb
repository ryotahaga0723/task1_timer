# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: 'テストユーザー', email: 'aaa@gmail.com', password: 'password', password_confirmation: 'password', created_at: "2019-07-11 02:33:34", updated_at: "2019-07-11 02:33:34")

Cooking.create!(cooking_material: "ハンバーグ",cooking_name: "焼く",hour: 0,minute: 10,second: 0,created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")
Cooking.create!(cooking_material: "カレー",cooking_name: "煮込む",hour: 1,minute: 30,second: 0,created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")
Cooking.create!(cooking_material: "麺（バリかた）",cooking_name: "ゆでる",hour: 0,minute: 0,second: 40,created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")
Cooking.create!(cooking_material: "ほうれん草",cooking_name: "ゆでる",hour: 0,minute: 0,second: 30,created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")
Cooking.create!(cooking_material: "グラタン",cooking_name: "焼く",hour: 0,minute: 30,second: 0,created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")

recipe1 = Recipe.create!(recipe_name: "ハンバーグ",recipe_time: 30,created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")
recipe2 = Recipe.create!(recipe_name: "大根サラダ",recipe_time: 10,created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")
recipe3 = Recipe.create!(recipe_name: "コンソメスープ",recipe_time: 20,created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")
recipe4 = Recipe.create!(recipe_name: "卵焼き",recipe_time: 5,created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")
recipe5 = Recipe.create!(recipe_name: "きんぴらごぼう",recipe_time: 15,created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")

recipe1.image.attach(io: File.open(Rails.root.join('app/assets/images/hamba-gu.jpg')), filename: 'hamba-gu.jpg')
recipe2.image.attach(io: File.open(Rails.root.join('app/assets/images/daikon_salad.jpg')), filename: 'daikon_salad.jpg')
recipe3.image.attach(io: File.open(Rails.root.join('app/assets/images/konsome_soup.jpg')), filename: 'konsome_soup.jpg')
recipe4.image.attach(io: File.open(Rails.root.join('app/assets/images/tamagoyaki.jpg')), filename: 'tamagoyaki.jpg')
recipe5.image.attach(io: File.open(Rails.root.join('app/assets/images/kinpiragobou.jpg')), filename: 'kinpiragobou.jpg')

RecipeMaterial.create!(recipe_id: 1,material: "ひき肉",quantity: "100g",created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")
RecipeMaterial.create!(recipe_id: 1,material: "玉ねぎ",quantity: "1個",created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")
RecipeMaterial.create!(recipe_id: 2,material: "大根",quantity: "1/2本",created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")
RecipeMaterial.create!(recipe_id: 3,material: "じゃがいも",quantity: "2個",created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")
RecipeMaterial.create!(recipe_id: 3,material: "コンソメの素",quantity: "大さじ1",created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")
RecipeMaterial.create!(recipe_id: 4,material: "卵",quantity: "2個",created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")
RecipeMaterial.create!(recipe_id: 5,material: "ごぼう",quantity: "1/2本",created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")
RecipeMaterial.create!(recipe_id: 5,material: "人参",quantity: "1本",created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")

RecipeProcedure.create!(recipe_id: 1,procedure: "玉ねぎをみじん切りにし、あめ色になるまで炒める",created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")
RecipeProcedure.create!(recipe_id: 1,procedure: "1、ひき肉、卵、牛乳、パン粉、ナツメグを入れて混ぜる",created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")
RecipeProcedure.create!(recipe_id: 1,procedure: "2を4等分にし、楕円形に成形する",created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")
RecipeProcedure.create!(recipe_id: 1,procedure: "中火に熱したフライパンで片面3分ずつ焼く",created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")
RecipeProcedure.create!(recipe_id: 1,procedure: "4で残った油に、ソース、ケチャップを入れて酸味を飛ばす",created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")
RecipeProcedure.create!(recipe_id: 2,procedure: "大根を千切りにする",created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")
RecipeProcedure.create!(recipe_id: 2,procedure: "1に鰹節、しょうゆ、酢、砂糖をかけてよく混ぜる",created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")
RecipeProcedure.create!(recipe_id: 3,procedure: "じゃがいも、玉ねぎ、ベーコンを一口大に切る",created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")
RecipeProcedure.create!(recipe_id: 3,procedure: "1を鍋に入れたら、コンソメを投入し、20分煮込む",created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")
RecipeProcedure.create!(recipe_id: 4,procedure: "卵を溶きほぐし、だし、醤油、砂糖を入れてよく混ぜる",created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")
RecipeProcedure.create!(recipe_id: 4,procedure: "弱火に熱したフライパンで焼く",created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")
RecipeProcedure.create!(recipe_id: 5,procedure: "にんじんは細切り、ごぼうはささがきにする",created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")
RecipeProcedure.create!(recipe_id: 5,procedure: "1を炒め、醤油、砂糖、酒で味付けする",created_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00",updated_at: " Wed, 27 Apr 2022 08:41:33 UTC +00:00")
