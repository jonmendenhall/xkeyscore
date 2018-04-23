.class Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;
.super Ljava/lang/Object;
.source "TransferStatusUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;
    }
.end annotation


# static fields
.field static final LISTENERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final LOGGER:Lorg/apache/commons/logging/Log;

.field private static final STATES_NOT_TO_NOTIFY:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;",
            ">;"
        }
    .end annotation
.end field

.field private static final UPDATE_THRESHOLD_MS:I = 0x3e8


# instance fields
.field private final dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

.field private final lastUpdateTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mainHandler:Landroid/os/Handler;

.field private final transfers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->LOGGER:Lorg/apache/commons/logging/Log;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PART_COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_CANCEL:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_PAUSE:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_NETWORK_DISCONNECT:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 45
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->STATES_NOT_TO_NOTIFY:Ljava/util/HashSet;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->LISTENERS:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 82
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->mainHandler:Landroid/os/Handler;

    .line 83
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->transfers:Ljava/util/Map;

    .line 84
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->lastUpdateTime:Ljava/util/Map;

    return-void
.end method

.method static registerListener(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V
    .locals 3

    if-nez p1, :cond_0

    .line 276
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Listener can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 278
    :cond_0
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->LISTENERS:Ljava/util/Map;

    monitor-enter v0

    .line 279
    :try_start_0
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->LISTENERS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    .line 281
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 282
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->LISTENERS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 286
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 287
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static unregisterListener(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V
    .locals 1

    if-nez p1, :cond_0

    .line 301
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Listener can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 303
    :cond_0
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->LISTENERS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_2

    .line 304
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 307
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method addTransfer(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->transfers:Ljava/util/Map;

    iget v1, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method clear()V
    .locals 1

    .line 263
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->LISTENERS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 264
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->transfers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 265
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->lastUpdateTime:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method getTransfer(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->transfers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    return-object p1
.end method

.method getTransfers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->transfers:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method newProgressListener(I)Lcom/amazonaws/event/ProgressListener;
    .locals 3

    .line 350
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->getTransfer(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transfer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t exist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_0
    new-instance p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;

    invoke-direct {p1, p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)V

    return-object p1
.end method

.method removeTransfer(I)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->transfers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->LISTENERS:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->lastUpdateTime:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method throwError(ILjava/lang/Exception;)V
    .locals 3

    .line 244
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->LISTENERS:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 245
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$3;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$3;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Ljava/util/List;ILjava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method updateProgress(IJJ)V
    .locals 13

    move-object v8, p0

    move-wide v4, p2

    move-wide/from16 v6, p4

    .line 197
    iget-object v0, v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->transfers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    if-eqz v0, :cond_0

    .line 199
    iput-wide v4, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bytesCurrent:J

    .line 200
    iput-wide v6, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bytesTotal:J

    .line 205
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 209
    iget-object v2, v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    move v3, p1

    invoke-virtual {v2, v3, v4, v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->updateBytesTransferred(IJ)I

    .line 212
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->LISTENERS:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_4

    .line 213
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    .line 218
    :cond_1
    iget-object v9, v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->lastUpdateTime:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->lastUpdateTime:Ljava/util/Map;

    .line 219
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long v9, v0, v9

    const-wide/16 v11, 0x3e8

    cmp-long v9, v9, v11

    if-gtz v9, :cond_2

    cmp-long v9, v4, v6

    if-nez v9, :cond_3

    .line 221
    :cond_2
    iget-object v9, v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->lastUpdateTime:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v9, v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->mainHandler:Landroid/os/Handler;

    new-instance v10, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$2;

    move-object v0, v10

    move-object v1, v8

    invoke-direct/range {v0 .. v7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$2;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Ljava/util/List;IJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method updateState(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V
    .locals 4

    .line 143
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->STATES_NOT_TO_NOTIFY:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 144
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->transfers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    if-nez v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v1, p1, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->updateState(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)I

    move-result v1

    if-nez v1, :cond_1

    .line 148
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->LOGGER:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update the status of transfer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->state:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {p2, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 152
    iput-object p2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->state:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 154
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v2, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->updateTransferRecord(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)I

    move-result v1

    if-nez v1, :cond_1

    .line 155
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->LOGGER:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update the status of transfer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    return-void

    .line 164
    :cond_2
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->LISTENERS:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    .line 165
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 170
    :cond_3
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$1;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Ljava/util/List;ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    :goto_1
    return-void
.end method
