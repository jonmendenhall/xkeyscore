.class public Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "ProgressReportingInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final NOTIFICATION_THRESHOLD:I = 0x2000


# instance fields
.field private fireCompletedEvent:Z

.field private final listener:Lcom/amazonaws/services/s3/model/ProgressListener;

.field private unnotifiedByteCount:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 63
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->listener:Lcom/amazonaws/services/s3/model/ProgressListener;

    return-void
.end method

.method private notify(I)V
    .locals 2

    .line 144
    iget v0, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->unnotifiedByteCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->unnotifiedByteCount:I

    .line 145
    iget p1, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->unnotifiedByteCount:I

    const/16 v0, 0x2000

    if-lt p1, v0, :cond_0

    .line 146
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->listener:Lcom/amazonaws/services/s3/model/ProgressListener;

    new-instance v0, Lcom/amazonaws/services/s3/model/ProgressEvent;

    iget v1, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->unnotifiedByteCount:I

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/ProgressEvent;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/amazonaws/services/s3/model/ProgressListener;->progressChanged(Lcom/amazonaws/services/s3/model/ProgressEvent;)V

    const/4 p1, 0x0

    .line 147
    iput p1, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->unnotifiedByteCount:I

    :cond_0
    return-void
.end method

.method private notifyCompleted()V
    .locals 2

    .line 133
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->fireCompletedEvent:Z

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    new-instance v0, Lcom/amazonaws/services/s3/model/ProgressEvent;

    iget v1, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->unnotifiedByteCount:I

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/ProgressEvent;-><init>(I)V

    const/4 v1, 0x4

    .line 138
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ProgressEvent;->setEventCode(I)V

    const/4 v1, 0x0

    .line 139
    iput v1, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->unnotifiedByteCount:I

    .line 140
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->listener:Lcom/amazonaws/services/s3/model/ProgressListener;

    invoke-interface {v1, v0}, Lcom/amazonaws/services/s3/model/ProgressListener;->progressChanged(Lcom/amazonaws/services/s3/model/ProgressEvent;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget v0, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->unnotifiedByteCount:I

    if-lez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->listener:Lcom/amazonaws/services/s3/model/ProgressListener;

    new-instance v1, Lcom/amazonaws/services/s3/model/ProgressEvent;

    iget v2, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->unnotifiedByteCount:I

    invoke-direct {v1, v2}, Lcom/amazonaws/services/s3/model/ProgressEvent;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/model/ProgressListener;->progressChanged(Lcom/amazonaws/services/s3/model/ProgressEvent;)V

    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->unnotifiedByteCount:I

    .line 129
    :cond_0
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->close()V

    return-void
.end method

.method public getFireCompletedEvent()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->fireCompletedEvent:Z

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->notifyCompleted()V

    :cond_0
    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    .line 97
    invoke-direct {p0, v1}, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->notify(I)V

    :cond_1
    return v0
.end method

.method public read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/internal/SdkFilterInputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->notifyCompleted()V

    :cond_0
    if-eq p1, p2, :cond_1

    .line 118
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->notify(I)V

    :cond_1
    return p1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->reset()V

    .line 105
    new-instance v0, Lcom/amazonaws/services/s3/model/ProgressEvent;

    iget v1, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->unnotifiedByteCount:I

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/ProgressEvent;-><init>(I)V

    const/16 v1, 0x20

    .line 106
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ProgressEvent;->setEventCode(I)V

    .line 107
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->listener:Lcom/amazonaws/services/s3/model/ProgressListener;

    invoke-interface {v1, v0}, Lcom/amazonaws/services/s3/model/ProgressListener;->progressChanged(Lcom/amazonaws/services/s3/model/ProgressEvent;)V

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->unnotifiedByteCount:I

    return-void
.end method

.method public setFireCompletedEvent(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->fireCompletedEvent:Z

    return-void
.end method
