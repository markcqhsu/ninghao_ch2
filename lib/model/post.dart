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

  const Post(title: "950ml-38mm 冷充PET圓瓶", author: "冷充", imageUrl: "https://www.honchuan.com/storage/images/products/02-pet-bottle/round-bottle-cf-950/cf-950.jpg"),
  const Post(title: "500ml-1881(28mm)冷充PET寶特瓶", author: "冷充", imageUrl: "https://www.honchuan.com/storage/images/products/02-pet-bottle/1881-c-500/1-1881-for-cold-fill-500ml.jpg"),
  const Post(title: "580ml-1881(28mm)冷充PET寶特瓶", author: "冷充", imageUrl: "https://www.honchuan.com/storage/images/products/02-pet-bottle/1881-c-580/2-1881-for-cold-fill-580ml.jpg"),
  const Post(title: "600ml-1810(28mm)冷充PET寶特瓶", author: "冷充", imageUrl: "https://www.honchuan.com/storage/images/products/02-pet-bottle/1810-c-600/3-1810-for-cold-fill-600ml.jpg"),
  const Post(title: "300ml-38mm冷充PET方瓶_A", author: "冷充", imageUrl: "https://www.honchuan.com/storage/images/products/02-pet-bottle/sb-c-300-a/5-square-bottle-for-cold-fill-300ml.jpg"),


];