import 'package:sayakat/features/tours/domain/tour_model.dart';

List<TourModel> tourList = [
  TourModel(
    title: "Путешествие в горы",
    image:
        "https://images.unsplash.com/photo-1565342403917-671ac824577c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8JUQwJUIzJUQwJUJFJUQxJTgwJUQxJThCfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60",
    destination: "Горы",
    description: "Изумительные пейзажи горных вершин...",
    price: 200,
    distance: 150,
  ),
  TourModel(
    title: "Пляжный отдых",
    image:
        "https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhY2h8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60",
    destination: "Пляж",
    description: "Расслабление на белоснежных песках...",
    price: 300,
    distance: 50,
  ),
  TourModel(
    title: "Поход в лес",
    image:
        "https://media.istockphoto.com/id/1446199740/ru/%D1%84%D0%BE%D1%82%D0%BE/%D0%BF%D1%83%D1%82%D1%8C-%D1%87%D0%B5%D1%80%D0%B5%D0%B7-%D0%B7%D0%B0%D0%BB%D0%B8%D1%82%D1%8B%D0%B9-%D1%81%D0%BE%D0%BB%D0%BD%D1%86%D0%B5%D0%BC-%D0%BB%D0%B5%D1%81.webp?b=1&s=170667a&w=0&k=20&c=XYVssiuHcVc7KPsaMnlwOnvO4RXsRGGIEXxbTUYFa1I=",
    destination: "Лес",
    description: "Созерцание живописных лесных пейзажей...",
    price: 150,
    distance: 20,
  ),
  TourModel(
    title: "Культурный тур",
    image:
        "https://media.istockphoto.com/id/1391369779/ru/%D1%84%D0%BE%D1%82%D0%BE/%D0%BF%D1%83%D1%82%D0%B5%D0%B2%D0%BE%D0%B4%D0%B8%D1%82%D0%B5%D0%BB%D1%8C-%D1%83%D0%BA%D0%B0%D0%B7%D1%8B%D0%B2%D0%B0%D1%8E%D1%89%D0%B8%D0%B9-%D0%BD%D0%B0-%D0%BE%D1%81%D0%BE%D0%B1%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D0%B8-%D1%80%D1%83%D0%B8%D0%BD-%D0%B4%D0%B8%D1%80%D0%B8%D0%B8-%D0%BD%D0%B5%D0%B4%D0%B0%D0%BB%D0%B5%D0%BA%D0%BE-%D0%BE%D1%82-%D1%8D%D1%80-%D1%80%D0%B8%D1%8F%D0%B4%D0%B0.webp?b=1&s=170667a&w=0&k=20&c=vG7d3R1yPLYPHNm4-uWMZTk_n1dA_c_xOFfBUFAJVhc=",
    destination: "Исторический центр",
    description: "Погружение в культурное наследие...",
    price: 250,
    distance: 10,
  ),
  TourModel(
    title: "Активный отдых",
    image:
        "https://media.istockphoto.com/id/516449022/ru/%D1%84%D0%BE%D1%82%D0%BE/%D0%BB%D0%B5%D0%B4%D0%B8-%D1%81-%D0%BA%D0%B0%D1%8F%D0%BA%D0%B5.webp?b=1&s=170667a&w=0&k=20&c=FteH1tnclg2aeLAmQyj7qsPu-idjzuGPe_9CbB05_ZI=",
    destination: "Природный парк",
    description: "Приключения на свежем воздухе...",
    price: 180,
    distance: 120,
  ),
  TourModel(
    title: "Туры на велосипеде",
    image:
        "https://media.istockphoto.com/id/1248264659/ru/%D1%84%D0%BE%D1%82%D0%BE/%D0%BC%D0%BE%D0%BB%D0%BE%D0%B4%D0%B0%D1%8F-%D0%BF%D0%B0%D1%80%D0%B0-%D0%B5%D0%B7%D0%B4%D0%B8%D1%82%D1%8C-%D0%B6%D0%B8%D1%80%D0%B0-%D0%B2%D0%B5%D0%BB%D0%BE%D1%81%D0%B8%D0%BF%D0%B5%D0%B4%D1%8B-%D0%BD%D0%B0-%D0%BF%D1%80%D0%B8%D0%B1%D1%80%D0%B5%D0%B6%D0%BD%D0%BE%D0%B9-%D1%82%D1%80%D0%BE%D0%BF%D0%B5.webp?b=1&s=170667a&w=0&k=20&c=yXrD_caIpt62YWkAaLlJYx8TWe26qPmOo03mFBqXITg=",
    destination: "Велосипедные тропы",
    description: "Захватывающие велосипедные маршруты...",
    price: 120,
    distance: 75,
  ),
  TourModel(
    title: "Путешествие по озерам",
    image:
        "https://media.istockphoto.com/id/1277142237/ru/%D1%84%D0%BE%D1%82%D0%BE/%D1%82%D1%83%D1%80%D0%B8%D1%81%D1%82-%D1%81-%D1%80%D1%8E%D0%BA%D0%B7%D0%B0%D0%BA%D0%BE%D0%BC-%D0%BD%D0%B0-%D1%84%D0%BE%D0%BD%D0%B5-%D0%B3%D0%BE%D1%80%D0%BD%D0%BE%D0%B3%D0%BE-%D0%BE%D0%B7%D0%B5%D1%80%D0%B0.webp?b=1&s=170667a&w=0&k=20&c=8NyQgWqvc3AbRdhhbNX51ZTlYyOSKqDqduD5KwvqFLg=",
    destination: "Озера",
    description: "Плавание и рыбалка в окружении озер...",
    price: 280,
    distance: 30,
  ),
  TourModel(
    title: "Гастрономический тур",
    image:
        "https://media.istockphoto.com/id/893020938/ru/%D1%84%D0%BE%D1%82%D0%BE/%D0%B3%D0%BE%D1%80%D0%BE%D0%B4-%D1%81%D0%B8%D0%B5%D0%BC-%D1%80%D0%B8%D0%BF-%D0%BD%D0%B0-%D0%B7%D0%B0%D0%BA%D0%B0%D1%82%D0%B5.webp?b=1&s=170667a&w=0&k=20&c=Y55F3zb1MJ4qJ2CLmtNU-0sVvqlTikScBq0JCn3OgPE=",
    destination: "Городские рестораны",
    description: "Отведайте лучшие блюда местной кухни...",
    price: 350,
    distance: 5,
  ),
  TourModel(
    title: "Приключенческий тур",
    image:
        "https://media.istockphoto.com/id/652735376/ru/%D1%84%D0%BE%D1%82%D0%BE/%D1%80%D1%8E%D0%BA%D0%B7%D0%B0%D0%BA-%D0%BD%D0%B0-%D0%BF%D0%BE%D0%B4%D0%B2%D0%B5%D1%81%D0%BD%D0%BE%D0%B9-%D0%BC%D0%BE%D1%81%D1%82-%D0%B2-%D1%82%D1%80%D0%BE%D0%BF%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D1%85-%D0%BB%D0%B5%D1%81%D0%B0%D1%85.webp?b=1&s=170667a&w=0&k=20&c=3wVoRk0giiXnqpLAG9KtuMHcKeot8PYx_idJLNBzlJs=",
    destination: "Неизведанные места",
    description: "Освойте территорию полную приключений...",
    price: 400,
    distance: 200,
  ),
  TourModel(
    title: "Тур на автомобиле",
    image:
        "https://media.istockphoto.com/id/519467326/ru/%D1%84%D0%BE%D1%82%D0%BE/%D0%BC%D0%BE%D0%BB%D0%BE%D0%B4%D0%B0%D1%8F-%D0%BF%D0%B0%D1%80%D0%B0-%D0%BD%D0%B0-%D0%B4%D0%BE%D1%80%D0%BE%D0%B3%D0%B5-%D0%BF%D1%83%D1%82%D0%B5%D1%88%D0%B5%D1%81%D1%82%D0%B2%D0%B8%D0%B5-%D1%87%D1%82%D0%B5%D0%BD%D0%B8%D0%B5-%D0%BA%D0%B0%D1%80%D1%82%D1%8B-%D0%B8-%D0%BD%D0%B0%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F.webp?b=1&s=170667a&w=0&k=20&c=ZeSvkcUJ_VzfSeSvV88Co-b5t_xSnW4cXF1gKGBUGaw=",
    destination: "Путешествие по стране",
    description: "Удобное путешествие на автомобиле...",
    price: 220,
    distance: 300,
  ),
];
