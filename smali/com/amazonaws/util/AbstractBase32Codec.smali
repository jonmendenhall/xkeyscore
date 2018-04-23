.class abstract Lcom/amazonaws/util/AbstractBase32Codec;
.super Ljava/lang/Object;
.source "AbstractBase32Codec.java"

# interfaces
.implements Lcom/amazonaws/util/Codec;


# static fields
.field private static final BITS_3:I = 0x3

.field private static final BITS_4:I = 0x4

.field private static final BITS_5:I = 0x5

.field private static final BIT_MULTIPLIER:I = 0x8

.field private static final MASK_2BITS:I = 0x3

.field private static final MASK_3BITS:I = 0x7

.field private static final MASK_4BITS:I = 0xf

.field private static final MASK_5BITS:I = 0x1f

.field private static final PAD:B = 0x3dt


# instance fields
.field private final alpahbets:[B


# direct methods
.method protected constructor <init>([B)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/amazonaws/util/AbstractBase32Codec;->alpahbets:[B

    return-void
.end method

.method private final decode1to4bytes(I[BI[BI)V
    .locals 9

    add-int/lit8 v0, p5, 0x1

    add-int/lit8 v1, p3, 0x1

    .line 200
    aget-byte p3, p2, p3

    .line 202
    invoke-virtual {p0, p3}, Lcom/amazonaws/util/AbstractBase32Codec;->pos(B)I

    move-result p3

    const/4 v2, 0x3

    shl-int/2addr p3, v2

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p2, v1

    .line 203
    invoke-virtual {p0, v1}, Lcom/amazonaws/util/AbstractBase32Codec;->pos(B)I

    move-result v1

    ushr-int/lit8 v4, v1, 0x2

    const/4 v5, 0x7

    and-int/2addr v4, v5

    or-int/2addr p3, v4

    int-to-byte p3, p3

    aput-byte p3, p4, p5

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 206
    invoke-static {v1, v2}, Lcom/amazonaws/util/CodecUtils;->sanityCheckLastPos(II)V

    return-void

    :cond_0
    add-int/lit8 p5, v0, 0x1

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v4, v3, 0x1

    .line 210
    aget-byte v3, p2, v3

    .line 213
    invoke-virtual {p0, v3}, Lcom/amazonaws/util/AbstractBase32Codec;->pos(B)I

    move-result v3

    shl-int/2addr v3, p3

    or-int/2addr v1, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p2, v4

    .line 214
    invoke-virtual {p0, v4}, Lcom/amazonaws/util/AbstractBase32Codec;->pos(B)I

    move-result v4

    ushr-int/lit8 v6, v4, 0x4

    and-int/2addr v6, p3

    or-int/2addr v1, v6

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    const/16 v0, 0xf

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 217
    invoke-static {v4, v0}, Lcom/amazonaws/util/CodecUtils;->sanityCheckLastPos(II)V

    return-void

    :cond_1
    add-int/lit8 v6, p5, 0x1

    and-int/2addr v4, v0

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v7, v3, 0x1

    .line 221
    aget-byte v3, p2, v3

    .line 224
    invoke-virtual {p0, v3}, Lcom/amazonaws/util/AbstractBase32Codec;->pos(B)I

    move-result v3

    ushr-int/lit8 v8, v3, 0x1

    and-int/2addr v0, v8

    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, p4, p5

    if-ne p1, v2, :cond_2

    .line 227
    invoke-static {v3, p3}, Lcom/amazonaws/util/CodecUtils;->sanityCheckLastPos(II)V

    return-void

    :cond_2
    and-int/lit8 p1, v3, 0x1

    shl-int/2addr p1, v5

    add-int/lit8 p3, v7, 0x1

    .line 231
    aget-byte p5, p2, v7

    .line 234
    invoke-virtual {p0, p5}, Lcom/amazonaws/util/AbstractBase32Codec;->pos(B)I

    move-result p5

    shl-int/2addr p5, v1

    or-int/2addr p1, p5

    aget-byte p2, p2, p3

    .line 235
    invoke-virtual {p0, p2}, Lcom/amazonaws/util/AbstractBase32Codec;->pos(B)I

    move-result p2

    ushr-int/lit8 p3, p2, 0x3

    and-int/2addr p3, v2

    or-int/2addr p1, p3

    int-to-byte p1, p1

    aput-byte p1, p4, v6

    .line 237
    invoke-static {p2, v5}, Lcom/amazonaws/util/CodecUtils;->sanityCheckLastPos(II)V

    return-void
.end method

.method private final decode5bytes([BI[BI)V
    .locals 4

    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v1, p2, 0x1

    .line 163
    aget-byte p2, p1, p2

    .line 165
    invoke-virtual {p0, p2}, Lcom/amazonaws/util/AbstractBase32Codec;->pos(B)I

    move-result p2

    shl-int/lit8 p2, p2, 0x3

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    .line 166
    invoke-virtual {p0, v1}, Lcom/amazonaws/util/AbstractBase32Codec;->pos(B)I

    move-result v1

    ushr-int/lit8 v3, v1, 0x2

    and-int/lit8 v3, v3, 0x7

    or-int/2addr p2, v3

    int-to-byte p2, p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, v0, 0x1

    and-int/lit8 p4, v1, 0x3

    shl-int/lit8 p4, p4, 0x6

    add-int/lit8 v1, v2, 0x1

    .line 168
    aget-byte v2, p1, v2

    .line 171
    invoke-virtual {p0, v2}, Lcom/amazonaws/util/AbstractBase32Codec;->pos(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    or-int/2addr p4, v2

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    .line 172
    invoke-virtual {p0, v1}, Lcom/amazonaws/util/AbstractBase32Codec;->pos(B)I

    move-result v1

    ushr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0x1

    or-int/2addr p4, v3

    int-to-byte p4, p4

    aput-byte p4, p3, v0

    add-int/lit8 p4, p2, 0x1

    and-int/lit8 v0, v1, 0xf

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v2, 0x1

    .line 174
    aget-byte v2, p1, v2

    .line 177
    invoke-virtual {p0, v2}, Lcom/amazonaws/util/AbstractBase32Codec;->pos(B)I

    move-result v2

    ushr-int/lit8 v3, v2, 0x1

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, p3, p2

    add-int/lit8 p2, p4, 0x1

    and-int/lit8 v0, v2, 0x1

    shl-int/lit8 v0, v0, 0x7

    add-int/lit8 v2, v1, 0x1

    .line 179
    aget-byte v1, p1, v1

    .line 182
    invoke-virtual {p0, v1}, Lcom/amazonaws/util/AbstractBase32Codec;->pos(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    .line 183
    invoke-virtual {p0, v2}, Lcom/amazonaws/util/AbstractBase32Codec;->pos(B)I

    move-result v2

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x3

    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, p3, p4

    and-int/lit8 p4, v2, 0x7

    shl-int/lit8 p4, p4, 0x5

    .line 185
    aget-byte p1, p1, v1

    .line 188
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/AbstractBase32Codec;->pos(B)I

    move-result p1

    or-int/2addr p1, p4

    int-to-byte p1, p1

    aput-byte p1, p3, p2

    return-void
.end method

.method private final encode1byte([BI[BI)V
    .locals 2

    add-int/lit8 v0, p4, 0x1

    .line 152
    iget-object v1, p0, Lcom/amazonaws/util/AbstractBase32Codec;->alpahbets:[B

    aget-byte p1, p1, p2

    ushr-int/lit8 p2, p1, 0x3

    and-int/lit8 p2, p2, 0x1f

    aget-byte p2, v1, p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, v0, 0x1

    .line 153
    iget-object p4, p0, Lcom/amazonaws/util/AbstractBase32Codec;->alpahbets:[B

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x2

    aget-byte p1, p4, p1

    aput-byte p1, p3, v0

    const/4 p1, 0x0

    :goto_0
    const/4 p4, 0x6

    if-ge p1, p4, :cond_0

    add-int/lit8 p4, p2, 0x1

    const/16 v0, 0x3d

    .line 156
    aput-byte v0, p3, p2

    add-int/lit8 p1, p1, 0x1

    move p2, p4

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final encode2bytes([BI[BI)V
    .locals 4

    add-int/lit8 v0, p4, 0x1

    .line 138
    iget-object v1, p0, Lcom/amazonaws/util/AbstractBase32Codec;->alpahbets:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte p2, p1, p2

    ushr-int/lit8 v3, p2, 0x3

    and-int/lit8 v3, v3, 0x1f

    aget-byte v1, v1, v3

    aput-byte v1, p3, p4

    add-int/lit8 p4, v0, 0x1

    .line 139
    iget-object v1, p0, Lcom/amazonaws/util/AbstractBase32Codec;->alpahbets:[B

    and-int/lit8 p2, p2, 0x7

    shl-int/lit8 p2, p2, 0x2

    aget-byte p1, p1, v2

    ushr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3

    or-int/2addr p2, v2

    aget-byte p2, v1, p2

    aput-byte p2, p3, v0

    add-int/lit8 p2, p4, 0x1

    .line 141
    iget-object v0, p0, Lcom/amazonaws/util/AbstractBase32Codec;->alpahbets:[B

    ushr-int/lit8 v1, p1, 0x1

    and-int/lit8 v1, v1, 0x1f

    aget-byte v0, v0, v1

    aput-byte v0, p3, p4

    add-int/lit8 p4, p2, 0x1

    .line 142
    iget-object v0, p0, Lcom/amazonaws/util/AbstractBase32Codec;->alpahbets:[B

    and-int/lit8 p1, p1, 0x1

    const/4 v1, 0x4

    shl-int/2addr p1, v1

    aget-byte p1, v0, p1

    aput-byte p1, p3, p2

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v1, :cond_0

    add-int/lit8 p2, p4, 0x1

    const/16 v0, 0x3d

    .line 145
    aput-byte v0, p3, p4

    add-int/lit8 p1, p1, 0x1

    move p4, p2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final encode3bytes([BI[BI)V
    .locals 6

    add-int/lit8 v0, p4, 0x1

    .line 122
    iget-object v1, p0, Lcom/amazonaws/util/AbstractBase32Codec;->alpahbets:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte p2, p1, p2

    ushr-int/lit8 v3, p2, 0x3

    and-int/lit8 v3, v3, 0x1f

    aget-byte v1, v1, v3

    aput-byte v1, p3, p4

    add-int/lit8 p4, v0, 0x1

    .line 123
    iget-object v1, p0, Lcom/amazonaws/util/AbstractBase32Codec;->alpahbets:[B

    and-int/lit8 p2, p2, 0x7

    shl-int/lit8 p2, p2, 0x2

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    ushr-int/lit8 v4, v2, 0x6

    const/4 v5, 0x3

    and-int/2addr v4, v5

    or-int/2addr p2, v4

    aget-byte p2, v1, p2

    aput-byte p2, p3, v0

    add-int/lit8 p2, p4, 0x1

    .line 125
    iget-object v0, p0, Lcom/amazonaws/util/AbstractBase32Codec;->alpahbets:[B

    ushr-int/lit8 v1, v2, 0x1

    and-int/lit8 v1, v1, 0x1f

    aget-byte v0, v0, v1

    aput-byte v0, p3, p4

    add-int/lit8 p4, p2, 0x1

    .line 126
    iget-object v0, p0, Lcom/amazonaws/util/AbstractBase32Codec;->alpahbets:[B

    and-int/lit8 v1, v2, 0x1

    shl-int/lit8 v1, v1, 0x4

    aget-byte p1, p1, v3

    ushr-int/lit8 v2, p1, 0x4

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    aget-byte v0, v0, v1

    aput-byte v0, p3, p2

    add-int/lit8 p2, p4, 0x1

    .line 128
    iget-object v0, p0, Lcom/amazonaws/util/AbstractBase32Codec;->alpahbets:[B

    and-int/lit8 p1, p1, 0xf

    shl-int/lit8 p1, p1, 0x1

    aget-byte p1, v0, p1

    aput-byte p1, p3, p4

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v5, :cond_0

    add-int/lit8 p4, p2, 0x1

    const/16 v0, 0x3d

    .line 131
    aput-byte v0, p3, p2

    add-int/lit8 p1, p1, 0x1

    move p2, p4

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final encode4bytes([BI[BI)V
    .locals 5

    add-int/lit8 v0, p4, 0x1

    .line 105
    iget-object v1, p0, Lcom/amazonaws/util/AbstractBase32Codec;->alpahbets:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte p2, p1, p2

    ushr-int/lit8 v3, p2, 0x3

    and-int/lit8 v3, v3, 0x1f

    aget-byte v1, v1, v3

    aput-byte v1, p3, p4

    add-int/lit8 p4, v0, 0x1

    .line 106
    iget-object v1, p0, Lcom/amazonaws/util/AbstractBase32Codec;->alpahbets:[B

    and-int/lit8 p2, p2, 0x7

    shl-int/lit8 p2, p2, 0x2

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    ushr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3

    or-int/2addr p2, v4

    aget-byte p2, v1, p2

    aput-byte p2, p3, v0

    add-int/lit8 p2, p4, 0x1

    .line 108
    iget-object v0, p0, Lcom/amazonaws/util/AbstractBase32Codec;->alpahbets:[B

    ushr-int/lit8 v1, v2, 0x1

    and-int/lit8 v1, v1, 0x1f

    aget-byte v0, v0, v1

    aput-byte v0, p3, p4

    add-int/lit8 p4, p2, 0x1

    .line 109
    iget-object v0, p0, Lcom/amazonaws/util/AbstractBase32Codec;->alpahbets:[B

    and-int/lit8 v1, v2, 0x1

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p1, v3

    ushr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v1, v4

    aget-byte v0, v0, v1

    aput-byte v0, p3, p2

    add-int/lit8 p2, p4, 0x1

    .line 111
    iget-object v0, p0, Lcom/amazonaws/util/AbstractBase32Codec;->alpahbets:[B

    and-int/lit8 v1, v3, 0xf

    shl-int/lit8 v1, v1, 0x1

    aget-byte p1, p1, v2

    ushr-int/lit8 v2, p1, 0x7

    and-int/lit8 v2, v2, 0x1

    or-int/2addr v1, v2

    aget-byte v0, v0, v1

    aput-byte v0, p3, p4

    add-int/lit8 p4, p2, 0x1

    .line 113
    iget-object v0, p0, Lcom/amazonaws/util/AbstractBase32Codec;->alpahbets:[B

    ushr-int/lit8 v1, p1, 0x2

    and-int/lit8 v1, v1, 0x1f

    aget-byte v0, v0, v1

    aput-byte v0, p3, p2

    add-int/lit8 p2, p4, 0x1

    .line 114
    iget-object v0, p0, Lcom/amazonaws/util/AbstractBase32Codec;->alpahbets:[B

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    aget-byte p1, v0, p1

    aput-byte p1, p3, p4

    const/16 p1, 0x3d

    .line 115
    aput-byte p1, p3, p2

    return-void
.end method

.method private final encode5bytes([BI[BI)V
    .locals 5

    add-int/lit8 v0, p4, 0x1

    .line 87
    iget-object v1, p0, Lcom/amazonaws/util/AbstractBase32Codec;->alpahbets:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte p2, p1, p2

    ushr-int/lit8 v3, p2, 0x3

    and-int/lit8 v3, v3, 0x1f

    aget-byte v1, v1, v3

    aput-byte v1, p3, p4

    add-int/lit8 p4, v0, 0x1

    .line 88
    iget-object v1, p0, Lcom/amazonaws/util/AbstractBase32Codec;->alpahbets:[B

    and-int/lit8 p2, p2, 0x7

    shl-int/lit8 p2, p2, 0x2

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    ushr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3

    or-int/2addr p2, v4

    aget-byte p2, v1, p2

    aput-byte p2, p3, v0

    add-int/lit8 p2, p4, 0x1

    .line 90
    iget-object v0, p0, Lcom/amazonaws/util/AbstractBase32Codec;->alpahbets:[B

    ushr-int/lit8 v1, v2, 0x1

    and-int/lit8 v1, v1, 0x1f

    aget-byte v0, v0, v1

    aput-byte v0, p3, p4

    add-int/lit8 p4, p2, 0x1

    .line 91
    iget-object v0, p0, Lcom/amazonaws/util/AbstractBase32Codec;->alpahbets:[B

    and-int/lit8 v1, v2, 0x1

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p1, v3

    ushr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v1, v4

    aget-byte v0, v0, v1

    aput-byte v0, p3, p2

    add-int/lit8 p2, p4, 0x1

    .line 93
    iget-object v0, p0, Lcom/amazonaws/util/AbstractBase32Codec;->alpahbets:[B

    and-int/lit8 v1, v3, 0xf

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    ushr-int/lit8 v4, v2, 0x7

    and-int/lit8 v4, v4, 0x1

    or-int/2addr v1, v4

    aget-byte v0, v0, v1

    aput-byte v0, p3, p4

    add-int/lit8 p4, p2, 0x1

    .line 95
    iget-object v0, p0, Lcom/amazonaws/util/AbstractBase32Codec;->alpahbets:[B

    ushr-int/lit8 v1, v2, 0x2

    and-int/lit8 v1, v1, 0x1f

    aget-byte v0, v0, v1

    aput-byte v0, p3, p2

    add-int/lit8 p2, p4, 0x1

    .line 96
    iget-object v0, p0, Lcom/amazonaws/util/AbstractBase32Codec;->alpahbets:[B

    and-int/lit8 v1, v2, 0x3

    shl-int/lit8 v1, v1, 0x3

    aget-byte p1, p1, v3

    ushr-int/lit8 v2, p1, 0x5

    and-int/lit8 v2, v2, 0x7

    or-int/2addr v1, v2

    aget-byte v0, v0, v1

    aput-byte v0, p3, p4

    .line 98
    iget-object p4, p0, Lcom/amazonaws/util/AbstractBase32Codec;->alpahbets:[B

    and-int/lit8 p1, p1, 0x1f

    aget-byte p1, p4, p1

    aput-byte p1, p3, p2

    return-void
.end method


# virtual methods
.method public final decode([BI)[B
    .locals 9

    .line 243
    rem-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    .line 244
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Input is expected to be encoded in multiple of 8 bytes but found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    const/4 v3, 0x6

    if-ge v0, v3, :cond_2

    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    .line 252
    aget-byte v3, p1, v2

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v2, 0x5

    packed-switch v0, :pswitch_data_0

    .line 276
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid number of paddings "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_2

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_2

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_2

    :pswitch_4
    const/4 v0, 0x4

    :goto_2
    move v4, v0

    goto :goto_3

    :pswitch_5
    move v4, v2

    .line 278
    :goto_3
    div-int/lit8 p2, p2, 0x8

    mul-int/2addr p2, v2

    rsub-int/lit8 v0, v4, 0x5

    sub-int/2addr p2, v0

    new-array p2, p2, [B

    move v6, v1

    move v8, v6

    .line 282
    :goto_4
    array-length v0, p2

    rem-int/lit8 v1, v4, 0x5

    sub-int/2addr v0, v1

    if-ge v8, v0, :cond_3

    .line 283
    invoke-direct {p0, p1, v6, p2, v8}, Lcom/amazonaws/util/AbstractBase32Codec;->decode5bytes([BI[BI)V

    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v8, v8, 0x5

    goto :goto_4

    :cond_3
    if-ge v4, v2, :cond_4

    move-object v3, p0

    move-object v5, p1

    move-object v7, p2

    .line 286
    invoke-direct/range {v3 .. v8}, Lcom/amazonaws/util/AbstractBase32Codec;->decode1to4bytes(I[BI[BI)V

    :cond_4
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final encode([B)[B
    .locals 5

    .line 48
    array-length v0, p1

    div-int/lit8 v0, v0, 0x5

    .line 49
    array-length v1, p1

    rem-int/lit8 v1, v1, 0x5

    const/4 v2, 0x0

    if-nez v1, :cond_1

    mul-int/lit8 v0, v0, 0x8

    .line 52
    new-array v0, v0, [B

    move v1, v2

    .line 54
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 55
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/amazonaws/util/AbstractBase32Codec;->encode5bytes([BI[BI)V

    add-int/lit8 v2, v2, 0x5

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x8

    .line 59
    new-array v0, v0, [B

    move v3, v2

    .line 62
    :goto_1
    array-length v4, p1

    sub-int/2addr v4, v1

    if-ge v2, v4, :cond_2

    .line 63
    invoke-direct {p0, p1, v2, v0, v3}, Lcom/amazonaws/util/AbstractBase32Codec;->encode5bytes([BI[BI)V

    add-int/lit8 v2, v2, 0x5

    add-int/lit8 v3, v3, 0x8

    goto :goto_1

    :cond_2
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 76
    :pswitch_0
    invoke-direct {p0, p1, v2, v0, v3}, Lcom/amazonaws/util/AbstractBase32Codec;->encode4bytes([BI[BI)V

    goto :goto_2

    .line 73
    :pswitch_1
    invoke-direct {p0, p1, v2, v0, v3}, Lcom/amazonaws/util/AbstractBase32Codec;->encode3bytes([BI[BI)V

    goto :goto_2

    .line 70
    :pswitch_2
    invoke-direct {p0, p1, v2, v0, v3}, Lcom/amazonaws/util/AbstractBase32Codec;->encode2bytes([BI[BI)V

    goto :goto_2

    .line 67
    :pswitch_3
    invoke-direct {p0, p1, v2, v0, v3}, Lcom/amazonaws/util/AbstractBase32Codec;->encode1byte([BI[BI)V

    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract pos(B)I
.end method
