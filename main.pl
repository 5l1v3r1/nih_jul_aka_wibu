mulai:-  
      init,  
      data_pengamatan,  
      aturan(Alasan),  
      jawaban(Alasan,Jawab),  
      write(Jawab),nl,  
      write('Berdasarkan databasea yang kita punya dan data yang anda input'),    
      retractall(observation(_)).  
 mulai:-  
      write('Maaf, virus tersebut tidak ada dalam database kami.'),nl,nl,  
      retractall(observation(_)).  
 init:-  
      write('PROGRAM SISTEM PAKAR PENDETEKSI BAHAYA RADIASI NUKLIR BAGI KESEHATAN'),nl,nl,  
      judul(Judul),write(Judul),nl,  
      tulis_pesan,nl.  
 tulis_pesan:-  
      pesan(Pesan),  
      write(Pesan),nl,fail.  
 tulis_pesan:-  
      nl.  
 data_pengamatan:-  
      pertanyaan(Tanya,Obs),  
      write(Tanya),nl,  
      read(Yatidak),  
      Yatidak=y,  
      assert(observation(Obs)),  
      fail.  
 data_pengamatan.  
 judul('MENGANALISA KESEHATAN PASIEN....').  
 pesan('Jawab pertanyaan berikut dengan y.(iya) atau t.(tidak)').  
 pertanyaan('Apakah pasien mengalami demam dan kedinginan?', demam).  
 pertanyaan('Apakah pasien kelemahan dan kelelahan?', lemas).  
 pertanyaan('Apakah pasien mengalami infeksi yang sering atau parah?', infeksi).  
 pertanyaan('Apakah pasien mengalami penurunan berat badan yang tidak bisa dijelaskan?', beratBadanturun).  
 pertanyaan('Apakah pasien mengalami pembengkakan kelenjar getah bening?', getahBening).
 pertanyaan('Apakah pasien mengalami hati membesar atau limpa?', hatiBesar).
 pertanyaan('Apakah pasien mengalami mudah memar atau berdarah, termasuk sering mimisan?', mimisan).
 pertanyaan('Apakah pasien mengalami titik-titik merah kecil di kulit (petechiae)?', petechiae).
 pertanyaan('Apakah pasien mengalami keringat berlebih?', keringat).
 pertanyaan('Apakah pasien mengalami keringat dimalam hari?', keringatMalam).
 pertanyaan('Apakah pasien mengalami sakit tulang?', sakitTulang).
 pertanyaan('Apakah pasien mengalami bengkak di leher, ketiak, lengan, kaki, atau selangkangan?', bengkakDileher).
 pertanyaan('Apakah pasien mengalami nyeri saraf, mati rasa, kesemutan?', nyeriSaraf).
 pertanyaan('Apakah pasien mengalami perasaan kenyang di perut?', merasaKenyang).
 pertanyaan('Apakah pasien mengalami nyeri dada atau punggung bagian bawah?', nyeriDada).
 pertanyaan('Apakah pasien mengalami ruam atau gatal?', ruamGatal).
 aturan(gejala_leukemia):-  
      observation(demam),  
      observation(lemas),  
      observation(infeksi),  
      observation(beratBadanturun),  
      observation(getahBening),
      observation(hatiBesar),
      observation(mimisan),
      observation(petechiae),
      observation(keringat),
      observation(keringatMalam),
      observation(sakitTulang),
      not(observation(bengkakDileher)),
      not(observation(nyeriSaraf)),
      not(observation(merasaKenyang)),
      not(observation(nyeriDada)),
      not(observation(ruamGatal)).
 aturan(gejala_limfoma):-  
      observation(demam),  
      observation(lemas),  
      observation(infeksi),  
      observation(beratBadanturun),  
      observation(getahBening),
      observation(hatiBesar),
      observation(mimisan),
      observation(petechiae),
      observation(keringat),
      observation(keringatMalam),
      observation(sakitTulang),
      not(observation(bengkakDileher)),
      not(observation(nyeriSaraf)),
      not(observation(merasaKenyang)),
      not(observation(nyeriDada)),
      not(observation(ruamGatal)).    
 jawaban(gejala_leukemia, 'Anda terinfeksi Gejala Leukemia, dokter akan meninjau riwayat medis dan melakukan pemeriksaan fisik lengkap untuk menegakan diagnosa, Beberapa pemeriksaan penunjang juga dapat dilakukan untuk memastikan hasil diagnosis, seperti, Tes darah, seperti tes darah lengkap, profil kimia, dan tes tumor, Tes urin untuk memeriksa kadar protein dan menilai fungsi ginjal, Studi pencitraan seperti MRI, CT, PET, dan X-ray, Biopsi sumsum tulang atau pembesaran kelenjar getah bening untuk memeriksa keberadaan sel kanker
 ').  
 jawaban(gejala_limfoma, 'Anda terinfeksi Gejala Limfoma, dokter akan meninjau riwayat medis dan melakukan pemeriksaan fisik lengkap untuk menegakan diagnosa, Beberapa pemeriksaan penunjang juga dapat dilakukan untuk memastikan hasil diagnosis, seperti, Tes darah, seperti tes darah lengkap, profil kimia, dan tes tumor, Tes urin untuk memeriksa kadar protein dan menilai fungsi ginjal, Studi pencitraan seperti MRI, CT, PET, dan X-ray, Biopsi sumsum tulang atau pembesaran kelenjar getah bening untuk memeriksa keberadaan sel kanker
 ').
