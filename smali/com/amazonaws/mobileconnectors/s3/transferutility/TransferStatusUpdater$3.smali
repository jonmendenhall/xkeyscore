.class Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$3;
.super Ljava/lang/Object;
.source "TransferStatusUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->throwError(ILjava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$id:I

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Ljava/util/List;ILjava/lang/Exception;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$3;->this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$3;->val$list:Ljava/util/List;

    iput p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$3;->val$id:I

    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$3;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$3;->val$list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

    .line 253
    iget v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$3;->val$id:I

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$3;->val$e:Ljava/lang/Exception;

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;->onError(ILjava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method
