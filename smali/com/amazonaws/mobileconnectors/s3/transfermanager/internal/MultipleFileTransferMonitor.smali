.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;
.super Ljava/lang/Object;
.source "MultipleFileTransferMonitor.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;


# instance fields
.field private final future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final subTransfers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;",
            ">;"
        }
    .end annotation
.end field

.field private final transfer:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;->subTransfers:Ljava/util/Collection;

    .line 35
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;->transfer:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;

    .line 42
    new-instance p1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor$1;

    invoke-direct {p1, p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor$1;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;)V

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;->future:Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic access$000(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;)Ljava/util/Collection;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;->subTransfers:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;->transfer:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;

    return-object p0
.end method


# virtual methods
.method public getFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;->future:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public declared-synchronized isDone()Z
    .locals 2

    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;->subTransfers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;

    .line 89
    invoke-interface {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;->isDone()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 90
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x1

    .line 92
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 87
    monitor-exit p0

    throw v0
.end method
