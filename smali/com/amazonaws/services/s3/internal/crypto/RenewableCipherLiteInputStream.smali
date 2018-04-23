.class public final Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;
.super Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;
.source "RenewableCipherLiteInputStream.java"


# instance fields
.field private hasBeenAccessed:Z


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;IZZ)V
    .locals 0

    .line 59
    invoke-direct/range {p0 .. p5}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;IZZ)V

    return-void
.end method


# virtual methods
.method public mark(I)V
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;->abortIfNeeded()V

    .line 90
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;->hasBeenAccessed:Z

    if-eqz v0, :cond_0

    .line 91
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Marking is only supported before your first call to read or skip."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;->abortIfNeeded()V

    .line 75
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;->hasBeenAccessed:Z

    .line 118
    invoke-super {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;->hasBeenAccessed:Z

    .line 124
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;->hasBeenAccessed:Z

    .line 131
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;->abortIfNeeded()V

    .line 109
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 110
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;->renewCipherLite()V

    .line 111
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;->resetInternal()V

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;->hasBeenAccessed:Z

    return-void
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;->hasBeenAccessed:Z

    .line 137
    invoke-super {p0, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
