.class Lcom/neovisionaries/ws/client/WebSocketInputStream;
.super Ljava/io/FilterInputStream;
.source "WebSocketInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private readPayload(JZ[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    long-to-int v0, p1

    .line 202
    :try_start_0
    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    array-length p1, v0

    invoke-virtual {p0, v0, p1}, Lcom/neovisionaries/ws/client/WebSocketInputStream;->readBytes([BI)V

    if-eqz p3, :cond_1

    .line 221
    invoke-static {p4, v0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->mask([B[B)[B

    :cond_1
    return-object v0

    :catch_0
    move-exception p3

    .line 208
    invoke-direct {p0, p1, p2}, Lcom/neovisionaries/ws/client/WebSocketInputStream;->skipQuietly(J)V

    .line 209
    new-instance p1, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object p2, Lcom/neovisionaries/ws/client/WebSocketError;->INSUFFICIENT_MEMORY_FOR_PAYLOAD:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OutOfMemoryError occurred during a trial to allocate a memory area for a frame\'s payload: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p3}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p2, p4, p3}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private skipQuietly(J)V
    .locals 0

    .line 182
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/neovisionaries/ws/client/WebSocketInputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method readBytes([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    sub-int v1, p2, v0

    .line 165
    invoke-virtual {p0, p1, v0, v1}, Lcom/neovisionaries/ws/client/WebSocketInputStream;->read([BII)I

    move-result v1

    if-gtz v1, :cond_0

    .line 170
    new-instance p1, Lcom/neovisionaries/ws/client/InsufficientDataException;

    invoke-direct {p1, p2, v0}, Lcom/neovisionaries/ws/client/InsufficientDataException;-><init>(II)V

    throw p1

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public readFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/16 v2, 0x8

    .line 41
    new-array v3, v2, [B

    const/4 v4, 0x2

    .line 46
    :try_start_0
    invoke-virtual {v1, v3, v4}, Lcom/neovisionaries/ws/client/WebSocketInputStream;->readBytes([BI)V
    :try_end_0
    .catch Lcom/neovisionaries/ws/client/InsufficientDataException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    .line 64
    aget-byte v6, v3, v5

    and-int/lit16 v6, v6, 0x80

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v5

    .line 67
    :goto_0
    aget-byte v8, v3, v5

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_1

    move v8, v7

    goto :goto_1

    :cond_1
    move v8, v5

    .line 68
    :goto_1
    aget-byte v9, v3, v5

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_2

    move v9, v7

    goto :goto_2

    :cond_2
    move v9, v5

    .line 69
    :goto_2
    aget-byte v10, v3, v5

    and-int/lit8 v10, v10, 0x10

    if-eqz v10, :cond_3

    move v10, v7

    goto :goto_3

    :cond_3
    move v10, v5

    .line 72
    :goto_3
    aget-byte v11, v3, v5

    and-int/lit8 v11, v11, 0xf

    .line 79
    aget-byte v12, v3, v7

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_4

    move v12, v7

    goto :goto_4

    :cond_4
    move v12, v5

    .line 82
    :goto_4
    aget-byte v13, v3, v7

    and-int/lit8 v13, v13, 0x7f

    int-to-long v13, v13

    const-wide/16 v15, 0x7e

    cmp-long v15, v13, v15

    const/4 v7, 0x4

    if-nez v15, :cond_5

    .line 88
    invoke-virtual {v1, v3, v4}, Lcom/neovisionaries/ws/client/WebSocketInputStream;->readBytes([BI)V

    .line 91
    aget-byte v4, v3, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v2, v4, 0x8

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-long v13, v2

    goto :goto_5

    :cond_5
    const-wide/16 v15, 0x7f

    cmp-long v15, v13, v15

    if-nez v15, :cond_7

    .line 98
    invoke-virtual {v1, v3, v2}, Lcom/neovisionaries/ws/client/WebSocketInputStream;->readBytes([BI)V

    .line 104
    aget-byte v13, v3, v5

    and-int/lit16 v13, v13, 0x80

    if-eqz v13, :cond_6

    .line 107
    new-instance v2, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v3, Lcom/neovisionaries/ws/client/WebSocketError;->INVALID_PAYLOAD_LENGTH:Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v4, "The payload length of a frame is invalid."

    invoke-direct {v2, v3, v4}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_6
    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x38

    const/4 v13, 0x1

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x30

    or-int/2addr v5, v13

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x28

    or-int/2addr v4, v5

    const/4 v5, 0x3

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x20

    or-int/2addr v4, v5

    aget-byte v5, v3, v7

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    const/4 v5, 0x5

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x6

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v2, v5, 0x8

    or-int/2addr v2, v4

    const/4 v4, 0x7

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-long v13, v2

    :cond_7
    :goto_5
    const/4 v2, 0x0

    if-eqz v12, :cond_8

    .line 129
    new-array v2, v7, [B

    .line 130
    invoke-virtual {v1, v2, v7}, Lcom/neovisionaries/ws/client/WebSocketInputStream;->readBytes([BI)V

    :cond_8
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v3, v13

    if-gez v3, :cond_9

    .line 137
    invoke-direct {v1, v13, v14}, Lcom/neovisionaries/ws/client/WebSocketInputStream;->skipQuietly(J)V

    .line 138
    new-instance v2, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v3, Lcom/neovisionaries/ws/client/WebSocketError;->TOO_LONG_PAYLOAD:Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v4, "The payload length of a frame exceeds the maximum array size in Java."

    invoke-direct {v2, v3, v4}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    throw v2

    .line 144
    :cond_9
    invoke-direct {v1, v13, v14, v12, v2}, Lcom/neovisionaries/ws/client/WebSocketInputStream;->readPayload(JZ[B)[B

    move-result-object v2

    .line 147
    new-instance v3, Lcom/neovisionaries/ws/client/WebSocketFrame;

    invoke-direct {v3}, Lcom/neovisionaries/ws/client/WebSocketFrame;-><init>()V

    .line 148
    invoke-virtual {v3, v6}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setFin(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v3

    .line 149
    invoke-virtual {v3, v8}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setRsv1(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v3

    .line 150
    invoke-virtual {v3, v9}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setRsv2(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v3

    .line 151
    invoke-virtual {v3, v10}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setRsv3(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v3

    .line 152
    invoke-virtual {v3, v11}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setOpcode(I)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v3

    .line 153
    invoke-virtual {v3, v12}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setMask(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v3

    .line 154
    invoke-virtual {v3, v2}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setPayload([B)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/InsufficientDataException;->getReadByteCount()I

    move-result v2

    if-nez v2, :cond_a

    .line 54
    new-instance v2, Lcom/neovisionaries/ws/client/NoMoreFrameException;

    invoke-direct {v2}, Lcom/neovisionaries/ws/client/NoMoreFrameException;-><init>()V

    throw v2

    .line 59
    :cond_a
    throw v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 34
    invoke-static {p0, v0}, Lcom/neovisionaries/ws/client/Misc;->readLine(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
