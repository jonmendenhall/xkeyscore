.class Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2$1;
.super Ljava/lang/Object;
.source "TransferManager.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ServiceUtils$RetryableS3DownloadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;->call()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;)V
    .locals 0

    .line 700
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2$1;->this$1:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getS3ObjectStream()Lcom/amazonaws/services/s3/model/S3Object;
    .locals 2

    .line 704
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2$1;->this$1:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;->this$0:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;

    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->access$000(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;)Lcom/amazonaws/services/s3/AmazonS3;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2$1;->this$1:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;

    iget-object v1, v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;->val$getObjectRequest:Lcom/amazonaws/services/s3/model/GetObjectRequest;

    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3;->getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v0

    .line 705
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2$1;->this$1:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;

    iget-object v1, v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;->val$download:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;

    invoke-virtual {v1, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->setS3Object(Lcom/amazonaws/services/s3/model/S3Object;)V

    return-object v0
.end method

.method public needIntegrityCheck()Z
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2$1;->this$1:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;->val$getObjectRequest:Lcom/amazonaws/services/s3/model/GetObjectRequest;

    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->skipMd5CheckPerRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2$1;->this$1:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;->this$0:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;

    .line 719
    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->access$000(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;)Lcom/amazonaws/services/s3/AmazonS3;

    move-result-object v0

    instance-of v0, v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
