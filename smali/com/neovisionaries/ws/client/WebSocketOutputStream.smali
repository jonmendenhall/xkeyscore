.class Lcom/neovisionaries/ws/client/WebSocketOutputStream;
.super Ljava/io/FilterOutputStream;
.source "WebSocketOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method private writeFrame0(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getFin()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x80

    goto :goto_0

    :cond_0
    move v0, v1

    .line 61
    :goto_0
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getRsv1()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x40

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    or-int/2addr v0, v2

    .line 62
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getRsv2()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    or-int/2addr v0, v2

    .line 63
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getRsv3()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v1, 0x10

    :cond_3
    or-int/2addr v0, v1

    .line 64
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getOpcode()I

    move-result p1

    and-int/lit8 p1, p1, 0xf

    or-int/2addr p1, v0

    .line 66
    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->write(I)V

    return-void
.end method

.method private writeFrame1(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getPayloadLength()I

    move-result p1

    const/16 v0, 0x7d

    if-gt p1, v0, :cond_0

    const/16 v0, 0x80

    or-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const v0, 0xffff

    if-gt p1, v0, :cond_1

    const/16 p1, 0xfe

    goto :goto_0

    :cond_1
    const/16 p1, 0xff

    .line 90
    :goto_0
    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->write(I)V

    return-void
.end method

.method private writeFrameExtendedPayloadLength(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getPayloadLength()I

    move-result p1

    const/16 v0, 0x7d

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    const v0, 0xffff

    if-gt p1, v0, :cond_1

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 106
    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->write(I)V

    and-int/lit16 p1, p1, 0xff

    .line 107
    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->write(I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->write(I)V

    .line 114
    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->write(I)V

    .line 115
    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->write(I)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 117
    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 118
    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 119
    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->write(I)V

    and-int/lit16 p1, p1, 0xff

    .line 120
    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->write(I)V

    return-void
.end method

.method private writeFramePayload(Lcom/neovisionaries/ws/client/WebSocketFrame;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getPayload()[B

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 133
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 136
    aget-byte v1, p1, v0

    rem-int/lit8 v2, v0, 0x4

    aget-byte v2, p2, v2

    xor-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 139
    invoke-virtual {p0, v1}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public write(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->writeFrame0(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->writeFrame1(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->writeFrameExtendedPayloadLength(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    const/4 v0, 0x4

    .line 48
    invoke-static {v0}, Lcom/neovisionaries/ws/client/Misc;->nextBytes(I)[B

    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->write([B)V

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->writeFramePayload(Lcom/neovisionaries/ws/client/WebSocketFrame;[B)V

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-static {p1}, Lcom/neovisionaries/ws/client/Misc;->getBytesUTF8(Ljava/lang/String;)[B

    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->write([B)V

    return-void
.end method
