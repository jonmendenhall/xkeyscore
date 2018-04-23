.class public final Lcom/amazonaws/http/impl/client/HttpRequestNoRetryHandler;
.super Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
.source "HttpRequestNoRetryHandler.java"


# static fields
.field public static final Singleton:Lcom/amazonaws/http/impl/client/HttpRequestNoRetryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/amazonaws/http/impl/client/HttpRequestNoRetryHandler;

    invoke-direct {v0}, Lcom/amazonaws/http/impl/client/HttpRequestNoRetryHandler;-><init>()V

    sput-object v0, Lcom/amazonaws/http/impl/client/HttpRequestNoRetryHandler;->Singleton:Lcom/amazonaws/http/impl/client/HttpRequestNoRetryHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
