%This is the change file for the original Docker's Documentation file.
%This is part of Japanese translation version for Docker's Documantation.

@x
---
title: Managing access tokens
description: Learn how to create and manage your personal Docker Hub access tokens to securely push and pull images programmatically.
keywords: docker hub, hub, security, PAT, personal access token
---
@y
---
title: アクセストークンの管理
description: Learn how to create and manage your personal Docker Hub access tokens to securely push and pull images programmatically.
keywords: docker hub, hub, security, PAT, personal access token
---
@z

@x
Docker Hub lets you create personal access tokens as alternatives to your password. You can use tokens to access Hub images from the Docker CLI.
@y
Docker Hub では、パスワードに代わるものとして個人用のアクセストークンを利用することができます。
このトークンを使って Docker CLI から Docker Hub イメージにアクセスできます
@z

@x
Using personal access tokens provides some advantages over a password:
* You can investigate the last usage of the access token and disable or delete it if you find any suspicious activity.
* When using an access token, you can't perform any admin activity on the account, including changing the password. It protects your account if your computer is compromised.
@y
個人用のアクセストークンを利用すると、パスワードに比べて以下の利点があります。
* アクセストークンの前回利用状況を確認できます。
  したがって何か疑わしい履歴が残っていたら、アクセストークンを無効化したり削除したりすることができます。
* アクセストークンを使うと、ログインアカウントに対する管理操作、たとえばパスワードの変更といったことを行うことはできません。コンピューターが危険にさらされた際に、アカウントを保護する目的があります。
@z

@x
>**Important**
>
> Treat access tokens like your password and keep them secret. Store your
> tokens securely (for example, in a credential manager).
{: .important}
@y
>**重要**
>
> アクセストークンはパスワードと同様に、極秘の取り扱いとしてください。
> トークンは安全な場所に保存するようにしてください (たとえば資格情報マネージャー内など)。
{: .important}
@z

@x
Access tokens are valuable for building integrations, as you can issue
multiple tokens &ndash; one for each integration &ndash; and revoke them at
any time.
@y
アクセストークンは複数環境で利用する際に活用できます。
複数のトークンを生成しておき、環境ごとにトークンを使い分けます。
不要になったらいつでも削除することができます。
@z

@x
   >**Note**
   >
   > If you have [two-factor authentication (2FA)](2fa/index.md) enabled on
   > your account, you must create at least one personal access token. Otherwise,
   > you will be unable to log in to your account from the Docker CLI.
@y
   >**メモ**
   >
   > 利用アカウントに対して [２要素認証（two-factor authentication; 2FA）](2fa/index.md) を有効にしている場合は、個人用のアクセストークンを少なくとも 1 つ生成しておかなければなりません。
   > これを行っていないと、Docker CLI を使ったアカウントへのログインができません。
@z

