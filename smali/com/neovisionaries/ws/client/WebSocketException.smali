.class public Lcom/neovisionaries/ws/client/WebSocketException;
.super Ljava/lang/Exception;
.source "WebSocketException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mError:Lcom/neovisionaries/ws/client/WebSocketError;


# direct methods
.method public constructor <init>(Lcom/neovisionaries/ws/client/WebSocketError;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/neovisionaries/ws/client/WebSocketException;->mError:Lcom/neovisionaries/ws/client/WebSocketError;

    return-void
.end method

.method public constructor <init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/neovisionaries/ws/client/WebSocketException;->mError:Lcom/neovisionaries/ws/client/WebSocketError;

    return-void
.end method

.method public constructor <init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 52
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    iput-object p1, p0, Lcom/neovisionaries/ws/client/WebSocketException;->mError:Lcom/neovisionaries/ws/client/WebSocketError;

    return-void
.end method

.method public constructor <init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/Throwable;)V
    .locals 0

    .line 44
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 46
    iput-object p1, p0, Lcom/neovisionaries/ws/client/WebSocketException;->mError:Lcom/neovisionaries/ws/client/WebSocketError;

    return-void
.end method


# virtual methods
.method public getError()Lcom/neovisionaries/ws/client/WebSocketError;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketException;->mError:Lcom/neovisionaries/ws/client/WebSocketError;

    return-object v0
.end method
