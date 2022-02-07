import java.io.Serializable;

public class Album implements Serializable {
    private long id;
    private String artist;
    private String name;
    private int year;
    private float sales;
    private String genre;

    public Album() {
    }

    public Album(long id, String artist, String name, int releaseDate, int sales, String genre) {
        this.id = id;
        this.artist = artist;
        this.name = name;
        this.year = releaseDate;
        this.sales = sales;
        this.genre = genre;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getArtist() {
        return artist;
    }

    public void setArtist(String artist) {
        this.artist = artist;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getyear() {
        return year;
    }

    public void setReleaseDate(int releaseDate) {
        this.year = releaseDate;
    }

    public float getSales() {
        return sales;
    }

    public void setSales(float sales) {
        this.sales = sales;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }
}
