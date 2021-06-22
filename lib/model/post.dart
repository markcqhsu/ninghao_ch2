class Post {
  const Post({
    required this.title,
    required this.author,
    required this.imageUrl,
  });

  final String title;
  final String author;
  final String imageUrl;
}

// 這個posts 是一個List的數據類型
final List<Post> posts = [
  const Post(title: "1810 單片BC蓋", author: "水蓋", imageUrl: "https://www.honchuan.com/storage/images/products/01-plastic-cap/1810-28-c-bc-31/1810-bac-a-n.jpg"),
  const Post(title: "1810單片BPV蓋", author: "水蓋", imageUrl: "https://www.honchuan.com/storage/encoded_images/thumbnails/products/01-plastic-cap/1810-28-c-bpv-26/1810-1-pc-ambient-fill-bpv.png"),
  const Post(title: "1810單片YPL蓋", author: "水蓋", imageUrl: "https://www.honchuan.com/storage/images/products/01-plastic-cap/1810-28-c-ypl/1810-ypl-w-n.jpg"),
  const Post(title: "1810 單片BPSJ蓋", author: "水蓋", imageUrl: "https://www.honchuan.com/storage/images/products/01-plastic-cap/1810-28-c-bpsj-275/1810-1-pc-ambient-fill-bpsj.png"),
  const Post(title: "1810單片BP蓋", author: "水蓋", imageUrl: "https://www.honchuan.com/storage/images/products/01-plastic-cap/1810-28-c-bp/1810-bap-a-n.jpg"),


];