package sidminik.data;

import java.util.HashMap;

public class Data {
    private static String selector;
    private static String currentRole;
    private static HashMap<String, String> loginInfo = new HashMap<>();
    private static HashMap<String, String> roleInfo = new HashMap<>();

    static {
        loginInfo.put("guest", "");
        roleInfo.put("guest", "guest");

        loginInfo.put("user_1", "123");
        roleInfo.put("user_1", "user");

        loginInfo.put("admin_1", "789");
        roleInfo.put("admin_1", "admin");
    }

    public static String getSelector() {
        return selector;
    }

    public static void setSelector(String selector) {
        Data.selector = selector;
    }

    public static String getCurrentRole() {
        return currentRole;
    }

    public static void setCurrentRole(String currentRole) {
        Data.currentRole = currentRole;
    }

    public static HashMap<String, String> getLoginInfo() {
        return loginInfo;
    }

    public static HashMap<String, String> getRoleInfo() {
        return roleInfo;
    }
}
