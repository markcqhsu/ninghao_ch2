class Post {
  Post({
    required this.title,
    required this.author,
    required this.imageUrl,
    required this.description,
  });

  final String title;
  final String author;
  final String imageUrl;
  final String description;

  bool selected = false;
}

// 這個posts 是一個List的數據類型
final List<Post> posts = [
   Post(
      title: "1810 單片BC蓋",
      author: "水蓋",
      imageUrl:
          "https://www.honchuan.com/storage/images/products/01-plastic-cap/1810-28-c-bc-31/1810-bac-a-n.jpg",
      description:
          "宏全1810 BC高品質、食品級單片塑蓋採用壓模機生產，該瓶蓋適用於28mm 1810非結晶瓶口之冷充填、常溫充填產品，其反捲結構設計可於封蓋後能與瓶口密合，達到良好的密封效果。"),
   Post(
      title: "1810單片BPV蓋",
      author: "水蓋",
      imageUrl:
          "https://www.honchuan.com/storage/images/products/01-plastic-cap/1810-28-c-bpv-26/1810-bpv-a-n.jpg",
      description:
          "宏全1810 BPV高品質、食品級塑蓋採用壓模機生產單片長凸設計，適用於28mm 1810非結晶瓶口之冷充填、常溫充填產品，蓋內長凸設計可達到良好密封效果，BPV是專門為日本市場設計，採用低開啟扭力設計（8-12kgf)，易於消費者開啟。"),
   Post(
      title: "1810 單片BPSJ蓋",
      author: "水蓋",
      imageUrl:
          "https://www.honchuan.com/storage/images/products/01-plastic-cap/1810-28-c-bpsj-275/1810-bpsj-a-n.jpg",
      description:
          "宏全1810 BPJS高品質、食品級塑蓋採單片射出生產，長凸設計，該瓶蓋適用於28mm 1810非結晶瓶口之冷充填、常溫充填產品，蓋內長凸設計可達到良好密封效果，BPJS瓶蓋於架橋位置採特殊設計，於開啟後防盜環可留於瓶口，蓋子不會脫落。"),

   Post(
    title: "1810單片BP蓋",
    author: "水蓋",
    imageUrl:
        "https://www.honchuan.com/storage/images/products/01-plastic-cap/1810-28-c-bp/1810-bap-a-n.jpg",
    description:
        "宏全1810 BP高品質、食品級冷充塑蓋，採用壓模機生產單片長凸設計，該瓶蓋適用於28mm 1810非結晶瓶口之冷充填、常溫充填產品，如：咖啡、茶、果汁等保特瓶飲品，蓋內長凸設計可達到良好密封效果。",
  ),
   Post(
      title: "950ml-38mm 冷充PET圓瓶",
      author: "冷充",
      imageUrl:
          "https://www.honchuan.com/storage/images/products/02-pet-bottle/round-bottle-cf-950/cf-950.jpg",
      description: "根據客戶需求進行瓶型設計"),
   Post(
      title: "500ml-1881(28mm)冷充PET寶特瓶",
      author: "冷充",
      imageUrl:
          "https://www.honchuan.com/storage/images/products/02-pet-bottle/1881-c-500/1-1881-for-cold-fill-500ml.jpg",
      description: "根據客戶需求進行瓶型設計"),
   Post(
      title: "580ml-1881(28mm)冷充PET寶特瓶",
      author: "冷充",
      imageUrl:
          "https://www.honchuan.com/storage/images/products/02-pet-bottle/1881-c-580/2-1881-for-cold-fill-580ml.jpg",
      description: "根據客戶需求進行瓶型設計"),
   Post(
      title: "600ml-1810(28mm)冷充PET寶特瓶",
      author: "冷充",
      imageUrl:
          "https://www.honchuan.com/storage/images/products/02-pet-bottle/1810-c-600/3-1810-for-cold-fill-600ml.jpg",
      description: "根據客戶需求進行瓶型設計"),
   Post(
      title: "300ml-38mm冷充PET方瓶_A",
      author: "冷充",
      imageUrl:
          "https://www.honchuan.com/storage/images/products/02-pet-bottle/sb-c-300-a/5-square-bottle-for-cold-fill-300ml.jpg",
      description: "根據客戶需求進行瓶型設計"),
   Post(
      title: "1810(28mm)-YPL蓋",
      author: "水蓋",
      imageUrl:
      "https://www.honchuan.com/storage/images/products/01-plastic-cap/1810-28-c-ypl/1810-ypl-w-n.jpg",
      description:
      "宏全1810 YPL高品質、食品級冷充塑蓋，採用壓模機生產單片長凸設計，該瓶蓋適用於28mm 1810非結晶瓶口之冷充填、常溫充填產品，如：咖啡、茶、果汁等保特瓶飲品，蓋內長凸設計可達到良好密封效果，YPL 的葉片採用yamamura鋸齒式葉片設計，可有效加強防盜效果。"),
];
