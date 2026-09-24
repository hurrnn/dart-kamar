class kamar{
  int nomorKamar;
  double hargaPermalam;

  kamar({
    required this.nomorKamar, 
    required this.hargaPermalam
    });

void hitungTotal(int malam){
  double total = malam * hargaPermalam;
if (malam <= 0){
  print ("lama inap tidak valid");
}else if (malam > 3){
    total = total * 0.10;  

}
print("nomorKamar: $nomorKamar | durasi $malam malam | total biaya: Rp $total");
}
}
class kamarVIP extends kamar{
  double biayaLayananVIP;

  kamarVIP({
    required super.nomorKamar,
    required super.hargaPermalam,
    required this.biayaLayananVIP 
    });

    @override 
    void hitungTotal(int malam){
  double total = (malam * hargaPermalam) + biayaLayananVIP ;
  if (malam <= 0){
    print("lama inap tidak valid");
  }else if (malam > 3){
    total = total * 0.10;  
  }
print("nomorKamar: $nomorKamar | durasi $malam malam | layananVIP $biayaLayananVIP | total biaya: Rp $total");
}

}
void main(){
  kamar kamar1 =kamar(nomorKamar : 101, hargaPermalam: 350000);
  kamar kamar2 =kamarVIP(nomorKamar : 201, hargaPermalam: 350000, biayaLayananVIP: 100000);
  kamar1.hitungTotal(2);
  kamar2.hitungTotal(2);
}