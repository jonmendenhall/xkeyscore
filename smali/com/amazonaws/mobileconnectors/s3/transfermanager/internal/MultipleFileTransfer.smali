.class public abstract Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;
.super Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;
.source "MultipleFileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;",
        ">",
        "Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;"
    }
.end annotation


# instance fields
.field private subTransferStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final subTransfers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;",
            "Lcom/amazonaws/event/ProgressListenerChain;",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;-><init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;)V

    .line 34
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->subTransferStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->subTransfers:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public collateFinalState()V
    .locals 5

    .line 52
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->subTransfers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;

    .line 53
    invoke-interface {v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;->getState()Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    move-result-object v3

    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Failed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    if-ne v3, v4, :cond_1

    .line 54
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Failed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    return-void

    .line 56
    :cond_1
    invoke-interface {v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;->getState()Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    move-result-object v2

    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Canceled:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 61
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Canceled:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    goto :goto_1

    .line 63
    :cond_3
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Completed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    :goto_1
    return-void
.end method

.method public setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V
    .locals 2

    .line 72
    invoke-super {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    .line 74
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer$1;->$SwitchMap$com$amazonaws$mobileconnectors$s3$transfermanager$Transfer$TransferState:[I

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x8

    .line 95
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->fireProgressEvent(I)V

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x10

    .line 92
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->fireProgressEvent(I)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x4

    .line 89
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->fireProgressEvent(I)V

    goto :goto_0

    .line 79
    :pswitch_3
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->subTransferStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 81
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->fireProgressEvent(I)V

    goto :goto_0

    .line 76
    :pswitch_4
    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->fireProgressEvent(I)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
