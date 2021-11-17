# IH31/IW32 CaseStudyで使用する開発環境

## Makefile

| Name                     | Description                                                  |
| ------------------------ | :----------------------------------------------------------- |
| make                     | コマンドのヘルプを表示する                                   |
| configure                | 開発環境のセットアップ                                       |
| build                    | 開発環境をビルドする（no-cache）                             |
| module/install           | コンテナに存在するnode_modulesをローカルに移動する           |
| up                       | 開発環境を立ち上げる                                         |
| down                     | 開発環境を削除する                                           |
| develop/start issue=hoge | 1. 空コミットを作成する<br />2. GitHubに空コミットした内容をpushする<br />3. 指定したIssue番号を紐づけたプルリクエストを作成する |
| restart                  | docker rm -f && docker run                                   |
| Admin Frontendの操作     |                                                              |
| af/install               | AdminFrontendの環境でyarn installを実行する                  |
| af/add package=hoge      | AdminFrontendの環境でpackageで指定したパッケージをインストールする |
| af/devadd package=hoge   | AdminFrontendの環境でpackageで指定したパッケージをdevへインストールする |
| af/remove package=hoge   | AdminFrontendの環境でpackageで指定したパッケージを削除する   |
| End Frontendの操作       |                                                              |
| ef/install               | EndFrontendの環境でyarn installを実行する                    |
| ef/add package=hoge      | EndFrontendの環境でpackageで指定したパッケージをインストールする |
| ef/devadd package=hoge   | EndFrontendの環境でpackageで指定したパッケージをdevへインストールする |
| ef/remove package=hoge   | EndFrontendの環境でpackageで指定したパッケージを削除する     |
| Admin Backendの操作      |                                                              |
| ab/install               | AdminBackendの環境でyarn installを実行する                   |
| ab/add package=hoge      | AdminBackendの環境でpackageで指定したパッケージをインストールする |
| ab/devadd package=hoge   | AdminBackendの環境でpackageで指定したパッケージをdevへインストールする |
| ab/remove package=hoge   | AdminBackendの環境でpackageで指定したパッケージを削除する    |
| End Backendの操作        |                                                              |
| eb/install               | EndBackendの環境でyarn installを実行する                     |
| eb/add package=hoge      | EndBackendの環境でpackageで指定したパッケージをインストールする |
| eb/devadd package=hoge   | EndBackendの環境でpackageで指定したパッケージをdevへインストールする |
| eb/remove package=hoge   | EndBackendの環境でpackageで指定したパッケージを削除する      |
|                          |                                                              |