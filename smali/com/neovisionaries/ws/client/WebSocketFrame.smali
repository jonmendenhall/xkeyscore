.class public Lcom/neovisionaries/ws/client/WebSocketFrame;
.super Ljava/lang/Object;
.source "WebSocketFrame.java"


# instance fields
.field private mFin:Z

.field private mMask:Z

.field private mOpcode:I

.field private mPayload:[B

.field private mRsv1:Z

.field private mRsv2:Z

.field private mRsv3:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private appendPayloadBinary(Ljava/lang/StringBuilder;)V
    .locals 6

    .line 742
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->appendPayloadCommon(Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 748
    :goto_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mPayload:[B

    array-length v2, v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    const-string v2, "%02X "

    .line 750
    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0xff

    iget-object v5, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mPayload:[B

    aget-byte v5, v5, v1

    and-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 753
    :cond_1
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mPayload:[B

    array-length v0, v0

    if-eqz v0, :cond_2

    .line 756
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    return-void
.end method

.method private appendPayloadClose(Ljava/lang/StringBuilder;)V
    .locals 2

    const-string v0, ",CloseCode="

    .line 724
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getCloseCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",Reason="

    .line 725
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getCloseReason()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "null"

    .line 731
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "\""

    .line 735
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method private appendPayloadCommon(Ljava/lang/StringBuilder;)Z
    .locals 2

    const-string v0, ",Payload="

    .line 682
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mPayload:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "null"

    .line 686
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v1

    .line 692
    :cond_0
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mRsv1:Z

    if-eqz v0, :cond_1

    const-string v0, "compressed"

    .line 696
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private appendPayloadText(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 709
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->appendPayloadCommon(Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "\""

    .line 715
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getPayloadText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    .line 717
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static compress([BLcom/neovisionaries/ws/client/PerMessageCompressionExtension;)[B
    .locals 0

    .line 1134
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;->compress([B)[B

    move-result-object p1
    :try_end_0
    .catch Lcom/neovisionaries/ws/client/WebSocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p0
.end method

.method static compressFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;)Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 1072
    :cond_0
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->isTextFrame()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1073
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->isBinaryFrame()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    .line 1080
    :cond_1
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getFin()Z

    move-result v0

    if-nez v0, :cond_2

    return-object p0

    .line 1089
    :cond_2
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getRsv1()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p0

    .line 1099
    :cond_3
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getPayload()[B

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1102
    array-length v1, v0

    if-nez v1, :cond_4

    goto :goto_0

    .line 1109
    :cond_4
    invoke-static {v0, p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->compress([BLcom/neovisionaries/ws/client/PerMessageCompressionExtension;)[B

    move-result-object p1

    .line 1113
    array-length v0, v0

    array-length v1, p1

    if-gt v0, v1, :cond_5

    return-object p0

    .line 1120
    :cond_5
    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setPayload([B)Lcom/neovisionaries/ws/client/WebSocketFrame;

    const/4 p1, 0x1

    .line 1123
    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setRsv1(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;

    return-object p0

    :cond_6
    :goto_0
    return-object p0
.end method

.method public static createBinaryFrame([B)Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 2

    .line 846
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketFrame;

    invoke-direct {v0}, Lcom/neovisionaries/ws/client/WebSocketFrame;-><init>()V

    const/4 v1, 0x1

    .line 847
    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setFin(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    const/4 v1, 0x2

    .line 848
    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setOpcode(I)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    .line 849
    invoke-virtual {v0, p0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setPayload([B)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p0

    return-object p0
.end method

.method public static createCloseFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 2

    .line 863
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketFrame;

    invoke-direct {v0}, Lcom/neovisionaries/ws/client/WebSocketFrame;-><init>()V

    const/4 v1, 0x1

    .line 864
    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setFin(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    const/16 v1, 0x8

    .line 865
    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setOpcode(I)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    return-object v0
.end method

.method public static createCloseFrame(I)Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 2

    .line 884
    invoke-static {}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createCloseFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setCloseFramePayload(ILjava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p0

    return-object p0
.end method

.method public static createCloseFrame(ILjava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 1

    .line 909
    invoke-static {}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createCloseFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setCloseFramePayload(ILjava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p0

    return-object p0
.end method

.method public static createContinuationFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 2

    .line 772
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketFrame;

    invoke-direct {v0}, Lcom/neovisionaries/ws/client/WebSocketFrame;-><init>()V

    const/4 v1, 0x0

    .line 773
    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setOpcode(I)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    return-object v0
.end method

.method public static createContinuationFrame(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 1

    .line 809
    invoke-static {}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createContinuationFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setPayload(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p0

    return-object p0
.end method

.method public static createContinuationFrame([B)Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 1

    .line 791
    invoke-static {}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createContinuationFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setPayload([B)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p0

    return-object p0
.end method

.method public static createPingFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 2

    .line 923
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketFrame;

    invoke-direct {v0}, Lcom/neovisionaries/ws/client/WebSocketFrame;-><init>()V

    const/4 v1, 0x1

    .line 924
    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setFin(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    const/16 v1, 0x9

    .line 925
    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setOpcode(I)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    return-object v0
.end method

.method public static createPingFrame(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 1

    .line 965
    invoke-static {}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createPingFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setPayload(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p0

    return-object p0
.end method

.method public static createPingFrame([B)Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 1

    .line 945
    invoke-static {}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createPingFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setPayload([B)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p0

    return-object p0
.end method

.method public static createPongFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 2

    .line 979
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketFrame;

    invoke-direct {v0}, Lcom/neovisionaries/ws/client/WebSocketFrame;-><init>()V

    const/4 v1, 0x1

    .line 980
    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setFin(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    const/16 v1, 0xa

    .line 981
    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setOpcode(I)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    return-object v0
.end method

.method public static createPongFrame(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 1

    .line 1021
    invoke-static {}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createPongFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setPayload(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p0

    return-object p0
.end method

.method public static createPongFrame([B)Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 1

    .line 1001
    invoke-static {}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createPongFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setPayload([B)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p0

    return-object p0
.end method

.method public static createTextFrame(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 2

    .line 826
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketFrame;

    invoke-direct {v0}, Lcom/neovisionaries/ws/client/WebSocketFrame;-><init>()V

    const/4 v1, 0x1

    .line 827
    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setFin(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    .line 828
    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setOpcode(I)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    .line 829
    invoke-virtual {v0, p0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setPayload(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p0

    return-object p0
.end method

.method static mask([B[B)[B
    .locals 3

    if-eqz p0, :cond_2

    .line 1048
    array-length v0, p0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1053
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1055
    aget-byte v1, p1, v0

    rem-int/lit8 v2, v0, 0x4

    aget-byte v2, p0, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    :goto_1
    return-object p1
.end method

.method private static split(Lcom/neovisionaries/ws/client/WebSocketFrame;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neovisionaries/ws/client/WebSocketFrame;",
            "I)",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketFrame;",
            ">;"
        }
    .end annotation

    .line 1195
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getPayload()[B

    move-result-object v0

    .line 1196
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getFin()Z

    move-result v1

    .line 1198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1202
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    const/4 v4, 0x0

    .line 1203
    invoke-virtual {p0, v4}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setFin(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setPayload([B)Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 1204
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p0, p1

    .line 1206
    :goto_0
    array-length v3, v0

    if-ge p0, v3, :cond_0

    add-int v3, p0, p1

    .line 1209
    array-length v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1210
    invoke-static {v0, p0, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 1213
    invoke-static {p0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createContinuationFrame([B)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p0

    .line 1214
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p0, v3

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 1220
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    sub-int/2addr p0, p1

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/neovisionaries/ws/client/WebSocketFrame;

    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setFin(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;

    :cond_1
    return-object v2
.end method

.method static splitIfNecessary(Lcom/neovisionaries/ws/client/WebSocketFrame;ILcom/neovisionaries/ws/client/PerMessageCompressionExtension;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neovisionaries/ws/client/WebSocketFrame;",
            "I",
            "Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;",
            ")",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketFrame;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1158
    :cond_0
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getPayloadLength()I

    move-result v1

    if-gt v1, p1, :cond_1

    return-object v0

    .line 1165
    :cond_1
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->isBinaryFrame()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->isTextFrame()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1181
    :cond_2
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->isContinuationFrame()Z

    move-result p2

    if-nez p2, :cond_4

    return-object v0

    .line 1171
    :cond_3
    :goto_0
    invoke-static {p0, p2}, Lcom/neovisionaries/ws/client/WebSocketFrame;->compressFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p0

    .line 1175
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getPayloadLength()I

    move-result p2

    if-gt p2, p1, :cond_4

    return-object v0

    .line 1188
    :cond_4
    invoke-static {p0, p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->split(Lcom/neovisionaries/ws/client/WebSocketFrame;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCloseCode()I
    .locals 3

    .line 611
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mPayload:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mPayload:[B

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mPayload:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mPayload:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    :cond_1
    :goto_0
    const/16 v0, 0x3ed

    return v0
.end method

.method public getCloseReason()Ljava/lang/String;
    .locals 3

    .line 641
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mPayload:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mPayload:[B

    array-length v0, v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mPayload:[B

    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mPayload:[B

    array-length v1, v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {v0, v2, v1}, Lcom/neovisionaries/ws/client/Misc;->toStringUTF8([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFin()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mFin:Z

    return v0
.end method

.method getMask()Z
    .locals 1

    .line 392
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mMask:Z

    return v0
.end method

.method public getOpcode()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mOpcode:I

    return v0
.end method

.method public getPayload()[B
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mPayload:[B

    return-object v0
.end method

.method public getPayloadLength()I
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mPayload:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mPayload:[B

    array-length v0, v0

    return v0
.end method

.method public getPayloadText()Ljava/lang/String;
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mPayload:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mPayload:[B

    invoke-static {v0}, Lcom/neovisionaries/ws/client/Misc;->toStringUTF8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRsv1()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mRsv1:Z

    return v0
.end method

.method public getRsv2()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mRsv2:Z

    return v0
.end method

.method public getRsv3()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mRsv3:Z

    return v0
.end method

.method public hasPayload()Z
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mPayload:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBinaryFrame()Z
    .locals 2

    .line 290
    iget v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mOpcode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCloseFrame()Z
    .locals 2

    .line 308
    iget v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mOpcode:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isContinuationFrame()Z
    .locals 1

    .line 254
    iget v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mOpcode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isControlFrame()Z
    .locals 2

    .line 380
    iget v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mOpcode:I

    const/16 v1, 0x8

    if-gt v1, v0, :cond_0

    iget v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mOpcode:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDataFrame()Z
    .locals 3

    .line 362
    iget v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mOpcode:I

    const/4 v1, 0x1

    if-gt v1, v0, :cond_0

    iget v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mOpcode:I

    const/4 v2, 0x7

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPingFrame()Z
    .locals 2

    .line 326
    iget v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mOpcode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPongFrame()Z
    .locals 2

    .line 344
    iget v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mOpcode:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTextFrame()Z
    .locals 2

    .line 272
    iget v0, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mOpcode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setCloseFramePayload(ILjava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 4

    const/4 v0, 0x2

    .line 563
    new-array v1, v0, [B

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v2, 0x1

    aput-byte p1, v1, v2

    if-eqz p2, :cond_1

    .line 569
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 576
    :cond_0
    invoke-static {p2}, Lcom/neovisionaries/ws/client/Misc;->getBytesUTF8(Ljava/lang/String;)[B

    move-result-object p1

    .line 579
    array-length p2, p1

    add-int/2addr p2, v0

    new-array p2, p2, [B

    .line 580
    invoke-static {v1, v3, p2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 581
    array-length v1, p1

    invoke-static {p1, v3, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 584
    invoke-virtual {p0, p2}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setPayload([B)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p1

    return-object p1

    .line 572
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setPayload([B)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p1

    return-object p1
.end method

.method public setFin(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mFin:Z

    return-object p0
.end method

.method setMask(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 0

    .line 407
    iput-boolean p1, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mMask:Z

    return-object p0
.end method

.method public setOpcode(I)Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 0

    .line 234
    iput p1, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mOpcode:I

    return-object p0
.end method

.method public setPayload(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 1

    if-eqz p1, :cond_1

    .line 520
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 525
    :cond_0
    invoke-static {p1}, Lcom/neovisionaries/ws/client/Misc;->getBytesUTF8(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setPayload([B)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 522
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setPayload([B)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p1

    return-object p1
.end method

.method public setPayload([B)Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 1

    if-eqz p1, :cond_0

    .line 490
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 495
    :cond_0
    iput-object p1, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mPayload:[B

    return-object p0
.end method

.method public setRsv1(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mRsv1:Z

    return-object p0
.end method

.method public setRsv2(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mRsv2:Z

    return-object p0
.end method

.method public setRsv3(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mRsv3:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebSocketFrame(FIN="

    .line 654
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mFin:Z

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",RSV1="

    .line 655
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mRsv1:Z

    if-eqz v1, :cond_1

    const-string v1, "1"

    goto :goto_1

    :cond_1
    const-string v1, "0"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",RSV2="

    .line 656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mRsv2:Z

    if-eqz v1, :cond_2

    const-string v1, "1"

    goto :goto_2

    :cond_2
    const-string v1, "0"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",RSV3="

    .line 657
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mRsv3:Z

    if-eqz v1, :cond_3

    const-string v1, "1"

    goto :goto_3

    :cond_3
    const-string v1, "0"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Opcode="

    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mOpcode:I

    invoke-static {v1}, Lcom/neovisionaries/ws/client/Misc;->toOpcodeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Length="

    .line 659
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getPayloadLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 661
    iget v1, p0, Lcom/neovisionaries/ws/client/WebSocketFrame;->mOpcode:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    packed-switch v1, :pswitch_data_0

    goto :goto_4

    .line 668
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->appendPayloadBinary(Ljava/lang/StringBuilder;)V

    goto :goto_4

    .line 664
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->appendPayloadText(Ljava/lang/StringBuilder;)V

    goto :goto_4

    .line 672
    :cond_4
    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->appendPayloadClose(Ljava/lang/StringBuilder;)V

    :goto_4
    const-string v1, ")"

    .line 676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
