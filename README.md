# nginx-proxy-without-sni-conf

Nginx反向代理配置文件（不发送TLS SNI头），支持直连IP联通但是域名无法访问的情况。

## 部署

1. `git clone https://github.com/LittleJake/nginx-proxy-without-sni-conf/`，拷贝`conf.d`、`ca`至Nginx配置文件目录；
2. 签发自签名证书，进入`ca`目录依次执行`sudo bash gen_ca_cert_key.sh`、`sudo bash bash gen_cert.sh`，随便输入相关信息。
3. 导入`FakeCA.crt`到计算机/手机内；
4. 直接访问域名即可打开。

ps：后期添加域名后，执行`sudo bash bash gen_cert.sh`即可更新证书对应域名。

## 支持站点

### SFW

| 站点               | 域名                   |
| ------------------ | ---------------------- |
| Pixiv              | i.pximg.net            |
|                    | pixiv.net              |
|                    | ssl.pixiv.net          |
|                    | accounts.pixiv.net     |
|                    | touch.pixiv.net        |
|                    | oauth.secure.pixiv.net |
|                    | www.pixiv.net          |
|                    | sketch.pixiv.net       |
|                    | app-api.pixiv.net      |
|                    | imgaz.pixiv.net        |
|                    | comic.pixiv.net        |
|                    | novel.pixiv.net        |
|                    | source.pixiv.net       |
|                    | i1.pixiv.net           |
|                    | i2.pixiv.net           |
|                    | i3.pixiv.net           |
|                    | i4.pixiv.net           |
|                    | dic.pixiv.net          |
|                    | en-dic.pixiv.net       |
|                    | sensei.pixiv.net       |
|                    | fanbox.pixiv.net       |
|                    | payment.pixiv.net      |
|                    | factory.pixiv.net      |
|                    | *.pixivsketch.net      |
|                    | *.pximg.net            |
|                    | imp.pixiv.net          |
| Mega               | mega.nz                |
|                    | g.api.mega.co.nz       |
|                    | *.mega.nz              |
| Wikipedia          | *.wikipedia.org        |
|                    | *.m.wikipedia.org      |
|                    | wikimedia.org          |
|                    | upload.wikimedia.org   |
| Steam              | *.steamcommunity.com   |
|                    | steamcommunity.com     |
|                    | *.steampowered.com     |
|                    | steampowered.com       |
| Archive of Our Own | *.archiveofourown.org  |
|                    | archiveofourown.org    |

### NSFW

| 站点     | 域名                |
| -------- | ------------------- |
| Nyaa     | nyaa.si             |
|          | www.nyaa.si         |
|          | sukebei.nyaa.si     |
| E-Hentai | forums.e-hentai.org |
| ExHentai | exhentai.org        |
|          | *.exhentai.org      |

## 测试图

![image](https://user-images.githubusercontent.com/13583702/147377481-2f8e3ea1-c8e5-48bb-bae7-bdb93d6d5a18.png)

![image](https://user-images.githubusercontent.com/13583702/147377509-5c955475-f8b6-4224-81d4-3f12b8323117.png)


## 感谢

配置文件思路参考：[mashirozx/Pixiv-Nginx](https://github.com/mashirozx/Pixiv-Nginx)
