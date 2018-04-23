.class final Lcom/amazonaws/http/HttpClientFactory$LocationHeaderNotRequiredRedirectHandler;
.super Lorg/apache/http/impl/client/DefaultRedirectHandler;
.source "HttpClientFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/http/HttpClientFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocationHeaderNotRequiredRedirectHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/http/HttpClientFactory$1;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/amazonaws/http/HttpClientFactory$LocationHeaderNotRequiredRedirectHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 2

    .line 142
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const-string v1, "location"

    .line 143
    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0x12d

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 152
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRedirectHandler;->isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result p1

    return p1
.end method
