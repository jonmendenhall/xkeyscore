.class Lcom/neovisionaries/ws/client/DeflateDecompressor;
.super Ljava/lang/Object;
.source "DeflateDecompressor.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decompress(Lcom/neovisionaries/ws/client/ByteArray;ILcom/neovisionaries/ws/client/ByteArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/FormatException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 34
    new-array v0, v0, [I

    mul-int/lit8 p1, p1, 0x8

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 39
    :goto_0
    invoke-static {p0, v0, p2}, Lcom/neovisionaries/ws/client/DeflateDecompressor;->inflateBlock(Lcom/neovisionaries/ws/client/ByteArray;[ILcom/neovisionaries/ws/client/ByteArray;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static decompress(Lcom/neovisionaries/ws/client/ByteArray;Lcom/neovisionaries/ws/client/ByteArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 27
    invoke-static {p0, v0, p1}, Lcom/neovisionaries/ws/client/DeflateDecompressor;->decompress(Lcom/neovisionaries/ws/client/ByteArray;ILcom/neovisionaries/ws/client/ByteArray;)V

    return-void
.end method

.method private static duplicate(IILcom/neovisionaries/ws/client/ByteArray;)V
    .locals 5

    .line 210
    invoke-virtual {p2}, Lcom/neovisionaries/ws/client/ByteArray;->length()I

    move-result v0

    .line 213
    new-array v1, p0, [B

    sub-int p1, v0, p1

    const/4 v2, 0x0

    move v3, p1

    :goto_0
    if-ge v2, p0, :cond_1

    if-gt v0, v3, :cond_0

    move v3, p1

    .line 237
    :cond_0
    invoke-virtual {p2, v3}, Lcom/neovisionaries/ws/client/ByteArray;->get(I)B

    move-result v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {p2, v1}, Lcom/neovisionaries/ws/client/ByteArray;->put([B)V

    return-void
.end method

.method private static inflateBlock(Lcom/neovisionaries/ws/client/ByteArray;[ILcom/neovisionaries/ws/client/ByteArray;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/FormatException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/ByteArray;->readBit([I)Z

    move-result v0

    const/4 v1, 0x2

    .line 60
    invoke-virtual {p0, p1, v1}, Lcom/neovisionaries/ws/client/ByteArray;->readBits([II)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    const-string p0, "[%s] Bad compression type \'11\' at the bit index \'%d\'."

    .line 82
    new-array p2, v1, [Ljava/lang/Object;

    const-class v0, Lcom/neovisionaries/ws/client/DeflateDecompressor;

    .line 84
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v4

    aget p1, p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v3

    .line 82
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 86
    new-instance p1, Lcom/neovisionaries/ws/client/FormatException;

    invoke-direct {p1, p0}, Lcom/neovisionaries/ws/client/FormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/neovisionaries/ws/client/DeflateDecompressor;->inflateDynamicBlock(Lcom/neovisionaries/ws/client/ByteArray;[ILcom/neovisionaries/ws/client/ByteArray;)V

    goto :goto_0

    .line 71
    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/neovisionaries/ws/client/DeflateDecompressor;->inflateFixedBlock(Lcom/neovisionaries/ws/client/ByteArray;[ILcom/neovisionaries/ws/client/ByteArray;)V

    goto :goto_0

    .line 66
    :pswitch_2
    invoke-static {p0, p1, p2}, Lcom/neovisionaries/ws/client/DeflateDecompressor;->inflatePlainBlock(Lcom/neovisionaries/ws/client/ByteArray;[ILcom/neovisionaries/ws/client/ByteArray;)V

    .line 90
    :goto_0
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/ByteArray;->length()I

    move-result p0

    aget p1, p1, v4

    div-int/lit8 p1, p1, 0x8

    if-gt p0, p1, :cond_0

    move v0, v3

    :cond_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static inflateData(Lcom/neovisionaries/ws/client/ByteArray;[ILcom/neovisionaries/ws/client/ByteArray;Lcom/neovisionaries/ws/client/Huffman;Lcom/neovisionaries/ws/client/Huffman;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/FormatException;
        }
    .end annotation

    .line 176
    :goto_0
    invoke-virtual {p3, p0, p1}, Lcom/neovisionaries/ws/client/Huffman;->readSym(Lcom/neovisionaries/ws/client/ByteArray;[I)I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-ltz v0, :cond_1

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    .line 189
    invoke-virtual {p2, v0}, Lcom/neovisionaries/ws/client/ByteArray;->put(I)V

    goto :goto_0

    .line 196
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/neovisionaries/ws/client/DeflateUtil;->readLength(Lcom/neovisionaries/ws/client/ByteArray;[II)I

    move-result v0

    .line 199
    invoke-static {p0, p1, p4}, Lcom/neovisionaries/ws/client/DeflateUtil;->readDistance(Lcom/neovisionaries/ws/client/ByteArray;[ILcom/neovisionaries/ws/client/Huffman;)I

    move-result v1

    .line 202
    invoke-static {v0, v1, p2}, Lcom/neovisionaries/ws/client/DeflateDecompressor;->duplicate(IILcom/neovisionaries/ws/client/ByteArray;)V

    goto :goto_0
.end method

.method private static inflateDynamicBlock(Lcom/neovisionaries/ws/client/ByteArray;[ILcom/neovisionaries/ws/client/ByteArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/FormatException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 158
    new-array v0, v0, [Lcom/neovisionaries/ws/client/Huffman;

    .line 159
    invoke-static {p0, p1, v0}, Lcom/neovisionaries/ws/client/DeflateUtil;->readDynamicTables(Lcom/neovisionaries/ws/client/ByteArray;[I[Lcom/neovisionaries/ws/client/Huffman;)V

    const/4 v1, 0x0

    .line 163
    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {p0, p1, p2, v1, v0}, Lcom/neovisionaries/ws/client/DeflateDecompressor;->inflateData(Lcom/neovisionaries/ws/client/ByteArray;[ILcom/neovisionaries/ws/client/ByteArray;Lcom/neovisionaries/ws/client/Huffman;Lcom/neovisionaries/ws/client/Huffman;)V

    return-void
.end method

.method private static inflateFixedBlock(Lcom/neovisionaries/ws/client/ByteArray;[ILcom/neovisionaries/ws/client/ByteArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/FormatException;
        }
    .end annotation

    .line 145
    invoke-static {}, Lcom/neovisionaries/ws/client/FixedLiteralLengthHuffman;->getInstance()Lcom/neovisionaries/ws/client/FixedLiteralLengthHuffman;

    move-result-object v0

    .line 146
    invoke-static {}, Lcom/neovisionaries/ws/client/FixedDistanceHuffman;->getInstance()Lcom/neovisionaries/ws/client/FixedDistanceHuffman;

    move-result-object v1

    .line 144
    invoke-static {p0, p1, p2, v0, v1}, Lcom/neovisionaries/ws/client/DeflateDecompressor;->inflateData(Lcom/neovisionaries/ws/client/ByteArray;[ILcom/neovisionaries/ws/client/ByteArray;Lcom/neovisionaries/ws/client/Huffman;Lcom/neovisionaries/ws/client/Huffman;)V

    return-void
.end method

.method private static inflatePlainBlock(Lcom/neovisionaries/ws/client/ByteArray;[ILcom/neovisionaries/ws/client/ByteArray;)V
    .locals 4

    const/4 v0, 0x0

    .line 106
    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x7

    and-int/lit8 v1, v1, -0x8

    .line 110
    div-int/lit8 v1, v1, 0x8

    .line 113
    invoke-virtual {p0, v1}, Lcom/neovisionaries/ws/client/ByteArray;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Lcom/neovisionaries/ws/client/ByteArray;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    mul-int/lit16 v3, v3, 0x100

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x4

    .line 121
    invoke-virtual {p2, p0, v1, v2}, Lcom/neovisionaries/ws/client/ByteArray;->put(Lcom/neovisionaries/ws/client/ByteArray;II)V

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x8

    .line 125
    aput v1, p1, v0

    return-void
.end method
