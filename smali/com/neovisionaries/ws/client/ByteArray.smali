.class Lcom/neovisionaries/ws/client/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"


# static fields
.field private static final ADDITIONAL_BUFFER_SIZE:I = 0x400


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    .line 59
    array-length p1, p1

    iput p1, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    return-void
.end method

.method private expandBuffer(I)V
    .locals 3

    .line 94
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 97
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    iget-object v1, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 100
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 103
    iput-object p1, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 225
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 226
    iput v1, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    return-void
.end method

.method public clearBit(I)V
    .locals 1

    const/4 v0, 0x0

    .line 346
    invoke-virtual {p0, p1, v0}, Lcom/neovisionaries/ws/client/ByteArray;->setBit(IZ)V

    return-void
.end method

.method public get(I)B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 77
    iget v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    return p1

    .line 80
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Bad index: index=%d, length=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    iget v3, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBit(I)Z
    .locals 2

    .line 250
    div-int/lit8 v0, p1, 0x8

    .line 251
    rem-int/lit8 p1, p1, 0x8

    .line 252
    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/ByteArray;->get(I)B

    move-result v0

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getBits(II)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v1, p2, :cond_1

    add-int v3, p1, v1

    .line 268
    invoke-virtual {p0, v3}, Lcom/neovisionaries/ws/client/ByteArray;->getBit(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getHuffmanBits(II)I
    .locals 3

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    const/4 v1, 0x0

    :goto_0
    if-ltz p2, :cond_1

    add-int v2, p1, p2

    .line 295
    invoke-virtual {p0, v2}, Lcom/neovisionaries/ws/client/ByteArray;->getBit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/2addr v1, v0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public length()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    return v0
.end method

.method public put(I)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    .line 115
    iget v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    add-int/lit16 v0, v0, 0x400

    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ByteArray;->expandBuffer(I)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 119
    iget p1, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    return-void
.end method

.method public put(Lcom/neovisionaries/ws/client/ByteArray;II)V
    .locals 0

    .line 181
    iget-object p1, p1, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/neovisionaries/ws/client/ByteArray;->put([BII)V

    return-void
.end method

.method public put([B)V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    array-length v2, p1

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 134
    iget v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    array-length v1, p1

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x400

    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ByteArray;->expandBuffer(I)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 138
    iget v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    return-void
.end method

.method public put([BII)V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    add-int/2addr v1, p3

    if-ge v0, v1, :cond_0

    .line 159
    iget v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    add-int/2addr v0, p3

    add-int/lit16 v0, v0, 0x400

    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ByteArray;->expandBuffer(I)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 163
    iget p1, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    return-void
.end method

.method public readBit([I)Z
    .locals 3

    const/4 v0, 0x0

    .line 307
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/neovisionaries/ws/client/ByteArray;->getBit(I)Z

    move-result v1

    .line 309
    aget v2, p1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, p1, v0

    return v1
.end method

.method public readBits([II)I
    .locals 3

    const/4 v0, 0x0

    .line 317
    aget v1, p1, v0

    invoke-virtual {p0, v1, p2}, Lcom/neovisionaries/ws/client/ByteArray;->getBits(II)I

    move-result v1

    .line 319
    aget v2, p1, v0

    add-int/2addr v2, p2

    aput v2, p1, v0

    return v1
.end method

.method public setBit(IZ)V
    .locals 3

    .line 327
    div-int/lit8 v0, p1, 0x8

    .line 328
    rem-int/lit8 p1, p1, 0x8

    .line 329
    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/ByteArray;->get(I)B

    move-result v1

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    shl-int p1, v2, p1

    or-int/2addr p1, v1

    goto :goto_0

    :cond_0
    shl-int p1, v2, p1

    not-int p1, p1

    and-int/2addr p1, v1

    .line 340
    :goto_0
    iget-object p2, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {p2, v0, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public shrink(I)V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-gt v0, p1, :cond_0

    return-void

    .line 237
    :cond_0
    iget v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    .line 238
    iget v1, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    sub-int/2addr v1, p1

    .line 240
    invoke-virtual {p0, v1, v0}, Lcom/neovisionaries/ws/client/ByteArray;->toBytes(II)[B

    move-result-object p1

    .line 242
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    .line 243
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 244
    array-length p1, p1

    iput p1, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    return-void
.end method

.method public toBytes()[B
    .locals 1

    const/4 v0, 0x0

    .line 190
    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/ByteArray;->toBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public toBytes(I)[B
    .locals 1

    .line 196
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/ByteArray;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/neovisionaries/ws/client/ByteArray;->toBytes(II)[B

    move-result-object p1

    return-object p1
.end method

.method public toBytes(II)[B
    .locals 4

    sub-int v0, p2, p1

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    if-ltz p1, :cond_2

    .line 204
    iget v2, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    if-ge v2, p2, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    new-array p2, v0, [B

    if-eqz v0, :cond_1

    .line 215
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object p2

    .line 206
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad range: beginIndex=%d, endIndex=%d, length=%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 208
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, p1

    const/4 p1, 0x2

    iget p2, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, p1

    .line 207
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
