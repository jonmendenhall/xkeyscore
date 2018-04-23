.class Lcom/amazonaws/http/ConnectionManagerFactory;
.super Ljava/lang/Object;
.source "ConnectionManagerFactory.java"


# static fields
.field private static final DEFAULT_HTTPS_PORT:I = 0x1bb

.field private static final DEFAULT_HTTP_PORT:I = 0x50


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createThreadSafeClientConnManager(Lcom/amazonaws/ClientConfiguration;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    .locals 6

    .line 40
    new-instance v0, Lorg/apache/http/conn/params/ConnPerRouteBean;

    .line 41
    invoke-virtual {p0}, Lcom/amazonaws/ClientConfiguration;->getMaxConnections()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    .line 40
    invoke-static {p1, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 42
    invoke-virtual {p0}, Lcom/amazonaws/ClientConfiguration;->getMaxConnections()I

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 44
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    .line 45
    sget-object v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 47
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 48
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 49
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 51
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, p1, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 53
    invoke-virtual {p0}, Lcom/amazonaws/ClientConfiguration;->useReaper()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 54
    invoke-static {v0}, Lcom/amazonaws/http/IdleConnectionReaper;->registerConnectionManager(Lorg/apache/http/conn/ClientConnectionManager;)Z

    :cond_0
    return-object v0
.end method
