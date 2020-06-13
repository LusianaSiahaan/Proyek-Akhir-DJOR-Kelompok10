package djorapp;
import java.sql.Date;

public class ParkirKeluar {

    private int nomor_slot;
    private long waktu_mulai;
    private tanggal_parkir date;

    public ParkirKeluar(int nomor_slot, long waktu_mulai, Date tanggal_parkir)
	{
		this.nomor_slot = nomor_slot;
		this.waktu_mulai = waktu_mulai;
		this.tanggal_parkir = tanggal_parkir;
	}

	public int ambilnomor_slot() {
		return nomor_slot;
	}

	public long ambilwaktu_mulai() {
		return waktu_mulai;
	}

	public Date tanggal_parkir() {
		return tanggal_parkir;
	}

}