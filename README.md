# Linux DO Theme

一套为 [Linux DO 论坛](https://linux.do) 开发的自定义美化主题。

## 功能特点

- 美化论坛整体界面
- 自动响应亮色/暗色主题切换
- 优化各页面元素样式

## 开发笔记

开发方法包括但不限于：肉眼观测法、截图取色法、穷举套用法、一顿乱选法、强制替换法。

代码质量不高，更新时间不定，欢迎有兴趣的朋友一起改进。 

## 注意事项

- 使用前请先安装 Stylus 和 Tampermonkey 浏览器扩展
- 主题会根据论坛设置自动在亮色/暗色模式间切换
- 本主题使用了大量 CSS4 新特性（如嵌套语法、:has() 选择器等），请确保使用支持这些特性的现代浏览器
- 推荐使用的浏览器：
  - Chrome/Edge 105+
  - Firefox 121+
  - Safari 16.4+

## 使用方法

### 1. 安装必要的浏览器扩展

- [Stylus](https://github.com/openstyles/stylus) - 用于加载自定义 CSS
- [Tampermonkey](https://www.tampermonkey.net/) - 用于运行主题监听脚本

### 2. 安装主题监听脚本

将 `/theme-watcher.user.js` 文件安装到 Tampermonkey 中，该脚本会监测论坛的主题设置变化。（今后可能会有更优雅的实现方式）

### 3. 在 Stylus 中添加样式

打开[该项目在UserStyle.World的地址](https://userstyles.world/style/22432/)，点击Install，会自动跳转到Stylus安装

> **重要提示**：请勿使用 `@import` 语句导入CSS文件，该方法无法生效！必须直接复制完整的CSS内容。

## 文件说明

- **theme-watcher.user.js**: 主题监听器，监测并自动切换亮色/暗色主题
- **variable.css**: 主题颜色变量
- **global.css**: 全局样式修正
- **header.css**: 顶部导航栏样式
- **sidebar.css**: 侧边栏样式
- **topic.css**: 帖子内容页面样式
- **topic-list.css**: 帖子列表样式
- **button.css**: 按钮样式
- **panel.css**: 面板样式
- **user.css**: 用户相关页面样式
- **search.css**: 搜索页面样式
- **home.css**: 首页样式
- **editor.css**: 编辑器样式
- **badge.css**: 徽章样式
- **dialog.css**: 对话框样式
- **shadow.css**: 阴影变量
- **alert.css**: 提示框样式
- **icon-color.css**: 图标颜色修正
- **user-card.css**: 用户卡片样式
- **chat.css**: 聊天界面样式
- **addition.css**: 美化banner

## 许可证

本项目采用 GPL-V3 许可证，详情请参阅 [LICENSE](LICENSE) 文件。 
