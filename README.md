# WebUI-Aria2

![Main interface](/screenshots/overview.png?raw=true)

The aim for this project is to create the worlds best and hottest interface to interact with aria2. aria2 is the worlds best file downloader, but sometimes the command line brings more power than necessary. The project was initially created as part of the GSOC scheme, however it has rapidly grown and changed with tremendous support and feedback from the aria2 community.

Very simple to use, no build scripts, no installation scripts. First start aria2 in the background either in your local machine or in a remote one. You can do that as follows:

```bash
aria2c --enable-rpc --rpc-listen-all
```

If aria2 is not installed in your local machine then head on to https://aria2.github.io/ and follow the instructions there.

Then to use the WebUI-Aria2,

- You can either download this repository and open index.html from `docs` folder.
- Or you could just head on to https://ziahamza.github.io/webui-aria2 and start downloading files! Once you have visited the URL thanks to [Progressive Web Apps](https://developers.google.com/web/progressive-web-apps/) you can open the same URL even when you are offline.
- Or you can also use NodeJS to create simple server by using the following command from the project folder.

```bash
node node-server.js
```

# Dependencies

Well, you need aria2. And a web browser (if that even counts!)

#

# License

Refer to the LICENSE file (MIT License). If the more liberal license is needed then add it as an issue
