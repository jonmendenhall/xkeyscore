.class Lcom/neovisionaries/ws/client/SocketFactorySettings;
.super Ljava/lang/Object;
.source "SocketFactorySettings.java"


# instance fields
.field private mSSLContext:Ljavax/net/ssl/SSLContext;

.field private mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private mSocketFactory:Ljavax/net/SocketFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketFactorySettings;->mSSLContext:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketFactorySettings;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketFactorySettings;->mSocketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public selectSocketFactory(Z)Ljavax/net/SocketFactory;
    .locals 0

    if-eqz p1, :cond_2

    .line 71
    iget-object p1, p0, Lcom/neovisionaries/ws/client/SocketFactorySettings;->mSSLContext:Ljavax/net/ssl/SSLContext;

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/neovisionaries/ws/client/SocketFactorySettings;->mSSLContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    return-object p1

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/neovisionaries/ws/client/SocketFactorySettings;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p1, :cond_1

    .line 78
    iget-object p1, p0, Lcom/neovisionaries/ws/client/SocketFactorySettings;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object p1

    .line 81
    :cond_1
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object p1

    return-object p1

    .line 84
    :cond_2
    iget-object p1, p0, Lcom/neovisionaries/ws/client/SocketFactorySettings;->mSocketFactory:Ljavax/net/SocketFactory;

    if-eqz p1, :cond_3

    .line 86
    iget-object p1, p0, Lcom/neovisionaries/ws/client/SocketFactorySettings;->mSocketFactory:Ljavax/net/SocketFactory;

    return-object p1

    .line 89
    :cond_3
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object p1

    return-object p1
.end method

.method public setSSLContext(Ljavax/net/ssl/SSLContext;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/neovisionaries/ws/client/SocketFactorySettings;->mSSLContext:Ljavax/net/ssl/SSLContext;

    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/neovisionaries/ws/client/SocketFactorySettings;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/neovisionaries/ws/client/SocketFactorySettings;->mSocketFactory:Ljavax/net/SocketFactory;

    return-void
.end method
