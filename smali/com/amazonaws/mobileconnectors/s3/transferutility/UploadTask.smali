.class Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;
.super Ljava/lang/Object;
.source "UploadTask.java"

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
.field private static final CANNED_ACL_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/model/CannedAccessControlList;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Lorg/apache/commons/logging/Log;


# instance fields
.field private final dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

.field private final networkInfo:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

.field private final s3:Lcom/amazonaws/services/s3/AmazonS3;

.field private final updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

.field private final upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 49
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lorg/apache/commons/logging/Log;

    .line 332
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->CANNED_ACL_MAP:Ljava/util/Map;

    .line 333
    invoke-static {}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->values()[Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 334
    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->CANNED_ACL_MAP:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 60
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    .line 61
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 62
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 63
    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->networkInfo:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    return-void
.end method

.method private completeMultiPartUpload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->queryPartETagsOfUpload(I)Ljava/util/List;

    move-result-object p1

    .line 248
    new-instance v0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 250
    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->appendMultipartTransferServiceUserAgentString(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 251
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-interface {p1, v0}, Lcom/amazonaws/services/s3/AmazonS3;->completeMultipartUpload(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    return-void
.end method

.method private createPutObjectRequest(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 5

    .line 283
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->file:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    new-instance v1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    iget-object v2, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bucketName:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->key:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 287
    new-instance v2, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 288
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    .line 290
    iget-object v3, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->headerCacheControl:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 291
    iget-object v3, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->headerCacheControl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setCacheControl(Ljava/lang/String;)V

    .line 293
    :cond_0
    iget-object v3, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->headerContentDisposition:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 294
    iget-object v3, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->headerContentDisposition:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentDisposition(Ljava/lang/String;)V

    .line 296
    :cond_1
    iget-object v3, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->headerContentEncoding:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 297
    iget-object v3, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->headerContentEncoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentEncoding(Ljava/lang/String;)V

    .line 299
    :cond_2
    iget-object v3, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->headerContentType:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 300
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->headerContentType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :cond_3
    invoke-static {}, Lcom/amazonaws/services/s3/util/Mimetypes;->getInstance()Lcom/amazonaws/services/s3/util/Mimetypes;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/amazonaws/services/s3/util/Mimetypes;->getMimetype(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 304
    :goto_0
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->expirationTimeRuleId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 305
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->expirationTimeRuleId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setExpirationTimeRuleId(Ljava/lang/String;)V

    .line 307
    :cond_4
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->httpExpires:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 308
    new-instance v0, Ljava/util/Date;

    iget-object v3, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->httpExpires:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setHttpExpiresDate(Ljava/util/Date;)V

    .line 310
    :cond_5
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->sseAlgorithm:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 311
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->sseAlgorithm:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setSSEAlgorithm(Ljava/lang/String;)V

    .line 313
    :cond_6
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->userMetadata:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 314
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->userMetadata:Ljava/util/Map;

    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setUserMetadata(Ljava/util/Map;)V

    .line 316
    :cond_7
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->md5:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 317
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->md5:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentMD5(Ljava/lang/String;)V

    .line 319
    :cond_8
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->sseKMSKey:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 320
    new-instance v0, Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    iget-object v3, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->sseKMSKey:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setSSEAwsKeyManagementParams(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V

    .line 324
    :cond_9
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 325
    iget-object p1, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->cannedAcl:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->getCannedAclFromString(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V

    return-object v1
.end method

.method private static getCannedAclFromString(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 339
    :cond_0
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->CANNED_ACL_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    :goto_0
    return-object p0
.end method

.method private initiateMultipartUpload(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/lang/String;
    .locals 3

    .line 262
    new-instance v0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    .line 263
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->withCannedACL(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object v0

    .line 265
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->withObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object v0

    .line 267
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getSSEAwsKeyManagementParams()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    move-result-object p1

    .line 266
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->withSSEAwsKeyManagementParams(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object p1

    .line 269
    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->appendMultipartTransferServiceUserAgentString(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 270
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3;->initiateMultipartUpload(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private uploadMultipartAndWaitForCompletion()Ljava/lang/Boolean;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->multipartId:Ljava/lang/String;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->multipartId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v5, v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v0, v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->queryBytesTransferredByMainUploadId(I)J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-lez v0, :cond_1

    .line 119
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lorg/apache/commons/logging/Log;

    const-string v1, "Resume transfer %d from %d bytes"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v7, v7, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    .line 120
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v3

    .line 119
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_1
    move-wide v9, v5

    goto :goto_1

    .line 100
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->createPutObjectRequest(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->appendMultipartTransferServiceUserAgentString(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 103
    :try_start_0
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->initiateMultipartUpload(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->multipartId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_3

    .line 111
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v5, v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v6, v6, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->multipartId:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->updateMultipartId(ILjava/lang/String;)I

    move-wide v9, v1

    .line 123
    :goto_1
    iget-object v7, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v8, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-wide v11, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bytesTotal:J

    invoke-virtual/range {v7 .. v12}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateProgress(IJJ)V

    .line 125
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v1, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->multipartId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->getNonCompletedPartRequestsFromDB(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 127
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "multipart upload "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v5, v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " in "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " parts."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 130
    invoke-static {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->appendMultipartTransferServiceUserAgentString(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 131
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v6, v6, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v5, v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->newProgressListener(I)Lcom/amazonaws/event/ProgressListener;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)V

    .line 132
    new-instance v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object v7, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v8, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->networkInfo:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    invoke-direct {v5, v2, v6, v7, v8}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;-><init>(Lcom/amazonaws/services/s3/model/UploadPartRequest;Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;)V

    invoke-static {v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->submitTask(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 140
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v3

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    .line 143
    invoke-interface {v5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    and-int/2addr v2, v5

    goto :goto_3

    :cond_4
    if-nez v2, :cond_5

    .line 147
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 191
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v0, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v1, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bucketName:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->key:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v5, v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->multipartId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->completeMultiPartUpload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v7, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-wide v8, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bytesTotal:J

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-wide v10, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bytesTotal:J

    invoke-virtual/range {v6 .. v11}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateProgress(IJJ)V

    .line 194
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v1, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 195
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_2
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 197
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to complete multipart: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v0}, Lcom/amazonaws/AmazonClientException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 199
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v1, v2, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->throwError(ILjava/lang/Exception;)V

    .line 200
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v1, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 201
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_9

    .line 165
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->checkWaitingForNetworkPartRequestsFromDB(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 167
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network Connection Interrupted: Transfer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " waits for network"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v1, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 169
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 171
    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    .line 172
    invoke-static {v0}, Lcom/amazonaws/retry/RetryUtils;->isInterrupted(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 177
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transfer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is interrupted by user"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 178
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 179
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->networkInfo:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    .line 180
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;->isNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_8

    .line 181
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transfer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " waits for network"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 182
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 184
    :cond_8
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v1, v2, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->throwError(ILjava/lang/Exception;)V

    .line 186
    :cond_9
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v1, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 187
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 154
    :catch_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 155
    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_4

    .line 158
    :cond_a
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transfer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is interrupted by user"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 159
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catch_3
    move-exception v0

    .line 105
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error initiating multipart upload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Lcom/amazonaws/AmazonClientException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 107
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v1, v2, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->throwError(ILjava/lang/Exception;)V

    .line 108
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v1, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 109
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private uploadSinglePartAndWaitForCompletion()Ljava/lang/Boolean;
    .locals 10

    .line 206
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->createPutObjectRequest(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 209
    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->appendTransferServiceUserAgentString(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 210
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v3, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    const-wide/16 v4, 0x0

    move-wide v6, v8

    invoke-virtual/range {v2 .. v7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateProgress(IJJ)V

    .line 211
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->newProgressListener(I)Lcom/amazonaws/event/ProgressListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)V

    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-interface {v1, v0}, Lcom/amazonaws/services/s3/AmazonS3;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    .line 215
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v3, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    move-wide v4, v8

    move-wide v6, v8

    invoke-virtual/range {v2 .. v7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateProgress(IJJ)V

    .line 216
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v1, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    const/4 v0, 0x1

    .line 217
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 219
    invoke-static {v0}, Lcom/amazonaws/retry/RetryUtils;->isInterrupted(Ljava/lang/Throwable;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 224
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transfer "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is interrupted by user"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 225
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 226
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/amazonaws/AmazonClientException;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->networkInfo:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    .line 227
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;->isNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 229
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network Connection Interrupted: Transfer "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " waits for network"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v1, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v1, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 231
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 232
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->networkInfo:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    .line 233
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;->isNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 234
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transfer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v4, v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " waits for network"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 235
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v1, v3, v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 238
    :cond_2
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to upload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v4, v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 239
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v1, v3, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->throwError(ILjava/lang/Exception;)V

    .line 240
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v1, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v1, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 241
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->networkInfo:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;->isNetworkConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 73
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->IN_PROGRESS:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 76
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v0, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->isMultipart:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v0, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->partNumber:I

    if-nez v0, :cond_1

    .line 83
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->uploadMultipartAndWaitForCompletion()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v0, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->isMultipart:I

    if-nez v0, :cond_2

    .line 88
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->uploadSinglePartAndWaitForCompletion()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 90
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
