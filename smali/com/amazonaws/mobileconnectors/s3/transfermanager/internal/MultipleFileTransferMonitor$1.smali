.class Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor$1;
.super Ljava/lang/Object;
.source "MultipleFileTransferMonitor.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor$1;->this$0:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor$1;->this$0:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;

    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;->access$000(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;

    .line 53
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->getMonitor()Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor$1;->this$0:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;

    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;->access$000(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;

    .line 64
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->getMonitor()Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public isCancelled()Z
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor$1;->this$0:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;

    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;->access$100(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->getState()Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Canceled:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor$1;->this$0:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;->isDone()Z

    move-result v0

    return v0
.end method
