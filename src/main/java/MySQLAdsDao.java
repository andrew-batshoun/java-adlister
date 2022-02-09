import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.jdbc.Driver;

public class MySQLAdsDao implements Ads {
    private Connection connection;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );

        } catch (SQLException e) {
            e.printStackTrace();
        }


    }

    @Override
    public List<Ad> all() {
        List<Ad> results = new ArrayList<>();
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM ads");
            while (rs.next()) {

                Ad fromSql = new Ad(rs.getLong("id"), rs.getLong("user_id"), rs.getString("title"), rs.getString("description"));

                results.add(fromSql);

            }


        } catch (SQLException e) {
            e.printStackTrace();
        }
        return results;
    }


    @Override
    public Long insert(Ad ad) {
        try {
            String query = "INSERT INTO ads ( user_id, title, description) VALUES(" + ad.getUserId() + "," + "'" + ad.getTitle()+ "'" + "," + "'" + ad.getDescription() + "'" + ")";
            Statement stmt = connection.createStatement();
            stmt.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = stmt.getGeneratedKeys();
            if (rs.next()) {
               return rs.getLong(1);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0L;
    }
}
