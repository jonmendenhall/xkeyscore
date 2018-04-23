.class Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$2;
.super Ljava/lang/Object;
.source "TransferStatusUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateProgress(IJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

.field final synthetic val$bytesCurrent:J

.field final synthetic val$bytesTotal:J

.field final synthetic val$id:I

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Ljava/util/List;IJJ)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$2;->this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$2;->val$list:Ljava/util/List;

    iput p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$2;->val$id:I

    iput-wide p4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$2;->val$bytesCurrent:J

    iput-wide p6, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$2;->val$bytesTotal:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 227
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$2;->val$list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

    .line 228
    iget v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$2;->val$id:I

    iget-wide v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$2;->val$bytesCurrent:J

    iget-wide v6, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$2;->val$bytesTotal:J

    invoke-interface/range {v2 .. v7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;->onProgressChanged(IJJ)V

    goto :goto_0

    :cond_0
    return-void
.end method
