import java.util.ArrayList;

public class BeanTest {
    public static void main(String[] args) {
        Album thriller = new Album(1,"Michael Jackson", "Thriller", 1982, 490, "Pop, post-disco, funk, rock");
        Album backInBlack = new Album(2,"AC/DC", "Back in Black", 1980, 300, "Hard Rock");
        Album theBodyGuard = new Album(3,"Whitney Houston", "The Bodyguard", 1992, 320, "R&B, soul, pop, soundtrack");

        Author adams = new Author(1, "Douglas", "Adams");
        Author twain = new Author(2, "Mark", "Twain");
        Author vonnegut = new Author(3, "Kurt", "Vonnegut");

        Quote deadlines = new Quote(1, "I love deadlines. I love the whoosing noise they make as they go by.", adams);
        Quote illusion = new Quote(2, "Time is an illusion. Lunchtime doubly so.", adams);
        Quote clothes = new Quote(3, "Clothes make the man. Naked people have little or no influence on society.", twain);

        ArrayList<Quote> beanTest = new ArrayList<>();
        beanTest.add(deadlines);
        beanTest.add(illusion);
        beanTest.add(clothes);

        for(Quote bean: beanTest){
            System.out.println(bean.getContent() + " " + bean.getAuthor().getFirstName() + " " + bean.getAuthor().getLastName());

        }



    }
}
