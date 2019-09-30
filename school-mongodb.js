// use students;
//
// db.students.insertMany(
//     [
//         {
//             "name": "Bob", "class": 7, "lessons": ["english", "mathematics"], "avgScore": 3.5, "parents": [
//                 {"gender": "female", "name": "Ira"},
//                 {"gender": "male", "name": "Dima", "profession": "programmer"}
//             ]
//         },
//         {
//             "name": "Alice", "class": 7, "lessons": ["english", "mathematics", 'geology'], "avgScore": 5, "parents": [
//                 {"gender": "female", "name": "Katya", "profession": "doctor"},
//                 {"gender": "male", "name": "Andrii", "profession": "doctor"}
//             ]
//         },
//         {"name": "Viktor", "class": 7, "lessons": ["german", "informatics"], "avgScore": 4.1},
//         {"name": "Dima", "class": 7, "lessons": ["german", "mathematics", "physics"], "avgScore": 3.5},
//         {
//             "name": "Katerina", "class": 1, "lessons": ["basic"], "avgScore": 4, "parents": [
//                 {"gender": "male", "name": "Igor", "profession": "scientist"}
//             ]
//         },
//         {
//             "name": "Ivanka", "class": 1, "lessons": ["basic"], "avgScore": 4.91, "parents": [
//                 {"gender": "female", "name": "Nadya", "profession": "teacher"},
//                 {"gender": "male", "name": "Oleg", "profession": "sailor"}
//             ]
//         },
//         {
//             "name": "Oleguk", "class": 1, "lessons": ["basic"], "avgScore": 4.2, "parents": [
//                 {"gender": "female", "name": "Katya", "profession": "journalist"},
//                 {"gender": "male", "name": "Miroslav", "profession": "photographer"}
//             ]
//         },
//         {
//             "name": "Igorko", "class": 1, "lessons": ["basic"], "avgScore": 2.61, "parents": [
//                 {"gender": "male", "name": "Vitalik", "profession": "builder"},
//             ]
//         },
//         {
//             "name": "Katya", "class": 1, "lessons": ["basic"], "avgScore": 3.92, "parents": [
//                 {"gender": "female", "name": "Solomiya", "profession": "architect"},
//                 {"gender": "male", "name": "Andriy", "profession": "driver"}
//             ]
//         },
//         {
//             "name": "Viktor", "class": 1, "lessons": ["basic"], "avgScore": 3.54, "parents": [
//                 {"gender": "male", "name": "Oleksandr", "profession": "soldier"},
//                 {"gender": "female", "name": "Svitlana", "profession": "soldier"}
//             ]
//         },
//         {
//             "name": "Ivan", "class": 2, "lessons": ["basic"], "avgScore": 4.2, "parents": [
//                 {"gender": "male", "name": "Ivan", "profession": "trainer"},
//                 {"gender": "female", "name": "Vika"}
//             ]
//         },
//         {
//             "name": "Artem", "class": 2, "lessons": ["how to be a star"], "avgScore": 3.9, "parents": [
//                 {"gender": "female", "name": "Albert", "profession": "star"},
//             ]
//         },
//         {
//             "name": "Kostya", "class": 2, "lessons": ["basic"], "avgScore": 4.24, "parents": [
//                 {"gender": "male", "name": "Ivan", "profession": "blogger"},
//                 {"gender": "male", "name": "Andriy", "profession": "blogger"}
//             ]
//         },
//         {
//             "name": "Inna", "class": 2, "lessons": ["basic"], "avgScore": 3.11, "parents": [
//                 {"gender": "male", "name": "Adam", "profession": "musician"},
//                 {"gender": "female", "name": "Diana"}
//             ]
//         },
//         {
//             "name": "Ivan", "class": 3, "lessons": ["basic"], "avgScore": 4.9, "parents": [
//                 {"gender": "male", "name": "Vlad", "profession": "merchandiser"},
//                 {"gender": "female", "name": "Galina", "profession": "teacher"}
//             ]
//         },
//         {
//             "name": "Galina", "class": 3, "lessons": ["basic"], "avgScore": 3.8, "parents": [
//                 {"gender": "male", "name": "Johny", "profession": "doctor"},
//                 {"gender": "female", "name": "Sasha", "profession": "porn star"}
//             ]
//         },
//         {
//             "name": "Dima", "class": 3, "lessons": ["basic"], "avgScore": 3.5, "parents": [
//                 {"gender": "male", "name": "Dima", "profession": "trainer"},
//                 {"gender": "female", "name": "Olga", "profession": "sportsman"}
//             ]
//         },
//         {
//             "name": "Nastya", "class": 4, "lessons": ["informatics", "physics"], "avgScore": 4.1, "parents": [
//                 {"gender": "male", "name": "Viktor", "profession": "programmer"},
//                 {"gender": "female", "name": "Karina", "profession": "doctor"}
//             ]
//         },
//         {
//             "name": "Murka", "class": 4, "lessons": ["physics"], "avgScore": 2.7, "parents": [
//                 {"gender": "female", "name": "Inessa", "profession": "writer"}
//             ]
//         },
//         {
//             "name": "Vasyl", "class": 4, "lessons": ["english"], "avgScore": 4.93, "parents": [
//                 {"gender": "female", "name": "Solomiya", "profession": "architect"},
//                 {"gender": "male", "name": "Andriy", "profession": "driver"}
//             ]
//         },
//         {
//             "name": "Feliks", "class": 4, "lessons": ["physics"], "avgScore": 2.12, "parents": [
//                 {"gender": "female", "name": "Tanya", "profession": "designer"},
//                 {"gender": "male", "name": "Andriy", "profession": "writer"}
//             ]
//         },
//         {
//             "name": "Katerina", "class": 4, "lessons": ["geology"], "avgScore": 4.51, "parents": [
//                 {"gender": "female", "name": "Ivanka", "profession": "architect"},
//             ]
//         },
//         {
//             "name": "Konstantin",
//             "class": 4,
//             "lessons": ["english", "informatics", "geology"],
//             "avgScore": 2.31,
//             "parents": [
//                 {"gender": "female", "name": "Natylya", "profession": "HR"},
//                 {"gender": "male", "name": "Andriy", "profession": "economist"}
//             ]
//         },
//         {
//             "name": "Illya", "class": 4, "lessons": ["basic"], "avgScore": 2.78, "parents": [
//                 {"gender": "female", "name": "Irina", "profession": "waitress"},
//                 {"gender": "female", "name": "Olga", "profession": "chief financial officer"}
//             ]
//         },
//         {
//             "name": "Roman", "class": 4, "lessons": ["basic"], "avgScore": 5, "parents": [
//                 {"gender": "male", "name": "Igor", "profession": "programmer"},
//                 {"gender": "female", "name": "Oksana", "profession": "scientist"}
//             ]
//         },
//         {
//             "name": "Petro", "class": 4, "lessons": ["basic"], "avgScore": 4.8, "parents": [
//                 {"gender": "male", "name": "Dima", "profession": "builder"},
//                 {"gender": "female", "name": "Inna", "profession": "seamstress"}
//             ]
//         }
//     ]
// );
//
//


