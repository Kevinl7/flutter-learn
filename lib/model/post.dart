class Post {
  const Post({
    this.title,
    this.author,
    this.imageUrl
  });

  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> posts = [
  Post(
    title: '嗷嗷嗷',
    author: 'kevin',
    imageUrl: 'http://126306.sgss8.com/upload/2016042923/232418_1381.jpg'
  ),
  Post(
    title: '啵啵啵',
    author: 'tony',
    imageUrl: 'http://img.jrzj.com/uploadfile/2016/0425/20160425034606619.jpg'
  ),
  Post(
    title: '擦擦擦',
    author: 'duk',
    imageUrl: 'https://thumbs.dreamstime.com/z/%E5%BD%93%E7%8C%AA%E9%A3%9E%E8%A1%8C%EF%BC%8C%E9%A3%9E%E8%A1%8C%E7%8C%AA-102257918.jpg'
  )
];