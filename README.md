# Linux DO Theme

一套为 [Linux DO 论坛](https://linux.do) 开发的自定义美化主题。

## 功能特点

- 美化论坛整体界面
- 自动响应亮色/暗色主题切换
- 优化各页面元素样式
- 可选启用"霞鹜新晰黑"字体
- 可选简化界面（移除部分非必要按钮）

## 开发笔记

开发方法包括但不限于：肉眼观测法、截图取色法、穷举套用法、一顿乱选法、强制替换法。

代码质量不高，更新时间不定，欢迎有兴趣的朋友一起改进。 

## 使用方法

### 1. 安装必要的浏览器扩展

- [Stylus](https://github.com/openstyles/stylus) - 用于加载自定义 CSS
- [Tampermonkey](https://www.tampermonkey.net/) - 用于运行主题监听脚本

### 2. 安装主题监听脚本

将 `/theme-watcher.user.js` 文件安装到 Tampermonkey 中，该脚本会监测论坛的主题设置变化。（今后可能会有更优雅的实现方式）

### 3. 在 Stylus 中导入 CSS 文件

在 Stylus 中新建样式，使用 `@import` 导入以下核心 CSS 文件：

```css
@import url('https://raw.githubusercontent.com/KIY7086/Linux-DO-Theme/main/src/variable.css');
@import url('https://raw.githubusercontent.com/KIY7086/Linux-DO-Theme/main/src/global.css');
@import url('https://raw.githubusercontent.com/KIY7086/Linux-DO-Theme/main/src/header.css');
@import url('https://raw.githubusercontent.com/KIY7086/Linux-DO-Theme/main/src/sidebar.css');
@import url('https://raw.githubusercontent.com/KIY7086/Linux-DO-Theme/main/src/topic.css');
@import url('https://raw.githubusercontent.com/KIY7086/Linux-DO-Theme/main/src/topic-list.css');
@import url('https://raw.githubusercontent.com/KIY7086/Linux-DO-Theme/main/src/button.css');
@import url('https://raw.githubusercontent.com/KIY7086/Linux-DO-Theme/main/src/panel.css');
@import url('https://raw.githubusercontent.com/KIY7086/Linux-DO-Theme/main/src/user.css');
@import url('https://raw.githubusercontent.com/KIY7086/Linux-DO-Theme/main/src/search.css');
@import url('https://raw.githubusercontent.com/KIY7086/Linux-DO-Theme/main/src/home.css');
@import url('https://raw.githubusercontent.com/KIY7086/Linux-DO-Theme/main/src/editor.css');
@import url('https://raw.githubusercontent.com/KIY7086/Linux-DO-Theme/main/src/badge.css');
@import url('https://raw.githubusercontent.com/KIY7086/Linux-DO-Theme/main/src/dialog.css');
@import url('https://raw.githubusercontent.com/KIY7086/Linux-DO-Theme/main/src/shadow.css');
@import url('https://raw.githubusercontent.com/KIY7086/Linux-DO-Theme/main/src/alert.css');
@import url('https://raw.githubusercontent.com/KIY7086/Linux-DO-Theme/main/src/icon-color.css');
@import url('https://raw.githubusercontent.com/KIY7086/Linux-DO-Theme/main/src/user-card.css');
@import url('https://raw.githubusercontent.com/KIY7086/Linux-DO-Theme/main/src/chat.css');
```

### 4. 可选 CSS 文件

根据个人需求，可选择添加以下 CSS 文件：

- **font.css**: 将论坛字体设为"霞鹜新晰黑"（字体已内嵌，无需额外安装）
  ```css
  @import url('https://raw.githubusercontent.com/KIY7086/Linux-DO-Theme/main/src/font.css');
  ```

- **addition.css**: 移除部分无用按钮和始皇语录
  ```css
  @import url('https://raw.githubusercontent.com/KIY7086/Linux-DO-Theme/main/src/addition.css');
  ```

### 5. 离线使用方式

如果不想联网加载CSS文件，可以直接使用项目中的合并CSS文件：

1. 复制本项目的 `/dist` 目录中的以下文件之一：
   - **standard.css**: 标准版（包含所有核心样式）
   - **nofont.css**: 不包含自定义字体的版本
   - **noadditional.css**: 不包含界面简化功能的版本

2. 在Stylus中创建新样式，将下载的CSS文件内容完整粘贴进去

3. 应用范围设置为 `https://linux.do/*`

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
- **font.css**: （可选）字体设置
- **addition.css**: （可选）界面简化

## 注意事项

- 使用前请先安装 Stylus 和 Tampermonkey 浏览器扩展
- 主题会根据论坛设置自动在亮色/暗色模式间切换

## 许可证

本项目采用 GPL-V3 许可证，详情请参阅 [LICENSE](LICENSE) 文件。 
