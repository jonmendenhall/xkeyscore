.class Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord$1;
.super Ljava/lang/Object;
.source "TransferRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->cancel(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

.field final synthetic val$s3:Lcom/amazonaws/services/s3/AmazonS3;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;Lcom/amazonaws/services/s3/AmazonS3;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord$1;->this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord$1;->val$s3:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord$1;->val$s3:Lcom/amazonaws/services/s3/AmazonS3;

    new-instance v1, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord$1;->this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bucketName:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord$1;->this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord$1;->this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v4, v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->multipartId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3;->abortMultipartUpload(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V

    .line 218
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully clean up multipart upload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord$1;->this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 220
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to abort multiplart upload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord$1;->this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
