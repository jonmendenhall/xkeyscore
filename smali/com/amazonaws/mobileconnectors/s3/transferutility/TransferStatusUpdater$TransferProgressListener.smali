.class Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;
.super Ljava/lang/Object;
.source "TransferStatusUpdater.java"

# interfaces
.implements Lcom/amazonaws/event/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransferProgressListener"
.end annotation


# instance fields
.field private bytesCurrent:J

.field final synthetic this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

.field private final transfer:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;->this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;->transfer:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    return-void
.end method


# virtual methods
.method public declared-synchronized progressChanged(Lcom/amazonaws/event/ProgressEvent;)V
    .locals 9

    monitor-enter p0

    .line 329
    :try_start_0
    invoke-virtual {p1}, Lcom/amazonaws/event/ProgressEvent;->getEventCode()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 332
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;->transfer:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-wide v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bytesCurrent:J

    iget-wide v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;->bytesCurrent:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bytesCurrent:J

    const-wide/16 v0, 0x0

    .line 333
    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;->bytesCurrent:J

    goto :goto_0

    .line 335
    :cond_0
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;->bytesCurrent:J

    invoke-virtual {p1}, Lcom/amazonaws/event/ProgressEvent;->getBytesTransferred()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;->bytesCurrent:J

    .line 336
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;->transfer:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-wide v1, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bytesCurrent:J

    invoke-virtual {p1}, Lcom/amazonaws/event/ProgressEvent;->getBytesTransferred()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bytesCurrent:J

    .line 338
    :goto_0
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;->this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;->transfer:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v4, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;->transfer:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-wide v5, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bytesCurrent:J

    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;->transfer:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-wide v7, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bytesTotal:J

    invoke-virtual/range {v3 .. v8}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateProgress(IJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 328
    monitor-exit p0

    throw p1
.end method
