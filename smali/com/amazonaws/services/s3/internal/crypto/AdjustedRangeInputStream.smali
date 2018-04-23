.class public Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;
.super Lcom/amazonaws/internal/SdkInputStream;
.source "AdjustedRangeInputStream.java"


# instance fields
.field private closed:Z

.field private decryptedContents:Ljava/io/InputStream;

.field private virtualAvailable:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/amazonaws/internal/SdkInputStream;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->decryptedContents:Ljava/io/InputStream;

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->closed:Z

    .line 46
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->initializeForRead(JJ)V

    return-void
.end method

.method private initializeForRead(JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x10

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    long-to-int v0, p1

    goto :goto_0

    .line 62
    :cond_0
    rem-long v0, p1, v0

    long-to-int v0, v0

    const/16 v1, 0x10

    add-int/2addr v0, v1

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    if-lez v0, :cond_1

    .line 71
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->decryptedContents:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    sub-long/2addr p3, p1

    const-wide/16 p1, 0x1

    add-long/2addr p3, p1

    .line 78
    iput-wide p3, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    return-void
.end method


# virtual methods
.method public available()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->abortIfNeeded()V

    .line 154
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->decryptedContents:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v1, v0

    .line 155
    iget-wide v3, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    return v0

    .line 160
    :cond_0
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    long-to-int v0, v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 172
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->closed:Z

    .line 173
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->decryptedContents:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->abortIfNeeded()V

    return-void
.end method

.method protected getWrappedInputStream()Ljava/io/InputStream;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->decryptedContents:Ljava/io/InputStream;

    return-object v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->abortIfNeeded()V

    .line 91
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->decryptedContents:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_0
    if-eq v0, v1, :cond_1

    .line 101
    iget-wide v1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    goto :goto_1

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->close()V

    .line 105
    iput-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    :goto_1
    return v0
.end method

.method public read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->abortIfNeeded()V

    .line 119
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-gtz v0, :cond_0

    move p1, v1

    goto :goto_1

    :cond_0
    int-to-long v4, p3

    .line 125
    iget-wide v6, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 129
    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    const-wide/32 v6, 0x7fffffff

    cmp-long p3, v4, v6

    if-gez p3, :cond_1

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    long-to-int p3, v4

    goto :goto_0

    :cond_1
    const p3, 0x7fffffff

    .line 133
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->decryptedContents:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    :goto_1
    if-eq p1, v1, :cond_3

    .line 138
    iget-wide p2, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    goto :goto_2

    .line 141
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->close()V

    .line 142
    iput-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    :goto_2
    return p1
.end method
