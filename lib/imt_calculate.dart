import 'dart:math';

class IMTCalculator {
  final int height;
  final int weight;
  double _imt = 0.0;

  IMTCalculator({required this.height, required this.weight});

  String calculateIMT() {
    _imt = weight / pow((height / 100), 2);
    return _imt.toStringAsFixed(1);
  }

  String getResult() {
    if (_imt < 17.0) {
      return 'UNDERWEIGHT';
    } else if (_imt > 17.0 && _imt < 18.4) {
      return 'KURUS';
    } else if (_imt > 18.5 && _imt < 25.0) {
      return 'Normal';
    } else if (_imt > 25.1 && _imt < 27.0) {
      return 'OVERWEIGHT';
    } else {
      return 'OBESITAS';
    }
  }

  String getInterpretation() {
    if (_imt < 17.0) {
      return 'Kurangnya berat badan bisa menjadi pertanda kalau kamu tidak cukup makan atau sakit. Untuk mengatasinya, pastikan kamu konsumsi makanan sehat secara rutin untuk memenuhi kebutuhan kalori. Konsumsi makanan yang tidak mencukupi kebutuhan kalori harian juga bisa menjadi penyebab underweight. ';
    } else if (_imt > 17.0 && _imt < 18.4) {
      return 'Kurangnya berat badan bisa menjadi pertanda kalau kamu tidak cukup makan atau sakit. Untuk mengatasinya, pastikan kamu konsumsi makanan sehat secara rutin untuk memenuhi kebutuhan kalori. Konsumsi makanan yang tidak mencukupi kebutuhan kalori harian juga bisa menjadi penyebab underweight. ';
    } else if (_imt > 18.5 && _imt < 25.0) {
      return 'Jika hasil penghitungan indeks massa tubuh kamu berada pada tingkat yang ideal, maka pertahankan agar angkanya tidak menurun (underweight) atau naik (overweight). Untuk mempertahankannya, terapkan pola makan sehat dan rutin berolahraga. ';
    } else if (_imt > 25.1 && _imt < 27.0) {
      return 'Cara terbaik untuk menurunkan berat badan jika kelebihan berat badan adalah melalui kombinasi diet dan olahraga. Melalui kalkulator berat badan ideal, kamu juga bisa mengetahui kebutuhan kalori harian kamu untuk mencapai berat badan yang sehat.';
    } else {
      return 'Kondisi obesitas dapat meningkatkan berbagai risiko penyakit kronis berkali-kali lipat. Oleh sebab itu, sebaiknya segera turunkan berat badan dengan cara yang sehat melalui kombinasi diet dan olahraga.  Pada beberapa kasus mungkin membutuhkan obat-obatan yang diresepkan oleh dokter. ';
    }
  }
}
