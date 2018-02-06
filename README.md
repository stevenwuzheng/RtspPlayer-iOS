# RtspPlayer-iOS
Optimized  rtsp or http Universal player


2017年一眨眼就过去了，接近年底了，有人欢喜有人愁......

近些年很多安防类App都会要求实时播放rtsp视频流，之前工作中尝试过很多款iOS播放器，包括VLC、ijk、kxmovie、VideoToolbox硬解码等，
其中VLC在iOS端需打包成framework使用，无法对其中源码进行修改；ijk在直播中使用较多，比较适合播放rtmp流，播放rtsp时延迟很大(有4-5秒)；
VideoToolbox硬解码很多rtsp的流播放不了。

基于以上测试的结果，我们项目最终还是选用FFmpeg+kxmovie的方式播放实时流，通过修改源码进行一些优化，目前该播放器播放rtsp实时画面延迟较少。
现开放此播放器完整源码(界面UI自己可以动手随心所欲修改)，喜欢的话可以拿走，也可以Star关注一下~


播放截图如下：
![](https://raw.githubusercontent.com/stevenwuzheng/RtspPlayer-iOS/master/ScreenShot123.png)
