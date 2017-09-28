# 説明

このプロジェクトは、DeviceConnect SDK for iOS (https://github.com/DeviceConnect/DeviceConnect-iOS) を使ったサンプルアプリです。
このアプリは以下のような構成になっています。

- WebView
  - Device Web APIを使った Webアプリ(JavaScriptアプリ)を動かすための WebViewです。
  - 起動すると、[DeviceConnect Usersのページ](http://deviceconnectusers.github.io/demosite/)にあるデモサイトがロードされます
  	- http://deviceconnectusers.github.io/manager/
- DeviceConnect SDK Framework
  - DeviceConnectの基本機能が入ったフレームワークです
- DeviceConnect Host Plugin Framework
　- DeviceConnectの Hostプラグイン(DeviceWeb APIでスマホ(ホスト)自体を操作するためのプラグイン)です。

この構成は、DeviceConnect SDKを使ったアプリとしては最小の構成です。iOSで DeviceConnect SDKを使ったアプリを作られる際は参考にしてください。

また、このアプリは全て Swiftを使って作成しています。Swiftから DeviceConnect SDKを使うサンプルも少ないので、そのサンプルとしても参考になるかと思います。

# プロジェクト構造
DeviceConnect SDK 及びプラグインは CocoaPodsで管理しています。podspecは CocoaPodsの本家リポジトリには上がっていないため、 https://github.com/DeviceConnect/DeviceConnect-PodSpecs にあるものを利用しています。

ただし、一部修正が必要になった箇所があるため、それらを forkした以下のリポジトリを利用しています。
- https://github.com/kunichiko/DeviceConnect-iOS
- https://github.com/kunichiko/DeviceConnect-PodSpecs


# License
The MIT License (MIT)

Copyright (c) 2017 Kunihiko Ohnaka

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.