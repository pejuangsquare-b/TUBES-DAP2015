program InputSoundSystem;

type SoundSystem = Record
	merk_tipe : String;
	harga : integer;
	end;

type Tanggal = Record
	tanggal : integer;
	bulan : integer;
	tahun : integer;
	end;

type Sewa = Record
	kode : integer;
	nama : string;
	no_id : string;
	no_telp : string;
	tgl_pjm : Tanggal;
	tgl_kbl : Tanggal;
	end;

var
	dbArSound : array[1..100] of SoundSystem;
	temp_sound : SoundSystem;
	dbSoundFile : file of SoundSystem;
	n : integer;

procedure NewSound(var newSound : SoundSystem);
	begin
	writeln('SoundSystem Merk dan Tipe : '); readln(newSound.merk_tipe);
	writeln('SoundSystem Harga : '); readln(newSound.harga);
	writeln('Barang Berhasil ditambahkan!');
	end;

begin
	writeln('Inpud Sound System ke : '); readln(n);


	// Process Insert Sound System
	assign(dbSoundFile, 'db_rental.dat');
	ReSet(dbSoundFile);
	Seek(dbSoundFile, n-1);
	NewSound(dbArSound[n]);
	write(dbSoundFile, dbArSound[n]);
	close(dbSoundFile);


	// Process Ouput Sound System
	readln();
	writeln('Tampilkan Sound ke : '); readln(n);
	ReSet(dbSoundFile);
	Seek(dbSoundFile, n-1);
	read(dbSoundFile, temp_sound);
	close(dbSoundFile);
	writeln('Sound System Merk / Tipe : ', temp_sound.merk_tipe);
	writeln('Harga : ', temp_sound.harga);
	readln();

end.
