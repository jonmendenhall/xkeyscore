.class Lcom/neovisionaries/ws/client/InsufficientDataException;
.super Lcom/neovisionaries/ws/client/WebSocketException;
.source "InsufficientDataException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mReadByteCount:I

.field private final mRequestedByteCount:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 31
    sget-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->INSUFFICENT_DATA:Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "The end of the stream has been reached unexpectedly."

    invoke-direct {p0, v0, v1}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    .line 33
    iput p1, p0, Lcom/neovisionaries/ws/client/InsufficientDataException;->mRequestedByteCount:I

    .line 34
    iput p2, p0, Lcom/neovisionaries/ws/client/InsufficientDataException;->mReadByteCount:I

    return-void
.end method


# virtual methods
.method public getReadByteCount()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/neovisionaries/ws/client/InsufficientDataException;->mReadByteCount:I

    return v0
.end method

.method public getRequestedByteCount()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/neovisionaries/ws/client/InsufficientDataException;->mRequestedByteCount:I

    return v0
.end method
