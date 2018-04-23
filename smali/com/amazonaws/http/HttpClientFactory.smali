.class Lcom/amazonaws/http/HttpClientFactory;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/http/HttpClientFactory$LocationHeaderNotRequiredRedirectHandler;
    }
.end annotation


# static fields
.field private static final HTTPS_PORT:I = 0x1bb

.field private static final HTTP_PORT:I = 0x50


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createHttpClient(Lcom/amazonaws/ClientConfiguration;)Lorg/apache/http/client/HttpClient;
    .locals 8

    .line 58
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 59
    invoke-virtual {p1}, Lcom/amazonaws/ClientConfiguration;->getConnectionTimeout()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 60
    invoke-virtual {p1}, Lcom/amazonaws/ClientConfiguration;->getSocketTimeout()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/4 v1, 0x1

    .line 61
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 62
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 64
    invoke-virtual {p1}, Lcom/amazonaws/ClientConfiguration;->getSocketBufferSizeHints()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 65
    invoke-virtual {p1}, Lcom/amazonaws/ClientConfiguration;->getSocketBufferSizeHints()[I

    move-result-object v3

    aget v1, v3, v1

    if-gtz v2, :cond_0

    if-lez v1, :cond_1

    .line 68
    :cond_0
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 67
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 72
    :cond_1
    invoke-static {p1, v0}, Lcom/amazonaws/http/ConnectionManagerFactory;->createThreadSafeClientConnManager(Lcom/amazonaws/ClientConfiguration;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    move-result-object v1

    .line 73
    new-instance v2, Lcom/amazonaws/http/impl/client/SdkHttpClient;

    invoke-direct {v2, v1, v0}, Lcom/amazonaws/http/impl/client/SdkHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 74
    sget-object v3, Lcom/amazonaws/http/impl/client/HttpRequestNoRetryHandler;->Singleton:Lcom/amazonaws/http/impl/client/HttpRequestNoRetryHandler;

    invoke-virtual {v2, v3}, Lcom/amazonaws/http/impl/client/SdkHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 75
    new-instance v3, Lcom/amazonaws/http/HttpClientFactory$LocationHeaderNotRequiredRedirectHandler;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/amazonaws/http/HttpClientFactory$LocationHeaderNotRequiredRedirectHandler;-><init>(Lcom/amazonaws/http/HttpClientFactory$1;)V

    invoke-virtual {v2, v3}, Lcom/amazonaws/http/impl/client/SdkHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 77
    invoke-virtual {p1}, Lcom/amazonaws/ClientConfiguration;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 78
    invoke-virtual {p1}, Lcom/amazonaws/ClientConfiguration;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/apache/http/conn/params/ConnRouteParams;->setLocalAddress(Lorg/apache/http/params/HttpParams;Ljava/net/InetAddress;)V

    .line 81
    :cond_2
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v0, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 82
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    .line 83
    sget-object v4, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 84
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    const/16 v6, 0x1bb

    invoke-direct {v4, v5, v3, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 85
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    .line 86
    invoke-virtual {v1, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 87
    invoke-virtual {v1, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 106
    invoke-virtual {p1}, Lcom/amazonaws/ClientConfiguration;->getProxyHost()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {p1}, Lcom/amazonaws/ClientConfiguration;->getProxyPort()I

    move-result v1

    if-eqz v0, :cond_3

    if-lez v1, :cond_3

    .line 109
    sget-object v3, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Configuring Proxy. Proxy Host: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Proxy Port: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 111
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 112
    invoke-virtual {v2}, Lcom/amazonaws/http/impl/client/SdkHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.route.default-proxy"

    invoke-interface {v4, v5, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 114
    invoke-virtual {p1}, Lcom/amazonaws/ClientConfiguration;->getProxyUsername()Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-virtual {p1}, Lcom/amazonaws/ClientConfiguration;->getProxyPassword()Ljava/lang/String;

    move-result-object v4

    .line 116
    invoke-virtual {p1}, Lcom/amazonaws/ClientConfiguration;->getProxyDomain()Ljava/lang/String;

    move-result-object v5

    .line 117
    invoke-virtual {p1}, Lcom/amazonaws/ClientConfiguration;->getProxyWorkstation()Ljava/lang/String;

    move-result-object p1

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 120
    invoke-virtual {v2}, Lcom/amazonaws/http/impl/client/SdkHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v6

    new-instance v7, Lorg/apache/http/auth/AuthScope;

    invoke-direct {v7, v0, v1}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/apache/http/auth/NTCredentials;

    invoke-direct {v0, v3, v4, p1, v5}, Lorg/apache/http/auth/NTCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7, v0}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    :cond_3
    return-object v2
.end method
