.class public abstract Lcom/amazonaws/services/s3/internal/AbstractRepeatableCipherInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "AbstractRepeatableCipherInputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazonaws/internal/SdkFilterInputStream;"
    }
.end annotation


# instance fields
.field private final cipherFactory:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private hasBeenAccessed:Z

.field private final unencryptedDataStream:Ljava/io/InputStream;


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;Ljava/io/FilterInputStream;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/FilterInputStream;",
            "TT;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p2}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 70
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableCipherInputStream;->unencryptedDataStream:Ljava/io/InputStream;

    .line 71
    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableCipherInputStream;->cipherFactory:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected abstract createCipherInputStream(Ljava/io/InputStream;Ljava/lang/Object;)Ljava/io/FilterInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "TT;)",
            "Ljava/io/FilterInputStream;"
        }
    .end annotation
.end method

.method public mark(I)V
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/AbstractRepeatableCipherInputStream;->abortIfNeeded()V

    .line 83
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableCipherInputStream;->hasBeenAccessed:Z

    if-eqz v0, :cond_0

    .line 84
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Marking is only supported before your first call to read or skip."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableCipherInputStream;->unencryptedDataStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/AbstractRepeatableCipherInputStream;->abortIfNeeded()V

    .line 77
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableCipherInputStream;->unencryptedDataStream:Ljava/io/InputStream;

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

    .line 102
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableCipherInputStream;->hasBeenAccessed:Z

    .line 103
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->read()I

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

    .line 108
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableCipherInputStream;->hasBeenAccessed:Z

    .line 109
    invoke-super {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;->read([B)I

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

    .line 116
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableCipherInputStream;->hasBeenAccessed:Z

    .line 117
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/internal/SdkFilterInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/AbstractRepeatableCipherInputStream;->abortIfNeeded()V

    .line 95
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableCipherInputStream;->unencryptedDataStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 96
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableCipherInputStream;->unencryptedDataStream:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableCipherInputStream;->cipherFactory:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/services/s3/internal/AbstractRepeatableCipherInputStream;->createCipherInputStream(Ljava/io/InputStream;Ljava/lang/Object;)Ljava/io/FilterInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableCipherInputStream;->in:Ljava/io/InputStream;

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableCipherInputStream;->hasBeenAccessed:Z

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

    .line 122
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableCipherInputStream;->hasBeenAccessed:Z

    .line 123
    invoke-super {p0, p1, p2}, Lcom/amazonaws/internal/SdkFilterInputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
