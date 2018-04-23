.class public Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "CipherLiteInputStream.java"


# static fields
.field private static final BYTE_MASK:I = 0xff

.field private static final DEFAULT_IN_BUFFER_SIZE:I = 0x200

.field private static final MAX_RETRY:I = 0x3e8


# instance fields
.field private final bufin:[B

.field private bufout:[B

.field private cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

.field private currPos:I

.field private eof:Z

.field private final lastMultiPart:Z

.field private maxPos:I

.field private final multipart:Z


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 6

    .line 106
    sget-object v2, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->NULL:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    const/16 v3, 0x200

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;IZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)V
    .locals 6

    const/16 v3, 0x200

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 62
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;IZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 72
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;IZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;IZZ)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->eof:Z

    .line 53
    iput p1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->currPos:I

    .line 54
    iput p1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->maxPos:I

    if-eqz p5, :cond_0

    if-nez p4, :cond_0

    .line 87
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "lastMultiPart can only be true if multipart is true"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_0
    iput-boolean p4, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->multipart:Z

    .line 91
    iput-boolean p5, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->lastMultiPart:Z

    .line 92
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    if-lez p3, :cond_2

    .line 93
    rem-int/lit16 p1, p3, 0x200

    if-eqz p1, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    new-array p1, p3, [B

    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->bufin:[B

    return-void

    .line 94
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "buffsize ("

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") must be a positive multiple of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x200

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private nextChunk()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->abortIfNeeded()V

    .line 256
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->eof:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 259
    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->bufout:[B

    .line 260
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->bufin:[B

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    .line 262
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->eof:Z

    .line 264
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->multipart:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->lastMultiPart:Z

    if-eqz v0, :cond_3

    .line 266
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->doFinal()[B

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->bufout:[B

    .line 267
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->bufout:[B

    if-nez v0, :cond_2

    return v1

    .line 272
    :cond_2
    iput v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->currPos:I

    .line 273
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->bufout:[B

    array-length v0, v0

    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->maxPos:I

    .line 274
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->maxPos:I
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 278
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->isAesGcm(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 279
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    :cond_3
    return v1

    .line 285
    :cond_4
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->bufin:[B

    invoke-virtual {v1, v3, v2, v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->update([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->bufout:[B

    .line 286
    iput v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->currPos:I

    .line 287
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->bufout:[B

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->bufout:[B

    array-length v2, v0

    :goto_0
    iput v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->maxPos:I

    .line 288
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->maxPos:I

    return v0
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->abortIfNeeded()V

    .line 190
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->maxPos:I

    iget v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->currPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 200
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->multipart:Z

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->isAesGcm(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->doFinal()[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 210
    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->currPos:I

    .line 211
    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->maxPos:I

    .line 212
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->abortIfNeeded()V

    return-void
.end method

.method public mark(I)V
    .locals 1

    .line 223
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->abortIfNeeded()V

    .line 224
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 225
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->mark()J

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 217
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->abortIfNeeded()V

    .line 218
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->currPos:I

    iget v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->maxPos:I

    if-lt v0, v1, :cond_3

    .line 112
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->eof:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    const/16 v2, 0x3e8

    if-le v0, v2, :cond_2

    .line 119
    new-instance v0, Ljava/io/IOException;

    const-string v1, "exceeded maximum number of attempts to read next chunk of data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_2
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->nextChunk()I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v1, :cond_3

    return v1

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->bufout:[B

    iget v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->currPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->currPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->currPos:I

    iget v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->maxPos:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    .line 142
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->eof:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move v0, v2

    :cond_1
    const/16 v3, 0x3e8

    if-le v0, v3, :cond_2

    .line 149
    new-instance p1, Ljava/io/IOException;

    const-string p2, "exceeded maximum number of attempts to read next chunk of data"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 152
    :cond_2
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->nextChunk()I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v1, :cond_3

    return v1

    :cond_3
    if-gtz p3, :cond_4

    return v2

    .line 163
    :cond_4
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->maxPos:I

    iget v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->currPos:I

    sub-int/2addr v0, v1

    if-ge p3, v0, :cond_5

    goto :goto_0

    :cond_5
    move p3, v0

    .line 168
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->bufout:[B

    iget v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->currPos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iget p1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->currPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->currPos:I

    return p3
.end method

.method renewCipherLite()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->recreate()Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    return-void
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->abortIfNeeded()V

    .line 231
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 232
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->reset()V

    .line 233
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->resetInternal()V

    return-void
.end method

.method final resetInternal()V
    .locals 1

    .line 237
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 238
    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->currPos:I

    .line 239
    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->maxPos:I

    .line 240
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->eof:Z

    :cond_0
    return-void
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->abortIfNeeded()V

    .line 176
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->maxPos:I

    iget v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->currPos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    move-wide p1, v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    return-wide v0

    .line 183
    :cond_1
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->currPos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->currPos:I

    return-wide p1
.end method
