.class Lcom/amazonaws/util/Base64Codec;
.super Ljava/lang/Object;
.source "Base64Codec.java"

# interfaces
.implements Lcom/amazonaws/util/Codec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/util/Base64Codec$LazyHolder;
    }
.end annotation


# static fields
.field private static final BITS_3:I = 0x3

.field private static final BITS_4:I = 0x4

.field private static final BITS_6:I = 0x6

.field private static final MASK_2BITS:I = 0x3

.field private static final MASK_4BITS:I = 0xf

.field private static final MASK_6BITS:I = 0x3f

.field private static final OFFSET_0_VALUE:I = 0x34

.field private static final OFFSET_OF_0:I = -0x4

.field private static final OFFSET_OF_PLUS:I = -0x13

.field private static final OFFSET_OF_SLASH:I = -0x10

.field private static final OFFSET_OF_a:I = 0x47

.field private static final OFFSET_PLUS_VALUE:I = 0x3e

.field private static final OFFSET_SLASH_VALUE:I = 0x3f

.field private static final OFFSET_a_VALUE:I = 0x1a

.field private static final PAD:B = 0x3dt


# instance fields
.field private final alpahbets:[B


# direct methods
.method constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 76
    invoke-static {v0}, Lcom/amazonaws/util/CodecUtils;->toBytesDirect(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/util/Base64Codec;->alpahbets:[B

    return-void
.end method

.method protected constructor <init>([B)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/amazonaws/util/Base64Codec;->alpahbets:[B

    return-void
.end method


# virtual methods
.method public decode([BI)[B
    .locals 10

    .line 206
    rem-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_0

    .line 207
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Input is expected to be encoded in multiple of 4 bytes but found: "

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
    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    const/4 v4, -0x1

    if-le v2, v4, :cond_2

    .line 215
    aget-byte v4, p1, v2

    const/16 v5, 0x3d

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v2, 0x3

    packed-switch v0, :pswitch_data_0

    .line 233
    new-instance p1, Ljava/lang/Error;

    const-string p2, "Impossible"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/4 v3, 0x1

    :pswitch_1
    move v5, v3

    goto :goto_2

    :pswitch_2
    move v5, v2

    .line 235
    :goto_2
    div-int/lit8 p2, p2, 0x4

    mul-int/2addr p2, v2

    rsub-int/lit8 v0, v5, 0x3

    sub-int/2addr p2, v0

    new-array p2, p2, [B

    move v7, v1

    move v9, v7

    .line 239
    :goto_3
    array-length v0, p2

    rem-int/lit8 v1, v5, 0x3

    sub-int/2addr v0, v1

    if-ge v9, v0, :cond_3

    .line 240
    invoke-virtual {p0, p1, v7, p2, v9}, Lcom/amazonaws/util/Base64Codec;->decode4bytes([BI[BI)V

    add-int/lit8 v7, v7, 0x4

    add-int/lit8 v9, v9, 0x3

    goto :goto_3

    :cond_3
    if-ge v5, v2, :cond_4

    move-object v4, p0

    move-object v6, p1

    move-object v8, p2

    .line 244
    invoke-virtual/range {v4 .. v9}, Lcom/amazonaws/util/Base64Codec;->decode1to3bytes(I[BI[BI)V

    :cond_4
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method decode1to3bytes(I[BI[BI)V
    .locals 7

    add-int/lit8 v0, p5, 0x1

    add-int/lit8 v1, p3, 0x1

    .line 176
    aget-byte p3, p2, p3

    .line 178
    invoke-virtual {p0, p3}, Lcom/amazonaws/util/Base64Codec;->pos(B)I

    move-result p3

    const/4 v2, 0x2

    shl-int/2addr p3, v2

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p2, v1

    .line 179
    invoke-virtual {p0, v1}, Lcom/amazonaws/util/Base64Codec;->pos(B)I

    move-result v1

    ushr-int/lit8 v4, v1, 0x4

    const/4 v5, 0x3

    and-int/2addr v4, v5

    or-int/2addr p3, v4

    int-to-byte p3, p3

    aput-byte p3, p4, p5

    const/16 p3, 0xf

    const/4 p5, 0x1

    if-ne p1, p5, :cond_0

    .line 182
    invoke-static {v1, p3}, Lcom/amazonaws/util/CodecUtils;->sanityCheckLastPos(II)V

    return-void

    :cond_0
    add-int/lit8 p5, v0, 0x1

    and-int/2addr v1, p3

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v4, v3, 0x1

    .line 186
    aget-byte v3, p2, v3

    .line 189
    invoke-virtual {p0, v3}, Lcom/amazonaws/util/Base64Codec;->pos(B)I

    move-result v3

    ushr-int/lit8 v6, v3, 0x2

    and-int/2addr p3, v6

    or-int/2addr p3, v1

    int-to-byte p3, p3

    aput-byte p3, p4, v0

    if-ne p1, v2, :cond_1

    .line 192
    invoke-static {v3, v5}, Lcom/amazonaws/util/CodecUtils;->sanityCheckLastPos(II)V

    return-void

    :cond_1
    and-int/lit8 p1, v3, 0x3

    shl-int/lit8 p1, p1, 0x6

    .line 196
    aget-byte p2, p2, v4

    .line 199
    invoke-virtual {p0, p2}, Lcom/amazonaws/util/Base64Codec;->pos(B)I

    move-result p2

    or-int/2addr p1, p2

    int-to-byte p1, p1

    aput-byte p1, p4, p5

    return-void
.end method

.method decode4bytes([BI[BI)V
    .locals 4

    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v1, p2, 0x1

    .line 151
    aget-byte p2, p1, p2

    .line 153
    invoke-virtual {p0, p2}, Lcom/amazonaws/util/Base64Codec;->pos(B)I

    move-result p2

    shl-int/lit8 p2, p2, 0x2

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    .line 154
    invoke-virtual {p0, v1}, Lcom/amazonaws/util/Base64Codec;->pos(B)I

    move-result v1

    ushr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0x3

    or-int/2addr p2, v3

    int-to-byte p2, p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, v0, 0x1

    and-int/lit8 p4, v1, 0xf

    shl-int/lit8 p4, p4, 0x4

    add-int/lit8 v1, v2, 0x1

    .line 156
    aget-byte v2, p1, v2

    .line 159
    invoke-virtual {p0, v2}, Lcom/amazonaws/util/Base64Codec;->pos(B)I

    move-result v2

    ushr-int/lit8 v3, v2, 0x2

    and-int/lit8 v3, v3, 0xf

    or-int/2addr p4, v3

    int-to-byte p4, p4

    aput-byte p4, p3, v0

    and-int/lit8 p4, v2, 0x3

    shl-int/lit8 p4, p4, 0x6

    .line 161
    aget-byte p1, p1, v1

    .line 164
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/Base64Codec;->pos(B)I

    move-result p1

    or-int/2addr p1, p4

    int-to-byte p1, p1

    aput-byte p1, p3, p2

    return-void
.end method

.method public encode([B)[B
    .locals 5

    .line 85
    array-length v0, p1

    div-int/lit8 v0, v0, 0x3

    .line 86
    array-length v1, p1

    rem-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    if-nez v1, :cond_1

    mul-int/lit8 v0, v0, 0x4

    .line 89
    new-array v0, v0, [B

    move v1, v2

    .line 91
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 92
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/amazonaws/util/Base64Codec;->encode3bytes([BI[BI)V

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x4

    .line 96
    new-array v0, v0, [B

    move v3, v2

    .line 99
    :goto_1
    array-length v4, p1

    sub-int/2addr v4, v1

    if-ge v2, v4, :cond_2

    .line 100
    invoke-virtual {p0, p1, v2, v0, v3}, Lcom/amazonaws/util/Base64Codec;->encode3bytes([BI[BI)V

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v3, 0x4

    goto :goto_1

    :cond_2
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 107
    :pswitch_0
    invoke-virtual {p0, p1, v2, v0, v3}, Lcom/amazonaws/util/Base64Codec;->encode2bytes([BI[BI)V

    goto :goto_2

    .line 104
    :pswitch_1
    invoke-virtual {p0, p1, v2, v0, v3}, Lcom/amazonaws/util/Base64Codec;->encode1byte([BI[BI)V

    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method encode1byte([BI[BI)V
    .locals 2

    add-int/lit8 v0, p4, 0x1

    .line 141
    iget-object v1, p0, Lcom/amazonaws/util/Base64Codec;->alpahbets:[B

    aget-byte p1, p1, p2

    ushr-int/lit8 p2, p1, 0x2

    and-int/lit8 p2, p2, 0x3f

    aget-byte p2, v1, p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, v0, 0x1

    .line 142
    iget-object p4, p0, Lcom/amazonaws/util/Base64Codec;->alpahbets:[B

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x4

    aget-byte p1, p4, p1

    aput-byte p1, p3, v0

    add-int/lit8 p1, p2, 0x1

    const/16 p4, 0x3d

    .line 143
    aput-byte p4, p3, p2

    .line 144
    aput-byte p4, p3, p1

    return-void
.end method

.method encode2bytes([BI[BI)V
    .locals 4

    add-int/lit8 v0, p4, 0x1

    .line 130
    iget-object v1, p0, Lcom/amazonaws/util/Base64Codec;->alpahbets:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte p2, p1, p2

    ushr-int/lit8 v3, p2, 0x2

    and-int/lit8 v3, v3, 0x3f

    aget-byte v1, v1, v3

    aput-byte v1, p3, p4

    add-int/lit8 p4, v0, 0x1

    .line 131
    iget-object v1, p0, Lcom/amazonaws/util/Base64Codec;->alpahbets:[B

    and-int/lit8 p2, p2, 0x3

    shl-int/lit8 p2, p2, 0x4

    aget-byte p1, p1, v2

    ushr-int/lit8 v2, p1, 0x4

    and-int/lit8 v2, v2, 0xf

    or-int/2addr p2, v2

    aget-byte p2, v1, p2

    aput-byte p2, p3, v0

    add-int/lit8 p2, p4, 0x1

    .line 133
    iget-object v0, p0, Lcom/amazonaws/util/Base64Codec;->alpahbets:[B

    and-int/lit8 p1, p1, 0xf

    shl-int/lit8 p1, p1, 0x2

    aget-byte p1, v0, p1

    aput-byte p1, p3, p4

    const/16 p1, 0x3d

    .line 134
    aput-byte p1, p3, p2

    return-void
.end method

.method encode3bytes([BI[BI)V
    .locals 5

    add-int/lit8 v0, p4, 0x1

    .line 118
    iget-object v1, p0, Lcom/amazonaws/util/Base64Codec;->alpahbets:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte p2, p1, p2

    ushr-int/lit8 v3, p2, 0x2

    and-int/lit8 v3, v3, 0x3f

    aget-byte v1, v1, v3

    aput-byte v1, p3, p4

    add-int/lit8 p4, v0, 0x1

    .line 119
    iget-object v1, p0, Lcom/amazonaws/util/Base64Codec;->alpahbets:[B

    and-int/lit8 p2, p2, 0x3

    shl-int/lit8 p2, p2, 0x4

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    ushr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0xf

    or-int/2addr p2, v4

    aget-byte p2, v1, p2

    aput-byte p2, p3, v0

    add-int/lit8 p2, p4, 0x1

    .line 121
    iget-object v0, p0, Lcom/amazonaws/util/Base64Codec;->alpahbets:[B

    and-int/lit8 v1, v2, 0xf

    shl-int/lit8 v1, v1, 0x2

    aget-byte p1, p1, v3

    ushr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3

    or-int/2addr v1, v2

    aget-byte v0, v0, v1

    aput-byte v0, p3, p4

    .line 123
    iget-object p4, p0, Lcom/amazonaws/util/Base64Codec;->alpahbets:[B

    and-int/lit8 p1, p1, 0x3f

    aget-byte p1, p4, p1

    aput-byte p1, p3, p2

    return-void
.end method

.method protected pos(B)I
    .locals 3

    .line 250
    invoke-static {}, Lcom/amazonaws/util/Base64Codec$LazyHolder;->access$000()[B

    move-result-object v0

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    return v0

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid base 64 character: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
