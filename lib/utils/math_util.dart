
import 'dart:math';

class MathUtil {
 static List<String> _sampleImageLinks = [
    "https://img.freepik.com/free-vector/vertical-business-flyer-template_23-2148838214.jpg?t=st=1661705789~exp=1661706389~hmac=48ebe3dcd688387bbaa6f7c612fc7a1250b0005815a90221b72a95e650db9c89",
    "https://img.freepik.com/free-vector/travel-sale-flyer-template_52683-46904.jpg?t=st=1661705789~exp=1661706389~hmac=a9d00157514abe6a14977991735b32a07db365ae3129832ffd04229073aae2df",
    "https://img.freepik.com/free-psd/travel-tour-flyer-template_501970-130.jpg?t=st=1661705789~exp=1661706389~hmac=d2ed2c4207c3a2af73b6dfb15341e588c8b44a2b2dca3d738ed9571682db1b1d"
        "https://img.freepik.com/free-psd/digital-marketing-live-webinar-corporate-social-media-post-template_202595-540.jpg?t=st=1661705789~exp=1661706389~hmac=01c7c16ad81d3c13977b206c9f2d63eaed7384b9c17429187f878305e563a87f"
  ];
  static  getRandomNumber() {
    Random rnd;
    int min = 1;
    int max = 75;
    rnd = Random();
    int randToReturn = rnd.nextInt(max) + 1;
    return randToReturn;
  }

  static String getRandomImgUrl(){
    final random = new Random();
    var i = random.nextInt(_sampleImageLinks.length);
    return _sampleImageLinks[i];
  }
}