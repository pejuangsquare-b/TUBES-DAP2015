program InputSoundSystem;

// Database Tipe Bentukan 2 SoundSystem (FIX)
type SoundSystem = Record
	merk_tipe : String;
	harga : integer;
	end;

type SoundSmall = SoundSystem;
type SoundMedium = SoundSystem;
type SoundLarge = SoundSystem;

// Database Tipe Bentukan 1 Sewa (FIX)
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
	id_member : string;
	tgl_pjm : Tanggal;
	tgl_kbl : Tanggal;
	total_hari : integer;
	total_bayar : integer;
	total_barang : integer;
	pinjam_sound : array[1..20] of string;
	end;

// Database Tipe Bentukan 3 - Member (BELUM FIX)
type PlusMember = Record
	diskon : integer;
	bonus : integer;
	end;

type PremiumMember = PlusMember;
type GoldMember = PlusMember;
type SilverMember = PlusMember;

type Member = Record
	id_member : string;
	nama : string;
	jenis_member : string;
	nilai_member : PlusMember;
	end;

// Database Tipe Bentukan 4 - Paket SoundSystem (FIX)
type PaketSound = Record
	tipe_paket : String;
	harga : Integer;
	end;

var
	//------------------------- DEFAULT VARIABLE -------------------------//
	// Database Array SoundSystem.
	dbArSoundSmall : array[1..100] of SoundSmall;		// dbSoundSmall.dat
	dbArSoundMedium : array[1..100] of SoundMedium;		// dbSoundMedium.dat
	dbArSoundLarge : array[1..100] of SoundLarge;		// dbSoundLarge.dat
	
	// Database Array Sewa.
	dbArSewa : array[1..100] of Sewa; // dbDataSewa.dat
	
	// Database Array Member.
	dbArMember : array[1..10] of Member; //dbDataMember.dat
	
	// Database Variable Tipe Member.
	PremMbr : PremiumMember; //dbPremMbr.dat
	GoldMbr : GoldMember; //dbGoldMbr.dat
	SilvMbr : SilverMember; //dbSilvMbr.dat

	// Database Array Jenis Jenis Paket SoundSystem.
	dbArPaket : array[1..15] of PaketSound; //dbPaket.dat

	//----------------------------------------------------------------------//

begin
	writeln('Sample Inputan : '); readln(dbArSewa[1].pinjam_sound[1]);
	readln();

end.
