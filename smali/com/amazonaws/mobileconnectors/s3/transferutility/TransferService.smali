.class public Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;
.super Landroid/app/Service;
.source "TransferService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$UpdateHandler;,
        Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;
    }
.end annotation


# static fields
.field static final INTENT_ACTION_TRANSFER_ADD:Ljava/lang/String; = "add_transfer"

.field static final INTENT_ACTION_TRANSFER_CANCEL:Ljava/lang/String; = "cancel_transfer"

.field static final INTENT_ACTION_TRANSFER_PAUSE:Ljava/lang/String; = "pause_transfer"

.field static final INTENT_ACTION_TRANSFER_RESUME:Ljava/lang/String; = "resume_transfer"

.field static final INTENT_BUNDLE_S3_REFERENCE_KEY:Ljava/lang/String; = "s3_reference_key"

.field static final INTENT_BUNDLE_TRANSFER_ID:Ljava/lang/String; = "id"

.field private static final LOGGER:Lorg/apache/commons/logging/Log;

.field private static final MINUTE_IN_MILLIS:I = 0xea60

.field static final MSG_CHECK:I = 0xc8

.field static final MSG_DISCONNECT:I = 0x12c

.field static final MSG_EXEC:I = 0x64

.field private static final TAG:Ljava/lang/String; = "TransferService"