@x
## Create an access token
@y
{: #create-an-access-token }
## アクセストークンの生成
@z

@x
You can create as many tokens as you need.
@y
アクセストークンは必要な分だけ生成することができます。
@z

@x
1. Log in to [hub.docker.com](https://hub.docker.com){: target="_blank" rel="noopener" class="_"}.
@y
1. [hub.docker.com](https://hub.docker.com){: target="_blank" rel="noopener" class="_"} にログインします。
@z

@x
2. Click on your username in the top right corner and select **[Account Settings](https://hub.docker.com/settings/general)**.
@y
2. 画面右上に表示されている自身のユーザー名をクリックして、**[Account Settings](https://hub.docker.com/settings/general)** を実行します。
@z

@x
3. Select **[Security](https://hub.docker.com/settings/security) > New Access Token**.
@y
3. **[Security](https://hub.docker.com/settings/security) > New Access Token** を実行します。
@z

@x
4. Add a description for your token. Use something that indicates where
the token will be used, or set a purpose for the token.
@y
4. トークンに対する説明を書きます。
   トークンをどのように用いるべきか、トークンの利用目的は何か、といったことを書きます。
@z

@x
      ![PAT Menu](images/hub-create-token.png){:width="700px"}
@y
      ![PAT メニュー](images/hub-create-token.png){:width="700px"}
@z

@x
5. You can view the following permissions from the drop-down:
@y
5. ドロップダウンメニューには、以下のようなパーミッションが表示されます。
@z

@x
    | Features   | Free | Pro | Team |
    | --------------------- | ---- | ----- | ----- |
    | Personal Access Tokens (read, write, delete scope only)*    |  x |   x  |   x  |
    | Scoped Personal Access Tokens  |      | x   |   x   |
    | Unlimited Personal Access Tokens   |      |       |   x   |
@y
    | 機能   | Free | Pro | Team |
    | --------------------- | ---- | ----- | ----- |
    | パーソナルアクセストークン (読み込み、書き込み、削除の各スコープのみ)*    |  x |   x  |   x  |
    | スコープつきパーソナルアクセストークン |      | x   |   x   |
    | 無制限のパーソナルアクセストークン   |      |       |   x   |
@z

@x
      >*You can create 1 access token as part of the Free plan, 5 tokens per the Pro plan, and Unlimited tokens for the Team plan.
      For more information about a Pro or a Team plan, see [Docker Pricing](https://www.docker.com/pricing?utm_source=docker&utm_medium=webreferral&utm_campaign=docs_driven_upgrade){: target="_blank" rel="noopener" class="_"}.
@y
      >* Free プラン内では 1 つのアクセストークン生成ができます。
      Pro プランでは 5 つのトークン、Team プランでは無制限です。
      Pro プランや Team プランの詳細については、[Docker Pricing](https://www.docker.com/pricing?utm_source=docker&utm_medium=webreferral&utm_campaign=docs_driven_upgrade){: target="_blank" rel="noopener" class="_"} を参照してください。
@z

@x
6. Copy the token that appears on the screen and save it. You will not be able to retrieve the token once you close this prompt.
@y
6. 画面上に表示されるトークンをコピーして保存します。
   この表示画面を閉じてしまうと、トークンを知ることはできなくなります。
@z

@x
      ![Copy Token](images/hub-copy-token.png){:width="700px"}
@y
      ![コピートークン](images/hub-copy-token.png){:width="700px"}
@z

@x
## Use an access token
@y
{: #use-an-access-token }
## アクセストークンの利用
@z

@x
You can use an access token anywhere that requires your Docker Hub
password.
@y
Docker Hub のパスワードを必要とする場面では、どこでもアクセストークンを利用することができます。
@z

@x
When logging in from your Docker CLI client (`docker login --username <username>`), omit the password in the login command. Instead, enter your token when asked for a password.
@y
Docker CLI クライアントからログインする場合（`docker login --username <ユーザー名>`）、ログインコマンドにおけるパスワード入力は行いません。
パスワードの入力プロンプトには、代わりにトークンを入力します。
@z

@x
> **Note**
>
> If you have [two-factor authentication (2FA)](2fa/index.md) enabled, you must
> use a personal access token when logging in from the Docker CLI. 2FA is an
> optional, but more secure method of authentication.
@y
> **メモ**
>
> [２要素認証（two-factor authentication; 2FA）](2fa/index.md) を有効にしている場合、Docker CLI によりログインを行うには、個人用アクセストークンを用いる必要があります。
> 2FA の利用は任意ですが、その方がより安全な認証方式です。
@z

@x
## Modify existing tokens
@y
{: #modify-existing-tokens }
## 既存トークンの修正
@z

@x
You can rename, activate, deactivate, or delete a token as needed.
@y
トークンは必要に応じて、名称変更、有効無効化、削除を行うことができます。
@z

@x
1. Access your tokens under **[Account Settings > Security](https://hub.docker.com/settings/security){: target="_blank" rel="noopener" class="_"}**.
@y
1. **[Account Settings > Security](https://hub.docker.com/settings/security){: target="_blank" rel="noopener" class="_"}** の下にトークンを表示します。
@z

@x
2. Select a token and click **Delete** or **Edit**, or use the menu on
the far right of a token row to bring up the edit screen. You can also
select multiple tokens to delete at once.
@y
2. トークンを選択して **Delete** や **Edit** をクリックします。
   あるいはトークンが表示されている行の一番右にあるメニューを用いて、編集画面を開きます。
   複数のトークンを選択状態にして、一括で削除することもできます。
@z

@x
      ![Delete or Edit](images/hub-delete-edit-token.png){:width="700px"}
@y
      ![削除または編集](images/hub-delete-edit-token.png){:width="700px"}
@z

@x
   > **Note**
   >
   > You can also view the number of tokens that are activated and deactivated in the toolbar.
@y
   > **メモ**
   >
   > 有効または無効にしたトークン数は、ツールバーから参照することができます。
@z

@x
      ![Modify Token](images/hub-edit-token.png){:width="700px"}
@y
      ![トークンの修正](images/hub-edit-token.png){:width="700px"}
@z

@x
Docker provides a [Docker Hub CLI](https://github.com/docker/hub-tool#readme){: target="_blank" rel="noopener" class="_"} tool (currently experimental) and an API that allows you to interact with Docker Hub. Browse through the [Docker Hub API](/docker-hub/api/latest/){: target="_blank" rel="noopener" class="_"} documentation to explore the supported endpoints.
@y
Docker では [Docker Hub CLI](https://github.com/docker/hub-tool#readme){: target="_blank" rel="noopener" class="_"} ツール (現時点では試験的機能）と API を提供しています。
これらを用いて Docker Hub との連携を行うことができます。
ブラウザーから [Docker Hub API]({{ site.baseurl }}/docker-hub/api/latest/){: target="_blank" rel="noopener" class="_"} にあるドキュメントにアクセスして、サポートされているエンドポイントを調べてみてください。
@z
