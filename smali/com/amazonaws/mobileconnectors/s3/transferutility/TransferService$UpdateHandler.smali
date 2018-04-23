.class Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$UpdateHandler;
.super Landroid/os/Handler;
.source "TransferService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;Landroid/os/Looper;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$UpdateHandler;->this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;

    .line 230
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 235
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 237
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$UpdateHandler;->this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;

    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->access$100(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 238
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$UpdateHandler;->this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->checkTransfers()V

    goto :goto_0

    .line 239
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 240
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$UpdateHandler;->this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->execCommand(Landroid/content/Intent;)V

    goto :goto_0

    .line 241
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_2

    .line 242
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$UpdateHandler;->this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->pauseAllForNetwork()V

    goto :goto_0

    .line 244
    :cond_2
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
