#!/bin/bash
echo "正在上传文件到 GitHub..."

# 初始化 git（如果还没有）
if [ ! -d .git ]; then
    git init
    git branch -M main
    git remote add origin https://github.com/winkinggump/mallplan.git
fi

# 添加所有文件
git add MallPlan-mobile.html manifest.json sw.js icon-192.png icon-512.png 使用说明.md

# 提交
git commit -m "初始化 MallPlan 手机版 PWA"

# 推送到 GitHub
git push -u origin main

echo "✅ 上传完成！"
echo "请打开：https://github.com/winkinggump/mallplan 确认"
