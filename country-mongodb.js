// my collection:

// { "_id" : ObjectId("5cb5aff90f4e1257fc0b2cb8"), "name" : "USA", "peolpe" : 300000000, "army" : 1500000, "square" : 9519431, "weapon" : true }
// { "_id" : ObjectId("5cb5b0680f4e1257fc0b2cb9"), "name" : "Germany", "peolpe" : 100000000, "army" : 500000, "square" : 3419431, "weapon" : true }
// { "_id" : ObjectId("5cb5b0b60f4e1257fc0b2cba"), "name" : "Uganda", "peolpe" : 2000000, "army" : 30000, "square" : 4310000, "weapon" : false }
// { "_id" : ObjectId("5cb5b0e30f4e1257fc0b2cbb"), "name" : "Gvinea", "peolpe" : 7000000, "army" : 50000, "square" : 7310000, "weapon" : false }
// { "_id" : ObjectId("5cb5b1880f4e1257fc0b2cbc"), "name" : "Georgia", "peolpe" : 15000000, "army" : 130000, "square" : 1310000, "weapon" : false }
// { "_id" : ObjectId("5cb5b1ac0f4e1257fc0b2cbd"), "name" : "Korea", "peolpe" : 75000000, "army" : 530000, "square" : 2310000, "weapon" : true }
// { "_id" : ObjectId("5cb5b1ce0f4e1257fc0b2cbe"), "name" : "Mexico", "peolpe" : 105000000, "army" : 730000, "square" : 4310000, "weapon" : true }
// { "_id" : ObjectId("5cb5b2090f4e1257fc0b2cbf"), "name" : "Sudan", "peolpe" : 5000000, "army" : 20000, "square" : 200000, "weapon" : false }
// { "_id" : ObjectId("5cb5b2360f4e1257fc0b2cc0"), "name" : "Cameroon", "peolpe" : 9000000, "army" : 60000, "square" : 500000, "weapon" : true }


//ЗНАЙТИ:
// - всіх з ядерною зброєю:

// db.country
//          .find({"weapon": true})
//          .pretty();

//- де к-ть наслення > 5м:

// db.country
//      .find({"people": {$gt: 5000000}})
//      .pretty()

//5 найбільших країн по площі:

// db.country
//         .find()
//         .sort({"square":-1})
//         .limit(5)
//         .pretty()

//- 5 найменших країн по населенню:

// db.country
//      .find()
//      .sort({"people":1})
//      .limit(5)
//      .pretty()

//- всіх де є ядерна зброя або армія  кількістю > 100000:

// db.country.find({
//     $or :[
//        { "weapon":true},
//         {"army":{$gt:100000}}
//
//     ]
// }).pretty()
//

//всіх де є ядерна зброя і армія  кількістю > 100000:

// db.country.find(
//     {"weapon":true,
//     "army":{$gt:100000}}
// ).pretty()

// видалити найменшу країну:

// db.country.find()
//         .sort({"square":1})
//         .limit(1)
//         .pretty();
//
//
// db.country.remove({"name":"Sudan"});

//порахувати к-ть країн з ядерною зброєю і без неї(використовуючи групування) :

// db.country.aggregate(
//     [
//         {
//             $match: {
//                 $or: [
//                     {weapon:true},
//                     {weapon:false}
//                 ]
//                 }
//         },
//         {
//            $group: {
//                _id:"$weapon",
//                    count:{$sum:1}
//
//            }
//         }
//     ]
// );


//порахувати населення всіх країн в яких є ядерна зброя(використовуючи групування):

// db.country.aggregate([
//     {
//         $match: {
//             weapon:true
//         }
//     },
//     {
//         $group: {
//             _id: "$weapon",
//             people: {$sum:"$people"}
//         }
//     }
// ]);

//встановити всім країнам армію в 0 чоловік і відібрати ядерну зброю:

// db.country.update(
//     {
//         $or: [
//
//             {"weapon": true},
//             {"weapon": false}
//
//         ]
//     },
//     {
//         $set:
//             {"weapon": false, army: 0}
//     },
//     {multi: true}
// );

