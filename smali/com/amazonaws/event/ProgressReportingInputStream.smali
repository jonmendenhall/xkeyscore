.class public Lcom/amazonaws/event/ProgressReportingInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "ProgressReportingInputStream.java"


# static fields
.field private static final NOTIFICATION_THRESHOLD:I = 0x2000


# instance fields
.field private fireCompletedEvent:Z

.field private final listenerCallbackExecutor:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

.field private unnotifiedByteCount:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 66
    iput-object p2, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->listenerCallbackExecutor:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    return-void
.end method

.method private notify(I)V
    .locals 3

    .line 143
    iget v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->unnotifiedByteCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->unnotifiedByteCount:I

    .line 144
    iget p1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->unnotifiedByteCount:I

    const/16 v0, 0x2000

    if-lt p1, v0, :cond_0

    .line 145
    iget-object p1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->listenerCallbackExecutor:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    iget v1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->unnotifiedByteCount:I

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    invoke-virtual {p1, v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->progressChanged(Lcom/amazonaws/event/ProgressEvent;)V

    const/4 p1, 0x0

    .line 146
    iput p1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->unnotifiedByteCount:I

    :cond_0
    return-void
.end method

.method private notifyCompleted()V
    .locals 3

    .line 133
    iget-boolean v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->fireCompletedEvent:Z

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    iget v1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->unnotifiedByteCount:I

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    const/4 v1, 0x4

    .line 137
    invoke-virtual {v0, v1}, Lcom/amazonaws/event/ProgressEvent;->setEventCode(I)V

    const/4 v1, 0x0

    .line 138
    iput v1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->unnotifiedByteCount:I

    .line 139
    iget-object v1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->listenerCallbackExecutor:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    invoke-virtual {v1, v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->progressChanged(Lcom/amazonaws/event/ProgressEvent;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->unnotifiedByteCount:I

    if-lez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->listenerCallbackExecutor:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    new-instance v1, Lcom/amazonaws/event/ProgressEvent;

    iget v2, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->unnotifiedByteCount:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->progressChanged(Lcom/amazonaws/event/ProgressEvent;)V

    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->unnotifiedByteCount:I

    .line 129
    :cond_0
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->close()V

    return-void
.end method

.method public getFireCompletedEvent()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->fireCompletedEvent:Z

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/amazonaws/event/ProgressReportingInputStream;->notifyCompleted()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 99
    invoke-direct {p0, v1}, Lcom/amazonaws/event/ProgressReportingInputStream;->notify(I)V

    :goto_0
    return v0
.end method

.method public read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/internal/SdkFilterInputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/amazonaws/event/ProgressReportingInputStream;->notifyCompleted()V

    :cond_0
    if-eq p1, p2, :cond_1

    .line 119
    invoke-direct {p0, p1}, Lcom/amazonaws/event/ProgressReportingInputStream;->notify(I)V

    :cond_1
    return p1
.end method

.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->reset()V

    .line 107
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    iget v1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->unnotifiedByteCount:I

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    const/16 v1, 0x20

    .line 108
    invoke-virtual {v0, v1}, Lcom/amazonaws/event/ProgressEvent;->setEventCode(I)V

    .line 109
    iget-object v1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->listenerCallbackExecutor:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    invoke-virtual {v1, v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->progressChanged(Lcom/amazonaws/event/ProgressEvent;)V

    const/4 v0, 0x0

    .line 110
    iput v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->unnotifiedByteCount:I

    return-void
.end method

.method public setFireCompletedEvent(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->fireCompletedEvent:Z

    return-void
.end method
