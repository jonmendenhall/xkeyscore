.class public Lcom/neovisionaries/ws/client/WebSocketFactory;
.super Ljava/lang/Object;
.source "WebSocketFactory.java"


# instance fields
.field private mConnectionTimeout:I

.field private final mProxySettings:Lcom/neovisionaries/ws/client/ProxySettings;

.field private final mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

.field private mVerifyHostname:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mVerifyHostname:Z

    .line 42
    new-instance v0, Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-direct {v0}, Lcom/neovisionaries/ws/client/SocketFactorySettings;-><init>()V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    .line 43
    new-instance v0, Lcom/neovisionaries/ws/client/ProxySettings;

    invoke-direct {v0, p0}, Lcom/neovisionaries/ws/client/ProxySettings;-><init>(Lcom/neovisionaries/ws/client/WebSocketFactory;)V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mProxySettings:Lcom/neovisionaries/ws/client/ProxySettings;

    return-void
.end method

.method private createDirectRawSocket(Ljava/lang/String;IZI)Lcom/neovisionaries/ws/client/SocketConnector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 670
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-virtual {v0, p3}, Lcom/neovisionaries/ws/client/SocketFactorySettings;->selectSocketFactory(Z)Ljavax/net/SocketFactory;

    move-result-object p3

    .line 673
    invoke-virtual {p3}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p3

    .line 676
    new-instance v0, Lcom/neovisionaries/ws/client/Address;

    invoke-direct {v0, p1, p2}, Lcom/neovisionaries/ws/client/Address;-><init>(Ljava/lang/String;I)V

    .line 679
    new-instance p1, Lcom/neovisionaries/ws/client/SocketConnector;

    invoke-direct {p1, p3, v0, p4}, Lcom/neovisionaries/ws/client/SocketConnector;-><init>(Ljava/net/Socket;Lcom/neovisionaries/ws/client/Address;I)V

    iget-boolean p2, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mVerifyHostname:Z

    .line 680
    invoke-virtual {p1, p2}, Lcom/neovisionaries/ws/client/SocketConnector;->setVerifyHostname(Z)Lcom/neovisionaries/ws/client/SocketConnector;

    move-result-object p1

    return-object p1
.end method

.method private createProxiedRawSocket(Ljava/lang/String;IZI)Lcom/neovisionaries/ws/client/SocketConnector;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 642
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mProxySettings:Lcom/neovisionaries/ws/client/ProxySettings;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/ProxySettings;->getPort()I

    move-result v0

    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mProxySettings:Lcom/neovisionaries/ws/client/ProxySettings;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/ProxySettings;->isSecure()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/neovisionaries/ws/client/WebSocketFactory;->determinePort(IZ)I

    move-result v0

    .line 645
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mProxySettings:Lcom/neovisionaries/ws/client/ProxySettings;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/ProxySettings;->selectSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v1

    .line 648
    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v3

    .line 651
    new-instance v4, Lcom/neovisionaries/ws/client/Address;

    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mProxySettings:Lcom/neovisionaries/ws/client/ProxySettings;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/ProxySettings;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v0}, Lcom/neovisionaries/ws/client/Address;-><init>(Ljava/lang/String;I)V

    .line 654
    new-instance v6, Lcom/neovisionaries/ws/client/ProxyHandshaker;

    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mProxySettings:Lcom/neovisionaries/ws/client/ProxySettings;

    invoke-direct {v6, v3, p1, p2, v0}, Lcom/neovisionaries/ws/client/ProxyHandshaker;-><init>(Ljava/net/Socket;Ljava/lang/String;ILcom/neovisionaries/ws/client/ProxySettings;)V

    if-eqz p3, :cond_0

    .line 657
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    .line 658
    invoke-virtual {v0, p3}, Lcom/neovisionaries/ws/client/SocketFactorySettings;->selectSocketFactory(Z)Ljavax/net/SocketFactory;

    move-result-object p3

    check-cast p3, Ljavax/net/ssl/SSLSocketFactory;

    :goto_0
    move-object v7, p3

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    goto :goto_0

    .line 661
    :goto_1
    new-instance p3, Lcom/neovisionaries/ws/client/SocketConnector;

    move-object v2, p3

    move v5, p4

    move-object v8, p1

    move v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/neovisionaries/ws/client/SocketConnector;-><init>(Ljava/net/Socket;Lcom/neovisionaries/ws/client/Address;ILcom/neovisionaries/ws/client/ProxyHandshaker;Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/String;I)V

    iget-boolean p1, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mVerifyHostname:Z

    .line 663
    invoke-virtual {p3, p1}, Lcom/neovisionaries/ws/client/SocketConnector;->setVerifyHostname(Z)Lcom/neovisionaries/ws/client/SocketConnector;

    move-result-object p1

    return-object p1
.end method

.method private createRawSocket(Ljava/lang/String;IZI)Lcom/neovisionaries/ws/client/SocketConnector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 615
    invoke-static {p2, p3}, Lcom/neovisionaries/ws/client/WebSocketFactory;->determinePort(IZ)I

    move-result p2

    .line 618
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mProxySettings:Lcom/neovisionaries/ws/client/ProxySettings;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/ProxySettings;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 626
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/neovisionaries/ws/client/WebSocketFactory;->createProxiedRawSocket(Ljava/lang/String;IZI)Lcom/neovisionaries/ws/client/SocketConnector;

    move-result-object p1

    return-object p1

    .line 631
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/neovisionaries/ws/client/WebSocketFactory;->createDirectRawSocket(Ljava/lang/String;IZI)Lcom/neovisionaries/ws/client/SocketConnector;

    move-result-object p1

    return-object p1
