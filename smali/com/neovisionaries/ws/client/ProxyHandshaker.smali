.class Lcom/neovisionaries/ws/client/ProxyHandshaker;
.super Ljava/lang/Object;
.source "ProxyHandshaker.java"


# static fields
.field private static final RN:Ljava/lang/String; = "\r\n"


# instance fields
.field private final mHost:Ljava/lang/String;

.field private final mPort:I

.field private final mSettings:Lcom/neovisionaries/ws/client/ProxySettings;

.field private final mSocket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Ljava/lang/String;ILcom/neovisionaries/ws/client/ProxySettings;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/neovisionaries/ws/client/ProxyHandshaker;->mSocket:Ljava/net/Socket;

    .line 40
    iput-object p2, p0, Lcom/neovisionaries/ws/client/ProxyHandshaker;->mHost:Ljava/lang/String;

    .line 41
    iput p3, p0, Lcom/neovisionaries/ws/client/ProxyHandshaker;->mPort:I

    .line 42
    iput-object p4, p0, Lcom/neovisionaries/ws/client/ProxyHandshaker;->mSettings:Lcom/neovisionaries/ws/client/ProxySettings;

    return-void
.end method

.method private addHeaders(Ljava/lang/StringBuilder;)V
    .locals 5

    .line 97
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxyHandshaker;->mSettings:Lcom/neovisionaries/ws/client/ProxySettings;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/ProxySettings;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 100
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 103
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, ""

    .line 110
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private addProxyAuthorization(Ljava/lang/StringBuilder;)V
    .locals 5

    .line 118
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxyHandshaker;->mSettings:Lcom/neovisionaries/ws/client/ProxySettings;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/ProxySettings;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/ProxyHandshaker;->mSettings:Lcom/neovisionaries/ws/client/ProxySettings;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/ProxySettings;->getPassword()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    const-string v2, "%s:%s"

    const/4 v3, 0x2

    .line 133
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Proxy-Authorization: Basic "

    .line 137
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-static {v0}, Lcom/neovisionaries/ws/client/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private buildRequest()Ljava/lang/String;
    .locals 4

    const-string v0, "%s:%d"

    const/4 v1, 0x2

    .line 75
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/neovisionaries/ws/client/ProxyHandshaker;->mHost:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/neovisionaries/ws/client/ProxyHandshaker;->mPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONNECT "

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " HTTP/1.1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Host: "

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {p0, v1}, Lcom/neovisionaries/ws/client/ProxyHandshaker;->addHeaders(Ljava/lang/StringBuilder;)V

    .line 87
    invoke-direct {p0, v1}, Lcom/neovisionaries/ws/client/ProxyHandshaker;->addProxyAuthorization(Ljava/lang/StringBuilder;)V

    const-string v0, "\r\n"

    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readStatusLine(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 160
    invoke-static {p1, v0}, Lcom/neovisionaries/ws/client/Misc;->readLine(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, " +"

    const/4 v1, 0x3

    .line 169
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 171
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 173
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The status line in the response from the proxy server is badly formatted. The status line is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v1, "200"

    const/4 v2, 0x1

    .line 179
    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 181
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The status code in the response from the proxy server is not \'200 Connection established\'. The status line is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void

    .line 165
    :cond_3
    :goto_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The response from the proxy server does not contain a status line."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private receiveResponse()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxyHandshaker;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 149
    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ProxyHandshaker;->readStatusLine(Ljava/io/InputStream;)V

    .line 153
    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ProxyHandshaker;->skipHeaders(Ljava/io/InputStream;)V

    return-void
.end method

.method private sendRequest()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ProxyHandshaker;->buildRequest()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/neovisionaries/ws/client/Misc;->getBytesUTF8(Ljava/lang/String;)[B

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/neovisionaries/ws/client/ProxyHandshaker;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 68
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 69
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private skipHeaders(Ljava/io/InputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    move v1, v0

    .line 198
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 204
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "The end of the stream from the proxy server was reached unexpectedly."

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 v4, 0xa

    if-ne v2, v4, :cond_2

    if-nez v1, :cond_0

    return-void

    :cond_2
    const/16 v5, 0xd

    if-eq v2, v5, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    :cond_3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 237
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "The end of the stream from the proxy server was reached unexpectedly after a carriage return."

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-eq v2, v4, :cond_5

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_5
    if-nez v1, :cond_0

    return-void
.end method


# virtual methods
.method getProxiedHostname()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxyHandshaker;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public perform()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ProxyHandshaker;->sendRequest()V

    .line 52
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ProxyHandshaker;->receiveResponse()V

    return-void
.end method
