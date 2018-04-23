.class Lcom/amazonaws/auth/DecodedStreamBuffer;
.super Ljava/lang/Object;
.source "DecodedStreamBuffer.java"


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private bufferArray:[B

.field private bufferSizeOverflow:Z

.field private byteBuffered:I

.field private maxBufferSize:I

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/amazonaws/auth/DecodedStreamBuffer;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/auth/DecodedStreamBuffer;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->pos:I

    .line 33
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->bufferArray:[B

    .line 34
    iput p1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->maxBufferSize:I

    return-void
.end method


# virtual methods
.method public buffer(B)V
    .locals 3

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->pos:I

    .line 39
    iget v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->byteBuffered:I

    iget v1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->maxBufferSize:I

    if-lt v0, v1, :cond_1

    .line 40
    sget-object p1, Lcom/amazonaws/auth/DecodedStreamBuffer;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 41
    sget-object p1, Lcom/amazonaws/auth/DecodedStreamBuffer;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buffer size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->maxBufferSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has been exceeded and the input stream will not be repeatable. Freeing buffer memory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->bufferSizeOverflow:Z

    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->bufferArray:[B

    iget v1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->byteBuffered:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->byteBuffered:I

    aput-byte p1, v0, v1

    :goto_0
    return-void
.end method

.method public buffer([BII)V
    .locals 2

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->pos:I

    .line 53
    iget v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->byteBuffered:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->maxBufferSize:I

    if-le v0, v1, :cond_1

    .line 54
    sget-object p1, Lcom/amazonaws/auth/DecodedStreamBuffer;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    sget-object p1, Lcom/amazonaws/auth/DecodedStreamBuffer;->log:Lorg/apache/commons/logging/Log;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Buffer size "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->maxBufferSize:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " has been exceeded and the input stream will not be repeatable. Freeing buffer memory"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->bufferSizeOverflow:Z

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->bufferArray:[B

    iget v1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->byteBuffered:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget p1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->byteBuffered:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->byteBuffered:I

    :goto_0
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 68
    iget v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->pos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->pos:I

    iget v1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->byteBuffered:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()B
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->bufferArray:[B

    iget v1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->pos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public startReadBuffer()V
    .locals 3

    .line 76
    iget-boolean v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->bufferSizeOverflow:Z

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The input stream is not repeatable since the buffer size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->maxBufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " has been exceeded."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->pos:I

    return-void
.end method
