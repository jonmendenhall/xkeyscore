.class public Lcom/amazonaws/http/conn/ClientConnectionManagerFactory;
.super Ljava/lang/Object;
.source "ClientConnectionManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/http/conn/ClientConnectionManagerFactory$Handler;
    }
.end annotation


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/amazonaws/http/conn/ClientConnectionManagerFactory;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/conn/ClientConnectionManagerFactory;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/apache/commons/logging/Log;
    .locals 1

    .line 31
    sget-object v0, Lcom/amazonaws/http/conn/ClientConnectionManagerFactory;->log:Lorg/apache/commons/logging/Log;

    return-object v0
.end method

.method public static wrap(Lorg/apache/http/conn/ClientConnectionManager;)Lorg/apache/http/conn/ClientConnectionManager;
    .locals 3

    .line 41
    instance-of v0, p0, Lcom/amazonaws/http/conn/Wrapped;

    if-eqz v0, :cond_0

    .line 42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_0
    const/4 v0, 0x2

    .line 43
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/apache/http/conn/ClientConnectionManager;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/amazonaws/http/conn/Wrapped;

    aput-object v2, v0, v1

    .line 47
    const-class v1, Lcom/amazonaws/http/conn/ClientConnectionManagerFactory;

    .line 49
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-instance v2, Lcom/amazonaws/http/conn/ClientConnectionManagerFactory$Handler;

    invoke-direct {v2, p0}, Lcom/amazonaws/http/conn/ClientConnectionManagerFactory$Handler;-><init>(Lorg/apache/http/conn/ClientConnectionManager;)V

    .line 47
    invoke-static {v1, v0, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/http/conn/ClientConnectionManager;

    return-object p0
.end method
