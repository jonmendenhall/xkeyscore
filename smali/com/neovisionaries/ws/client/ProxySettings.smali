.class public Lcom/neovisionaries/ws/client/ProxySettings;
.super Ljava/lang/Object;
.source "ProxySettings.java"


# instance fields
.field private final mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHost:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPort:I

.field private mSecure:Z

.field private final mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

.field private final mWebSocketFactory:Lcom/neovisionaries/ws/client/WebSocketFactory;


# direct methods
.method constructor <init>(Lcom/neovisionaries/ws/client/WebSocketFactory;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mWebSocketFactory:Lcom/neovisionaries/ws/client/WebSocketFactory;

    .line 96
    new-instance p1, Ljava/util/TreeMap;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {p1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mHeaders:Ljava/util/Map;

    .line 97
    new-instance p1, Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-direct {p1}, Lcom/neovisionaries/ws/client/SocketFactorySettings;-><init>()V

    iput-object p1, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    .line 99
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/ProxySettings;->reset()Lcom/neovisionaries/ws/client/ProxySettings;

    return-void
.end method

.method private setByScheme(Ljava/lang/String;)V
    .locals 1

    const-string v0, "http"

    .line 508
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 510
    iput-boolean p1, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mSecure:Z

    goto :goto_0

    :cond_0
    const-string v0, "https"

    .line 512
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 514
    iput-boolean p1, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mSecure:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private setByUserInfo(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, ":"

    const/4 v1, 0x2

    .line 526
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 530
    array-length v0, p1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return-void

    .line 533
    :pswitch_0
    aget-object v0, p1, v1

    const/4 v1, 0x1

    .line 534
    aget-object p1, p1, v1

    goto :goto_0

    .line 538
    :pswitch_1
    aget-object v0, p1, v1

    const/4 p1, 0x0

    .line 546
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 551
    :cond_1
    iput-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mId:Ljava/lang/String;

    .line 552
    iput-object p1, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mPassword:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 0

    .line 497
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ProxySettings;->setByScheme(Ljava/lang/String;)V

    .line 498
    invoke-direct {p0, p2}, Lcom/neovisionaries/ws/client/ProxySettings;->setByUserInfo(Ljava/lang/String;)V

    .line 499
    iput-object p3, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mHost:Ljava/lang/String;

    .line 500
    iput p4, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mPort:I

    return-object p0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 2

    if-eqz p1, :cond_2

    .line 586
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 595
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 596
    iget-object v1, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mHeaders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 566
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 260
    iget v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mPort:I

    return v0
.end method

.method public getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/SocketFactorySettings;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/SocketFactorySettings;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/SocketFactorySettings;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public getWebSocketFactory()Lcom/neovisionaries/ws/client/WebSocketFactory;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mWebSocketFactory:Lcom/neovisionaries/ws/client/WebSocketFactory;

    return-object v0
.end method

.method public isSecure()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mSecure:Z

    return v0
.end method

.method public reset()Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 2

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mSecure:Z

    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mHost:Ljava/lang/String;

    const/4 v1, -0x1

    .line 167
    iput v1, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mPort:I

    .line 168
    iput-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mId:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mPassword:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method selectSocketFactory()Ljavax/net/SocketFactory;
    .locals 2

    .line 696
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    iget-boolean v1, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mSecure:Z

    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/SocketFactorySettings;->selectSocketFactory(Z)Ljavax/net/SocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public setCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 0

    .line 379
    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/ProxySettings;->setId(Ljava/lang/String;)Lcom/neovisionaries/ws/client/ProxySettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/neovisionaries/ws/client/ProxySettings;->setPassword(Ljava/lang/String;)Lcom/neovisionaries/ws/client/ProxySettings;

    move-result-object p1

    return-object p1
.end method

.method public setHost(Ljava/lang/String;)Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mHost:Ljava/lang/String;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method public setPort(I)Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 0

    .line 281
    iput p1, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mPort:I

    return-object p0
.end method

.method public setSSLContext(Ljavax/net/ssl/SSLContext;)Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/SocketFactorySettings;->setSSLContext(Ljavax/net/ssl/SSLContext;)V

    return-object p0
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/SocketFactorySettings;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-object p0
.end method

.method public setSecure(Z)Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 0

    .line 201
    iput-boolean p1, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mSecure:Z

    return-object p0
.end method

.method public setServer(Ljava/lang/String;)Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    .line 404
    :cond_0
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/ProxySettings;->setServer(Ljava/net/URI;)Lcom/neovisionaries/ws/client/ProxySettings;

    move-result-object p1

    return-object p1
.end method

.method public setServer(Ljava/net/URI;)Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 486
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 489
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result p1

    .line 491
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/neovisionaries/ws/client/ProxySettings;->setServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/neovisionaries/ws/client/ProxySettings;

    move-result-object p1

    return-object p1
.end method

.method public setServer(Ljava/net/URL;)Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 431
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/ProxySettings;->setServer(Ljava/net/URI;)Lcom/neovisionaries/ws/client/ProxySettings;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 435
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/SocketFactorySettings;->setSocketFactory(Ljavax/net/SocketFactory;)V

    return-object p0
.end method