.end method

.method private createSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 552
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketFactory;->isSecureConnectionRequired(Ljava/lang/String;)Z

    move-result v1

    if-eqz p3, :cond_1

    .line 555
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 561
    :cond_0
    invoke-static {p5}, Lcom/neovisionaries/ws/client/WebSocketFactory;->determinePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 564
    invoke-direct {p0, p3, p4, v1, p7}, Lcom/neovisionaries/ws/client/WebSocketFactory;->createRawSocket(Ljava/lang/String;IZI)Lcom/neovisionaries/ws/client/SocketConnector;

    move-result-object v7

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p6

    .line 567
    invoke-direct/range {v0 .. v7}, Lcom/neovisionaries/ws/client/WebSocketFactory;->createWebSocket(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/neovisionaries/ws/client/SocketConnector;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object p1

    return-object p1

    .line 557
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The host part is empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createWebSocket(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/neovisionaries/ws/client/SocketConnector;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 7

    if-ltz p4, :cond_0

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_0
    move-object v4, p3

    if-eqz p6, :cond_1

    .line 715
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "?"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    :cond_1
    move-object v5, p5

    .line 718
    new-instance p3, Lcom/neovisionaries/ws/client/WebSocket;

    move-object v0, p3

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/neovisionaries/ws/client/WebSocket;-><init>(Lcom/neovisionaries/ws/client/WebSocketFactory;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neovisionaries/ws/client/SocketConnector;)V

    return-object p3
.end method

.method private static determinePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    .line 594
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "/"

    .line 599
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 605
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "/"

    return-object p0
.end method

.method private static determinePort(IZ)I
    .locals 0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const/16 p0, 0x1bb

    return p0

    :cond_1
    const/16 p0, 0x50

    return p0
.end method

.method private static isSecureConnectionRequired(Ljava/lang/String;)Z
    .locals 3

    if-eqz p0, :cond_5

    .line 573
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "wss"

    .line 578
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "https"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "ws"

    .line 583
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "http"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 588
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0

    .line 575
    :cond_5
    :goto_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The scheme part is empty."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocketFactory;->getConnectionTimeout()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/neovisionaries/ws/client/WebSocketFactory;->createSocket(Ljava/lang/String;I)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/lang/String;I)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 319
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The given URI is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-gez p2, :cond_1

    .line 324
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The given timeout value is negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 327
    :cond_1
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/neovisionaries/ws/client/WebSocketFactory;->createSocket(Ljava/net/URI;I)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/URI;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocketFactory;->getConnectionTimeout()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/neovisionaries/ws/client/WebSocketFactory;->createSocket(Ljava/net/URI;I)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/URI;I)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 527
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The given URI is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-gez p2, :cond_1

    .line 532
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The given timeout value is negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 536
    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 537
    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    .line 538
    invoke-static {p1}, Lcom/neovisionaries/ws/client/Misc;->extractHost(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v3

    .line 539
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v4

    .line 540
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v5

    .line 541
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move v7, p2

    .line 543
    invoke-direct/range {v0 .. v7}, Lcom/neovisionaries/ws/client/WebSocketFactory;->createSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/URL;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocketFactory;->getConnectionTimeout()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/neovisionaries/ws/client/WebSocketFactory;->createSocket(Ljava/net/URL;I)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/URL;I)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 389
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The given URL is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-gez p2, :cond_1

    .line 394
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The given timeout value is negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 399
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/neovisionaries/ws/client/WebSocketFactory;->createSocket(Ljava/net/URI;I)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 403
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed to convert the given URL into a URI."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getConnectionTimeout()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mConnectionTimeout:I

    return v0
.end method

.method public getProxySettings()Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mProxySettings:Lcom/neovisionaries/ws/client/ProxySettings;

    return-object v0
.end method

.method public getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/SocketFactorySettings;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/SocketFactorySettings;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/SocketFactorySettings;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public getVerifyHostname()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mVerifyHostname:Z

    return v0
.end method

.method public setConnectionTimeout(I)Lcom/neovisionaries/ws/client/WebSocketFactory;
    .locals 1

    if-gez p1, :cond_0

    .line 195
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "timeout value cannot be negative."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 198
    :cond_0
    iput p1, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mConnectionTimeout:I

    return-object p0
.end method

.method public setSSLContext(Ljavax/net/ssl/SSLContext;)Lcom/neovisionaries/ws/client/WebSocketFactory;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/SocketFactorySettings;->setSSLContext(Ljavax/net/ssl/SSLContext;)V

    return-object p0
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/neovisionaries/ws/client/WebSocketFactory;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/SocketFactorySettings;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-object p0
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)Lcom/neovisionaries/ws/client/WebSocketFactory;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/SocketFactorySettings;->setSocketFactory(Ljavax/net/SocketFactory;)V

    return-object p0
.end method

.method public setVerifyHostname(Z)Lcom/neovisionaries/ws/client/WebSocketFactory;
    .locals 0

    .line 254
    iput-boolean p1, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mVerifyHostname:Z

    return-object p0
.end method
