.class Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;
.super Ljava/lang/Object;
.source "UploadPartTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/commons/logging/Log;


# instance fields
.field private final dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

.field private final networkInfoReceiver:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

.field private final request:Lcom/amazonaws/services/s3/model/UploadPartRequest;

.field private final s3:Lcom/amazonaws/services/s3/AmazonS3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->LOGGER:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/model/UploadPartRequest;Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->request:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 43
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    .line 44
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->networkInfoReceiver:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/model/UploadPartRequest;Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->request:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 53
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    .line 54
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 55
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->networkInfoReceiver:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->request:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3;->uploadPart(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->request:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getId()I

    move-result v2

    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PART_COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->updateState(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)I

    .line 66
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->request:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/UploadPartResult;->getETag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->updateETag(ILjava/lang/String;)I

    const/4 v0, 0x1

    .line 67
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 69
    invoke-static {v0}, Lcom/amazonaws/retry/RetryUtils;->isInterrupted(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 71
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->networkInfoReceiver:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->networkInfoReceiver:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    .line 74
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;->isNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->request:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getId()I

    move-result v2

    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->updateState(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)I

    .line 80
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->LOGGER:Lorg/apache/commons/logging/Log;

    const-string v2, "Network Connection Interrupted: Moving the TransferState to WAITING_FOR_NETWORK"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->request:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getId()I

    move-result v2

    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->updateState(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)I

    .line 84
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->LOGGER:Lorg/apache/commons/logging/Log;

    const-string v2, "Encountered error uploading part "

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 86
    :goto_0
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
