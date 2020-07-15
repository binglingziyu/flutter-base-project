

import '../http/model/user/user.dart';
import '../http/model/login/login_data.dart';
import '../router/application.dart';

class LoginUtil {

  static bool isLogin() {
    return Application.sp.hasKey("gid")
        && Application.sp.hasKey("token");
  }

  static void login(LoginData data) {
    // 保存登录信息
    Application.sp.putString("token", data.token);
    Application.sp.putString("refreshToken", data.refreshToken);
    Application.sp.putString("gid", data.user.gid);
    Application.sp.putString("username", data.user.username);
    Application.sp.putString("nickname", data.user.nickname);
    Application.sp.putString("avatar", data.user.avatar);
    Application.sp.putString("gender", data.user.gender);
  }

  static void updateUser(User user) {
    Application.sp.putString("gid", user.gid);
    Application.sp.putString("userame", user.username);
    Application.sp.putString("nickname", user.nickname);
    Application.sp.putString("avatar", user.avatar);
    Application.sp.putString("gender", user.gender);
  }

  static void refreshToken(String token, String refreshToken) {
    // 保存登录信息
    Application.sp.putString("token", token);
    Application.sp.putString("refreshToken", refreshToken);
  }

  static void logout() {
    // 删除登录信息
    Application.sp.remove("token");
    Application.sp.remove("refreshToken");
    Application.sp.remove("gid");
    Application.sp.remove("username");
    Application.sp.remove("nickname");
    Application.sp.remove("avatar");
    Application.sp.remove("gender");
  }

  static String getToken() {
    return Application.sp.getString("token");
  }

  static String getRefreshToken() {
    return Application.sp.getString("refreshToken");
  }

  static String getGid() {
    return Application.sp.get("gid");
  }

  static String getAvatar() {
    return Application.sp.get("avatar");
  }

  static String getUsername() {
    return Application.sp.get("username");
  }

  static String getNickname() {
    return Application.sp.get("nickname");
  }

  static String getGender() {
    return Application.sp.get("gender");
  }


}