// 1) Знайти всіх дітей в яких сердня оцінка 4.2:

// db.students.find(
//      {"avgScore":4.2}
// );

// 2) Знайди всіх дітей з 1 класу:

// db.students.find(
//     {"class":1}
// );

// 3) Знайти всіх дітей які вивчають фізику:

// db.students.find(
//     {"lessons": "physics"}
// ).pretty()

// 4) Знайти всіх дітей, батьки яких працюють в науці ( scientist ):

// db.students.find(
//     {"parents.profession": "scientist"}
// ).pretty()

// 5) Знайти дітей, в яких середня оцінка більша за 4:

// db.students.find(
//     {
//         "avgScore":{
//             $gt:4
//         }
//     }
// ).pretty()


// 6) Знайти найкращого учня:

// db.students.find().sort(
//     {
//         "avgScore": -1
//     }
// ).limit(1).pretty()

// 7) Знайти найгіршого учня:

// db.students.find().sort(
//     {
//         "avgScore": 1
//     }
// ).limit(1).pretty()

// 8) Знайти топ 3 учнів:
//
// db.students.find().sort(
//     {
//         "avgScore": -1
//     }
// ).limit(3).pretty();


// 9) Знайти дітей які вчаться в початковій школі (до 5 класу) і вивчають фізику ( physics ):
// db.students.find(
//     {
//         "class": {$lt: 5},
//         "lessons":"physics"
//     }
// );



// 10) Вигнати дітей, які мають середній бал менше ніж 2.5:
// db.students.remove(
//     {
//         "avgScore": {$lt:2.5}
//     }
// );
// 11) Дітям, батьки яких працюють в освіті ( teacher ) поставити 5:
// db.students.update(
//     {"parents.profession":"teacher"},
//     {$set:{"avgScore":5}},
//     {multi:true}
// )
