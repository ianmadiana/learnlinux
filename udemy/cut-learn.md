learn about command cut

1. Ambil kolom tertentu dari file
Ambil kolom 1 (msisdn)
cut -d 'DELIM' -f FIELD data.txt
Ambil kolom 2 (nama)
cut -d '|' -f 1 data.txt

Ambil beberapa kolom sekaligus
Kolom 1 dan 3:
cut -d '|' -f 1,3 data.txt


