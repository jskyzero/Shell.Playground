# 将.png结尾的文件名改为 .jpg
ls | cut -d '.' -f 1 | xargs -I {1} mv {1}.png {1}.jpg