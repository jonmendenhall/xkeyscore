.class Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$1;
.super Ljava/lang/Object;
.source "TransferStatusUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

.field final synthetic val$id:I

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$newState:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Ljava/util/List;ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$1;->this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$1;->val$list:Ljava/util/List;

    iput p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$1;->val$id:I

    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$1;->val$newState:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$1;->val$list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

    .line 174
    iget v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$1;->val$id:I

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$1;->val$newState:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;->onStateChanged(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    goto :goto_0

    .line 178
    :cond_0
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$1;->val$newState:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$1;->val$newState:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 179
    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->CANCELED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$1;->val$newState:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 180
    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$1;->val$list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method
