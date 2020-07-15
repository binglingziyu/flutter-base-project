# 项目简介

简化每次创建 Flutter 时的初始化操作。

包含以下功能：

- 状态管理（bloc）
- Http 请求（Dio、retrofit）
- JSON 序列化、反序列化（built_value、built_collection）
- 页面路由（fluro）
- 数据存储（shared_preferences）
- 应用内日志查看（dio_log、logger）


# 项目初始化方法

修改目录名
```shell script
$ mv flutter-base-project questionnaire
```

创建 Flutter 项目
```shell script
$ cd questionnaire

$ flutter create --org com.ihubin --project-name questionnaire .
```


# 用到的库

## 状态管理

[flutter_bloc](https://pub.dev/packages/flutter_bloc)
[bloc](https://pub.dev/packages/bloc)


## 页面路由

[fluro](https://pub.dev/packages/fluro)


## Http

[dio](https://pub.dev/packages/dio)
[retrofit](https://pub.dev/packages/retrofit)
[dio_log](https://pub.dev/packages/dio_log)


## JSON 处理

[built_value](https://pub.dev/packages/built_value)
[built_collection](https://pub.dev/packages/built_collection)


## 日志

[logger](https://pub.dev/packages/logger)



# 基础命令

创建 Flutter 项目
```
 flutter create --org com.ihubin --project-name questionnaire .
```

生成代码
```
flutter pub run build_runner build --delete-conflicting-outputs
```



# !! 一些问题

[为什么打包的 IPA 文件非常大](https://github.com/flutter/flutter/issues/47101#issuecomment-567522077)

[App Store 实际下载不会这么大](https://github.com/flutter/flutter/issues/47101#issuecomment-567395378)
