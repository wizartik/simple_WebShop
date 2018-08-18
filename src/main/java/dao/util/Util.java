package dao.util;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.DomDriver;

import java.io.File;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Util {

    public static Config createConfig() {
        XStream xStream = new XStream(new DomDriver());
        Config config = new Config();
        xStream.fromXML(new File("config.xml"), config);
        return config;
    }

    public static String generateMD5(String line) {
        String result = null;
        try {
            MessageDigest md5 = MessageDigest.getInstance("MD5");
//            md5.update(StandardCharsets.UTF_8.encode(line));
            result = String.format("%032x", new BigInteger(md5.digest()));
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return result;
    }

    public static boolean closeStuff(AutoCloseable... autoCloseable) {
        boolean success = false;
        try {
            for (AutoCloseable anAutoCloseable : autoCloseable) {
                if (anAutoCloseable != null) {
                    anAutoCloseable.close();
                }
            }
            success = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return success;
    }


}
