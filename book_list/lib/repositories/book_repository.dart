import 'package:book_list/models/book.dart';

class BookRepository {
  final List<Book> _dummyBooks = [
    Book(
      // ListView의 한 줄을 나타냄.
      title: '비폭력 대화',
      subtitle: '일상에서 쓰는 평화의 언어, 삶의 언어',
      description:
          "비폭력대화는 상대를 비난하거나 비판하지 않으면서 자신의 마음을 솔직하게 표현하는 방법이다.\n그리고 들을 때는 상대가 어떤 식으로 자신을 표현하든 그 말 뒤에 있는 느낌과 그 사람이 진실로 원하는 것을 듣는 대화방법이다.",
      image:
          'https://pds.joongang.co.kr//news/component/htmlphoto_mmdata/201710/16/a46fc198-11d1-4164-a06b-8daa67737467.jpg',
    ),
    Book(
      title: '구글은 어떻게 일하는가',
      subtitle: '에릭 슈미트가 직접 공개하는 구글 방식의 모든 것',
      description:
          "긍정의 문화를 세워라\n폐쇄보다는 공개를 기본으로 설정하라\n배움을 멈추지 않는 사람을 채용하라\n고개만 끄덕이는 인형을 조심하라\n계급이 아니라 관계를 형성하라\n일단 내어놓은 다음 개선하라",
      image: 'https://image.yes24.com/momo/TopCate415/MidCate001/40793387.jpg',
    ),
    Book(
      title: '나무의 시간',
      subtitle: '내촌목공소 김민식의 나무인문학',
      description:
          "40년 간 400km, 지구 100바퀴를 돌며 쌓은 이야기. 역사, 건축, 과학, 문학, 예술로 울창한 나무 인문학입니다.",
      image:
          'https://t1.daumcdn.net/thumb/R720x0/?fname=http://t1.daumcdn.net/brunch/service/user/3NB/image/TPdCqHr9Ww6EijU6e6MfNRec97E.jpeg',
    ),
    Book(
      title: '밑바닥부터 시작하는 딥러닝3',
      subtitle: '파이썬으로 직접 구현하며 배우는 딥러닝 프레임워크',
      description:
          "딥러닝 프레임워크 안은 놀라운 기술과 재미있는 장치로 가득합니다. 이 책의 목표는 그것들을 밖으로 꺼내어 제대로 이해시키는 것입니다.",
      image:
          'https://thumbnail9.coupangcdn.com/thumbnails/remote/230x230ex/image/vendor_inventory/79c5/f57c19d4c5f6ca64b3a081773b56de853aa23238d4f1bf34c7035b405c95.jpg',
    ),
  ];

  List<Book> getBooks() {
    return _dummyBooks;
  }
}