.field static final UNFINISHED_TRANSFER_STATES:[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;


# instance fields
.field private dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

.field private handlerThread:Landroid/os/HandlerThread;

.field private isFirst:Z

.field private volatile lastActiveTime:J

.field private networkInfoReceiver:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

.field private s3:Lcom/amazonaws/services/s3/AmazonS3;

.field private shouldScan:Z

.field private volatile startId:I

.field private updateHandler:Landroid/os/Handler;

.field updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->LOGGER:Lorg/apache/commons/logging/Log;

    const/4 v0, 0x4

    .line 77
    new-array v0, v0, [Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->IN_PROGRESS:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->RESUMED_WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->UNFINISHED_TRANSFER_STATES:[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->shouldScan:Z

    .line 106
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->isFirst:Z

    return-void
.end method

.method static synthetic access$000()Lorg/apache/commons/logging/Log;
    .locals 1

    .line 50
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->LOGGER:Lorg/apache/commons/logging/Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;)Landroid/os/Handler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updateHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private isActive()Z
    .locals 6

    .line 349
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->shouldScan:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->getTransfers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 353
    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 357
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->lastActiveTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private removeCompletedTransfers()V
    .locals 5

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 365
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->getTransfers()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 366
    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    iget-object v4, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->state:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v3, v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 372
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 375
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 376
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->removeTransfer(I)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method checkTransfers()V
    .locals 4

    .line 255
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->shouldScan:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->networkInfoReceiver:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->loadTransfersFromDB()V

    const/4 v0, 0x0

    .line 257
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->shouldScan:Z

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->removeCompletedTransfers()V

    .line 262
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->lastActiveTime:J

    .line 265
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updateHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 270
    :cond_1
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->LOGGER:Lorg/apache/commons/logging/Log;

    const-string v1, "Stop self"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 271
    iget v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->startId:I

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->stopSelf(I)V

    :goto_0
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    .line 450
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 p3, 0x2

    and-int/2addr p1, p3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "start id: %d\n"

    const/4 v0, 0x1

    .line 454
    new-array v1, v0, [Ljava/lang/Object;

    iget v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->startId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2, p1, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string p1, "network status: %s\n"

    .line 455
    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->networkInfoReceiver:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;->isNetworkConnected()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p2, p1, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string p1, "lastActiveTime: %s, shouldScan: %s\n"

    .line 456
    new-array v1, p3, [Ljava/lang/Object;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->lastActiveTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->shouldScan:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p2, p1, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 457
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->getTransfers()Ljava/util/Map;

    move-result-object p1

    const-string v1, "# of active transfers: %d\n"

    .line 458
    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 459
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    const-string v2, "bucket: %s, key: %s, status: %s, total size: %d, current: %d\n"

    const/4 v4, 0x5

    .line 460
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bucketName:Ljava/lang/String;

    aput-object v5, v4, v3

    iget-object v5, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->key:Ljava/lang/String;

    aput-object v5, v4, v0

    iget-object v5, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->state:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    aput-object v5, v4, p3

    const/4 v5, 0x3

    iget-wide v6, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bytesTotal:J

    .line 461
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-wide v6, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bytesCurrent:J

    .line 462
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v5

    .line 460
    invoke-virtual {p2, v2, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_0

    .line 464
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method execCommand(Landroid/content/Intent;)V
    .locals 4

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->lastActiveTime:J

    .line 284
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    const/4 v2, 0x0

    .line 285
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    .line 288
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->LOGGER:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v1, "add_transfer"

    .line 292
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 293
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->getTransfer(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 294
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->LOGGER:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transfer has already been added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->getTransferById(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 302
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {p1, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->addTransfer(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)V

    .line 303
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->networkInfoReceiver:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->start(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;)Z

    goto/16 :goto_1

    .line 305
    :cond_2
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->LOGGER:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find transfer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    const-string v1, "pause_transfer"

    .line 308
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 309
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->getTransfer(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v0

    if-nez v0, :cond_4

    .line 311
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->getTransferById(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_b

    .line 314
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v0, p1, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->pause(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;)Z

    goto/16 :goto_1

    :cond_5
    const-string v1, "resume_transfer"

    .line 316
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 317
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->getTransfer(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v0

    if-nez v0, :cond_7

    .line 319
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->getTransferById(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 321
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {p1, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->addTransfer(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)V

    goto :goto_0

    .line 323
    :cond_6
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->LOGGER:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find transfer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    :cond_7
    :goto_0
    if-eqz v0, :cond_b

    .line 327
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->networkInfoReceiver:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->start(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;)Z

    goto :goto_1

    :cond_8
    const-string v1, "cancel_transfer"

    .line 329
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 330
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->getTransfer(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v0

    if-nez v0, :cond_9

    .line 332
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->getTransferById(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v0

    :cond_9
    if-eqz v0, :cond_b

    .line 335
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v0, p1, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->cancel(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;)Z

    goto :goto_1

    .line 338
    :cond_a
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->LOGGER:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    :cond_b
    :goto_1
    return-void
.end method

.method loadTransfersFromDB()V
    .locals 8

    .line 387
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->LOGGER:Lorg/apache/commons/logging/Log;

    const-string v1, "Loading transfers from database"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->ANY:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->UNFINISHED_TRANSFER_STATES:[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->queryTransfersWithTypeAndStates(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 394
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "_id"

    .line 395
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "state"

    .line 397
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 396
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->getState(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const-string v3, "part_num"

    .line 398
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 401
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v3, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->getTransfer(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v3

    if-nez v3, :cond_1

    .line 402
    new-instance v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    invoke-direct {v3, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;-><init>(I)V

    .line 403
    invoke-virtual {v3, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->updateFromDB(Landroid/database/Cursor;)V

    .line 404
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->networkInfoReceiver:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->start(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->addTransfer(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 409
    :cond_1
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v3, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->getTransfer(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v2

    .line 410
    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 411
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->networkInfoReceiver:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->start(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 418
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 421
    :cond_3
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->LOGGER:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " transfers are loaded from database"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_1
    if-eqz v1, :cond_4

    .line 418
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 119
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Can\'t bind to TransferService"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate()V
    .locals 3

    .line 132
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 134
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->LOGGER:Lorg/apache/commons/logging/Log;

    const-string v1, "Starting Transfer Service"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 135
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 136
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-direct {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;)V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 138
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-AWSTransferUpdateHandlerThread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->handlerThread:Landroid/os/HandlerThread;

    .line 139
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 140
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->setHandlerLooper(Landroid/os/Looper;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->networkInfoReceiver:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 219
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->LOGGER:Lorg/apache/commons/logging/Log;

    const-string v2, "exception trying to destroy the service"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 221
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 222
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->closeThreadPool()V

    .line 223
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/S3ClientReference;->clear()V

    .line 224
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->closeDB()V

    .line 225
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 184
    iput p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->startId:I

    if-nez p1, :cond_0

    const/4 p1, 0x3

    return p1

    :cond_0
    const-string p2, "s3_reference_key"

    .line 190
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 191
    invoke-static {p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/S3ClientReference;->get(Ljava/lang/String;)Lcom/amazonaws/services/s3/AmazonS3;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    .line 192
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    const/4 v0, 0x2

    if-nez p2, :cond_1

    .line 193
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->LOGGER:Lorg/apache/commons/logging/Log;

    const-string p2, "TransferService can\'t get s3 client, and it will stop."

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 194
    invoke-virtual {p0, p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->stopSelf(I)V

    return v0

    .line 198
    :cond_1
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updateHandler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updateHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {p3, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 199
    iget-boolean p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->isFirst:Z

    if-eqz p1, :cond_2

    .line 200
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->networkInfoReceiver:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 202
    iput-boolean p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->isFirst:Z

    :cond_2
    return v0
.end method

.method pauseAllForNetwork()V
    .locals 4

    .line 428
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->getTransfers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 429
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->pause(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 431
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget v1, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v2, v1, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 434
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->shouldScan:Z

    return-void
.end method

.method setHandlerLooper(Landroid/os/Looper;)V
    .locals 2

    .line 443
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$UpdateHandler;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$UpdateHandler;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updateHandler:Landroid/os/Handler;

    .line 444
    new-instance p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updateHandler:Landroid/os/Handler;

    invoke-direct {p1, v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->networkInfoReceiver:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    return-void
.end method
