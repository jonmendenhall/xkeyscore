.class public Lcom/amazonaws/services/s3/AmazonS3Client;
.super Lcom/amazonaws/AmazonWebServiceClient;
.source "AmazonS3Client.java"

# interfaces
.implements Lcom/amazonaws/services/s3/AmazonS3;


# static fields
.field private static final BUCKET_REGION_CACHE_SIZE:I = 0x12c

.field public static final S3_SERVICE_NAME:Ljava/lang/String; = "s3"

.field private static final S3_SIGNER:Ljava/lang/String; = "S3SignerType"

.field private static final S3_V4_SIGNER:Ljava/lang/String; = "AWSS3V4SignerType"

.field private static final bucketConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

.field private static final bucketRegionCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static log:Lorg/apache/commons/logging/Log;

.field private static final requestPaymentConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;


# instance fields
.field private final awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

.field private clientOptions:Lcom/amazonaws/services/s3/S3ClientOptions;

.field volatile clientRegion:Ljava/lang/String;

.field private final completeMultipartUploadRetryCondition:Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

.field private final errorResponseHandler:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

.field private final voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 175
    const-class v0, Lcom/amazonaws/services/s3/AmazonS3Client;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->log:Lorg/apache/commons/logging/Log;

    .line 179
    invoke-static {}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->values()[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/metrics/AwsSdkMetrics;->addAll(Ljava/util/Collection;)Z

    const-string v0, "S3SignerType"

    .line 182
    const-class v1, Lcom/amazonaws/services/s3/internal/S3Signer;

    invoke-static {v0, v1}, Lcom/amazonaws/auth/SignerFactory;->registerSigner(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "AWSS3V4SignerType"

    .line 183
    const-class v1, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;

    invoke-static {v0, v1}, Lcom/amazonaws/auth/SignerFactory;->registerSigner(Ljava/lang/String;Ljava/lang/Class;)V

    .line 194
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    .line 200
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->requestPaymentConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;

    .line 218
    new-instance v0, Lcom/amazonaws/services/s3/AmazonS3Client$1;

    const/16 v1, 0x12c

    const v2, 0x3f8ccccd    # 1.1f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client$1;-><init>(IFZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketRegionCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 276
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 420
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1

    .line 289
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 305
    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    invoke-direct {p0, v0, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1

    .line 317
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 333
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p2}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .locals 0

    .line 373
    invoke-direct {p0, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    .line 187
    new-instance p2, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-direct {p2}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->errorResponseHandler:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    .line 190
    new-instance p2, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    .line 203
    new-instance p2, Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-direct {p2}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientOptions:Lcom/amazonaws/services/s3/S3ClientOptions;

    .line 232
    new-instance p2, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    invoke-direct {p2}, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->completeMultipartUploadRetryCondition:Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    .line 374
    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 375
    invoke-direct {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 352
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p2}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p2, v0, p3}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    .line 187
    new-instance p2, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-direct {p2}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->errorResponseHandler:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    .line 190
    new-instance p2, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    .line 203
    new-instance p2, Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-direct {p2}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientOptions:Lcom/amazonaws/services/s3/S3ClientOptions;

    .line 232
    new-instance p2, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    invoke-direct {p2}, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->completeMultipartUploadRetryCondition:Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    .line 354
    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 355
    invoke-direct {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->init()V

    return-void
.end method

.method private static addAclHeaders(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "+",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">;",
            "Lcom/amazonaws/services/s3/model/AccessControlList;",
            ")V"
        }
    .end annotation

    .line 1805
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AccessControlList;->getGrants()Ljava/util/Set;

    move-result-object p1

    .line 1806
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1807
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/Grant;

    .line 1808
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Grant;->getPermission()Lcom/amazonaws/services/s3/model/Permission;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1809
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Grant;->getPermission()Lcom/amazonaws/services/s3/model/Permission;

    move-result-object v2

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1811
    :cond_0
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Grant;->getPermission()Lcom/amazonaws/services/s3/model/Permission;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Grant;->getGrantee()Lcom/amazonaws/services/s3/model/Grantee;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1813
    :cond_1
    invoke-static {}, Lcom/amazonaws/services/s3/model/Permission;->values()[Lcom/amazonaws/services/s3/model/Permission;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_5

    aget-object v4, p1, v3

    .line 1814
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1815
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 1817
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1818
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v7, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazonaws/services/s3/model/Grantee;

    if-nez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    const-string v9, ", "

    .line 1822
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1824
    :goto_3
    invoke-interface {v8}, Lcom/amazonaws/services/s3/model/Grantee;->getTypeIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1825
    invoke-interface {v8}, Lcom/amazonaws/services/s3/model/Grantee;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1827
    :cond_3
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/Permission;->getHeaderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private static addDateHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 4414
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static addHeaderIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 4361
    invoke-interface {p0, p1, p2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static addParameterIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 4379
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->addParameterIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static addParameterIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 4397
    invoke-interface {p0, p1, p2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private addPartNumberIfNotNull(Lcom/amazonaws/Request;Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string v0, "partNumber"

    .line 4344
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static addResponseHeaderParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 4447
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getCacheControl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "response-cache-control"

    .line 4449
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getCacheControl()Ljava/lang/String;

    move-result-object v1

    .line 4448
    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4451
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentDisposition()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "response-content-disposition"

    .line 4453
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentDisposition()Ljava/lang/String;

    move-result-object v1

    .line 4452
    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4455
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "response-content-encoding"

    .line 4457
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    .line 4456
    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4459
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "response-content-language"

    .line 4461
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentLanguage()Ljava/lang/String;

    move-result-object v1

    .line 4460
    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4463
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "response-content-type"

    .line 4465
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 4464
    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4467
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getExpires()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "response-expires"

    .line 4469
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getExpires()Ljava/lang/String;

    move-result-object p1

    .line 4468
    invoke-interface {p0, v0, p1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private static addStringListHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 4430
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4431
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private beforeRequest(Lcom/amazonaws/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 4060
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->requestHandler2s:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 4061
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->requestHandler2s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/handlers/RequestHandler2;

    .line 4062
    invoke-virtual {v1, p1}, Lcom/amazonaws/handlers/RequestHandler2;->beforeRequest(Lcom/amazonaws/Request;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calculateContentLength(Ljava/io/InputStream;)J
    .locals 6

    const/16 v0, 0x2000

    .line 1786
    new-array v0, v0, [B

    const/4 v1, -0x1

    .line 1788
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    const-wide/16 v2, 0x0

    .line 1790
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v4, v1, :cond_0

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 1793
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    :catch_0
    move-exception p1

    .line 1795
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Could not calculate content length."

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private convertToVirtualHostEndpoint(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;
    .locals 3

    .line 4079
    :try_start_0
    new-instance v0, Ljava/net/URI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4080
    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 4082
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bucket name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private createSigV2Signer(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/S3Signer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazonaws/services/s3/internal/S3Signer;"
        }
    .end annotation

    .line 3998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const-string p3, ""

    :goto_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4001
    new-instance p3, Lcom/amazonaws/services/s3/internal/S3Signer;

    invoke-interface {p1}, Lcom/amazonaws/Request;->getHttpMethod()Lcom/amazonaws/http/HttpMethodName;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpMethodName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/amazonaws/services/s3/internal/S3Signer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p3
.end method

.method private fetchRegionFromCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 5346
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketRegionCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 5348
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5349
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bucket region cache doesn\'t have an entry for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Trying to get bucket region from Amazon S3."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 5352
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->getBucketRegionViaHeadRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5354
    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketRegionCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5357
    :cond_1
    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3Client;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5358
    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3Client;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Region for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method private fireProgressEvent(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 3780
    :cond_0
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 3781
    invoke-virtual {v0, p2}, Lcom/amazonaws/event/ProgressEvent;->setEventCode(I)V

    .line 3782
    invoke-virtual {p1, v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->progressChanged(Lcom/amazonaws/event/ProgressEvent;)V

    return-void
.end method

.method private getAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 2

    if-nez p5, :cond_0

    .line 3805
    new-instance p5, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {p5, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    .line 3808
    :cond_0
    sget-object v0, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, p2, p5, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p5

    const-string v0, "acl"

    const/4 v1, 0x0

    .line 3810
    invoke-interface {p5, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const-string v0, "versionId"

    .line 3812
    invoke-interface {p5, v0, p3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3814
    :cond_1
    invoke-static {p5, p4}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequesterPaysHeader(Lcom/amazonaws/Request;Z)V

    .line 3816
    new-instance p3, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$AccessControlListUnmarshaller;

    invoke-direct {p3}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$AccessControlListUnmarshaller;-><init>()V

    invoke-direct {p0, p5, p3, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/AccessControlList;

    return-object p1
.end method

.method static getBucketRegionCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 229
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketRegionCache:Ljava/util/Map;

    return-object v0
.end method

.method private getBucketRegionViaHeadRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 5374
    :try_start_0
    new-instance v3, Lcom/amazonaws/services/s3/model/HeadBucketRequest;

    invoke-direct {v3, p1}, Lcom/amazonaws/services/s3/model/HeadBucketRequest;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/amazonaws/http/HttpMethodName;->HEAD:Lcom/amazonaws/http/HttpMethodName;

    new-instance v5, Ljava/net/URI;

    const-string v0, "https://s3-us-west-1.amazonaws.com"

    invoke-direct {v5, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;Ljava/net/URI;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 5377
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/HeadBucketResultHandler;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/HeadBucketResultHandler;-><init>()V

    invoke-direct {p0, v0, v1, p1, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/HeadBucketResult;

    .line 5379
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/HeadBucketResult;->getBucketRegion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    move-object v6, v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    .line 5386
    :catch_1
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Error while creating URI"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_2

    .line 5381
    :goto_1
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getAdditionalDetails()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5382
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getAdditionalDetails()Ljava/util/Map;

    move-result-object v0

    const-string v1, "x-amz-bucket-region"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    :goto_2
    if-nez v6, :cond_1

    .line 5389
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5390
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not able to derive region of the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from the HEAD Bucket requests."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_1
    return-object v6
.end method

.method private getBucketRequestPayment(Lcom/amazonaws/services/s3/model/GetRequestPaymentConfigurationRequest;)Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;
    .locals 4

    .line 4742
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetRequestPaymentConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified while getting the Request Payment Configuration."

    .line 4744
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4748
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "requestPayment"

    .line 4751
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v3, "application/xml"

    .line 4752
    invoke-interface {p1, v1, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4754
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$RequestPaymentConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$RequestPaymentConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;

    return-object p1
.end method

.method private getHostStyleResourcePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "/"

    .line 5438
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getPathStyleResourcePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 5445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSignerRegion()Ljava/lang/String;
    .locals 1

    .line 3984
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getSignerRegionOverride()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3986
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientRegion:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private init()V
    .locals 3

    const-string v0, "s3.amazonaws.com"

    .line 425
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->setEndpoint(Ljava/lang/String;)V

    const-string v0, "s3"

    .line 426
    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->endpointPrefix:Ljava/lang/String;

    .line 428
    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 429
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->requestHandler2s:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/s3/request.handlers"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->newRequestHandlerChain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 431
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->requestHandler2s:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/s3/request.handler2s"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->newRequestHandler2Chain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Lcom/amazonaws/Request<",
            "TY;>;",
            "Lcom/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazonaws/AmazonWebServiceResponse<",
            "TX;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TX;"
        }
    .end annotation

    .line 4585
    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    .line 4586
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->createExecutionContext(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v1

    .line 4587
    invoke-virtual {v1}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v2

    .line 4589
    invoke-interface {p1, v2}, Lcom/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazonaws/util/AWSRequestMetrics;)V

    .line 4596
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v2, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v3, 0x0

    .line 4599
    :try_start_0
    iget v4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->timeOffset:I

    invoke-interface {p1, v4}, Lcom/amazonaws/Request;->setTimeOffset(I)V

    .line 4606
    invoke-interface {p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const-string v5, "Content-Type"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Content-Type"

    const-string v5, "application/octet-stream"

    .line 4607
    invoke-interface {p1, v4, v5}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 4614
    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v4

    instance-of v4, v4, Lcom/amazonaws/services/s3/model/CreateBucketRequest;

    if-nez v4, :cond_1

    .line 4615
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->noExplicitRegionProvided(Lcom/amazonaws/Request;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4616
    invoke-direct {p0, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->fetchRegionFromCache(Ljava/lang/String;)Ljava/lang/String;

    .line 4619
    :cond_1
    iget-object v4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v4}, Lcom/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v4

    .line 4620
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 4621
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v4

    .line 4623
    :cond_2
    invoke-virtual {p0, p1, p3, p4}, Lcom/amazonaws/services/s3/AmazonS3Client;->createSigner(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;

    move-result-object p4

    invoke-virtual {v1, p4}, Lcom/amazonaws/http/ExecutionContext;->setSigner(Lcom/amazonaws/auth/Signer;)V

    .line 4624
    invoke-virtual {v1, v4}, Lcom/amazonaws/http/ExecutionContext;->setCredentials(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 4625
    iget-object p4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->client:Lcom/amazonaws/http/AmazonHttpClient;

    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->errorResponseHandler:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-virtual {p4, p1, p2, v0, v1}, Lcom/amazonaws/http/AmazonHttpClient;->execute(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object p2
    :try_end_0
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4627
    :try_start_1
    invoke-virtual {p2}, Lcom/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object p4
    :try_end_1
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4647
    invoke-virtual {p0, v2, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    return-object p4

    :catchall_0
    move-exception p3

    move-object v3, p2

    move-object p2, p3

    goto :goto_1

    :catch_0
    move-exception p4

    move-object v3, p2

    move-object p2, p4

    goto :goto_0

    :catchall_1
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    .line 4637
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getStatusCode()I

    move-result p4

    const/16 v0, 0x12d

    if-ne p4, v0, :cond_3

    .line 4638
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getAdditionalDetails()Ljava/util/Map;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 4639
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getAdditionalDetails()Ljava/util/Map;

    move-result-object p4

    const-string v0, "x-amz-bucket-region"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 4640
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketRegionCache:Ljava/util/Map;

    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4641
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The bucket is in this region: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ". Please use this region to retry the request"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setErrorMessage(Ljava/lang/String;)V

    .line 4645
    :cond_3
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4647
    :goto_1
    invoke-virtual {p0, v2, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    throw p2
.end method

.method private invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Lcom/amazonaws/Request<",
            "TY;>;",
            "Lcom/amazonaws/transform/Unmarshaller<",
            "TX;",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TX;"
        }
    .end annotation

    .line 4573
    new-instance v0, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {v0, p2}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private isSignerOverridden()Z
    .locals 1

    .line 3957
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientConfiguration:Lcom/amazonaws/ClientConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientConfiguration:Lcom/amazonaws/ClientConfiguration;

    .line 3958
    invoke-virtual {v0}, Lcom/amazonaws/ClientConfiguration;->getSignerOverride()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isStandardEndpoint(Ljava/net/URI;)Z
    .locals 1

    .line 3992
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string v0, "s3.amazonaws.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method static isValidIpV4Address(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "\\."

    .line 5452
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 5453
    array-length v1, p0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    return v0

    .line 5456
    :cond_1
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p0, v2

    .line 5458
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v3, :cond_3

    const/16 v4, 0xff

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :catch_0
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private noExplicitRegionProvided(Lcom/amazonaws/Request;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;)Z"
        }
    .end annotation

    .line 3972
    invoke-interface {p1}, Lcom/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->isStandardEndpoint(Ljava/net/URI;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3973
    invoke-direct {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getSignerRegion()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected static populateRequestMetadata(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/services/s3/model/ObjectMetadata;",
            ")V"
        }
    .end annotation

    .line 4097
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getRawMetadata()Ljava/util/Map;

    move-result-object v0

    const-string v1, "x-amz-server-side-encryption-aws-kms-key-id"

    .line 4099
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->KMS_SERVER_SIDE_ENCRYPTION:Ljava/lang/String;

    const-string v2, "x-amz-server-side-encryption"

    .line 4101
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4100
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4102
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "If you specify a KMS key id for server side encryption, you must also set the SSEAlgorithm to ObjectMetadata.KMS_SERVER_SIDE_ENCRYPTION"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-eqz v0, :cond_1

    .line 4107
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4108
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4112
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getHttpExpiresDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Expires"

    .line 4114
    invoke-static {v0}, Lcom/amazonaws/util/DateUtils;->formatRFC822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4117
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getUserMetadata()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 4119
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4120
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4121
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 4123
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-eqz v0, :cond_4

    .line 4126
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 4128
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "x-amz-meta-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method private static populateRequestWithCopyObjectParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/CopyObjectRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "+",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">;",
            "Lcom/amazonaws/services/s3/model/CopyObjectRequest;",
            ")V"
        }
    .end annotation

    .line 4176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4177
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceBucketName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/amazonaws/services/s3/internal/S3HttpUtils;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4178
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/amazonaws/services/s3/internal/S3HttpUtils;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4179
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceVersionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?versionId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceVersionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "x-amz-copy-source"

    .line 4182
    invoke-interface {p0, v1, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-amz-copy-source-if-modified-since"

    .line 4185
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getModifiedSinceConstraint()Ljava/util/Date;

    move-result-object v1

    .line 4184
    invoke-static {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addDateHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    const-string v0, "x-amz-copy-source-if-unmodified-since"

    .line 4187
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getUnmodifiedSinceConstraint()Ljava/util/Date;

    move-result-object v1

    .line 4186
    invoke-static {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addDateHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    const-string v0, "x-amz-copy-source-if-match"

    .line 4190
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getMatchingETagConstraints()Ljava/util/List;

    move-result-object v1

    .line 4189
    invoke-static {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addStringListHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "x-amz-copy-source-if-none-match"

    .line 4192
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getNonmatchingETagConstraints()Ljava/util/List;

    move-result-object v1

    .line 4191
    invoke-static {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addStringListHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    .line 4194
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4195
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->addAclHeaders(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    goto :goto_0

    .line 4196
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getCannedAccessControlList()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "x-amz-acl"

    .line 4198
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getCannedAccessControlList()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4197
    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4201
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getStorageClass()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "x-amz-storage-class"

    .line 4202
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getStorageClass()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4205
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "x-amz-website-redirect-location"

    .line 4206
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4209
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->isRequesterPays()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequesterPaysHeader(Lcom/amazonaws/Request;Z)V

    .line 4211
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getNewObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "x-amz-metadata-directive"

    const-string v2, "REPLACE"

    .line 4213
    invoke-interface {p0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4214
    invoke-static {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequestMetadata(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 4218
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateSourceSSE_C(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 4219
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateSSE_C(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    return-void
.end method

.method private static populateRequestWithCopyPartParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/CopyPartRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/services/s3/model/CopyPartRequest;",
            ")V"
        }
    .end annotation

    .line 4235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4236
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getSourceBucketName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/amazonaws/services/s3/internal/S3HttpUtils;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4237
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getSourceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/amazonaws/services/s3/internal/S3HttpUtils;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4238
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getSourceVersionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?versionId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getSourceVersionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "x-amz-copy-source"

    .line 4241
    invoke-interface {p0, v1, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-amz-copy-source-if-modified-since"

    .line 4244
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getModifiedSinceConstraint()Ljava/util/Date;

    move-result-object v1

    .line 4243
    invoke-static {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addDateHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    const-string v0, "x-amz-copy-source-if-unmodified-since"

    .line 4246
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getUnmodifiedSinceConstraint()Ljava/util/Date;

    move-result-object v1

    .line 4245
    invoke-static {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addDateHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    const-string v0, "x-amz-copy-source-if-match"

    .line 4249
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getMatchingETagConstraints()Ljava/util/List;

    move-result-object v1

    .line 4248
    invoke-static {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addStringListHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "x-amz-copy-source-if-none-match"

    .line 4251
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getNonmatchingETagConstraints()Ljava/util/List;

    move-result-object v1

    .line 4250
    invoke-static {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addStringListHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    .line 4253
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getFirstByte()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getLastByte()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getFirstByte()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4255
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getLastByte()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-amz-copy-source-range"

    .line 4256
    invoke-interface {p0, v1, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4260
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getSourceSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateSourceSSE_C(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 4261
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getDestinationSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateSSE_C(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    return-void
.end method

.method private populateRequestWithMfaDetails(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 4150
    :cond_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    .line 4151
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "http://"

    const-string v2, "https://"

    .line 4152
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4153
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 4154
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Overriding current endpoint to use HTTPS as required by S3 for requests containing an MFA header"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    const-string v0, "x-amz-mfa"

    .line 4158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4159
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->getToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4158
    invoke-interface {p1, v0, p2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected static populateRequesterPaysHeader(Lcom/amazonaws/Request;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string p1, "x-amz-request-payer"

    const-string v0, "requester"

    .line 5221
    invoke-interface {p0, p1, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static populateSSE_C(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/services/s3/model/SSECustomerKey;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "x-amz-server-side-encryption-customer-algorithm"

    .line 4283
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 4282
    invoke-static {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addHeaderIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-amz-server-side-encryption-customer-key"

    .line 4285
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 4284
    invoke-static {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addHeaderIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-amz-server-side-encryption-customer-key-MD5"

    .line 4287
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->getMd5()Ljava/lang/String;

    move-result-object v1

    .line 4286
    invoke-static {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addHeaderIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 4290
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4291
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->getMd5()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4292
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 4293
    invoke-static {p1}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    const-string v0, "x-amz-server-side-encryption-customer-key-MD5"

    .line 4295
    invoke-static {p1}, Lcom/amazonaws/util/Md5Utils;->md5AsBase64([B)Ljava/lang/String;

    move-result-object p1

    .line 4294
    invoke-interface {p0, v0, p1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static populateSSE_KMS(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "x-amz-server-side-encryption"

    .line 4327
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;->getEncryption()Ljava/lang/String;

    move-result-object v1

    .line 4326
    invoke-static {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addHeaderIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-amz-server-side-encryption-aws-kms-key-id"

    .line 4330
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;->getAwsKmsKeyId()Ljava/lang/String;

    move-result-object p1

    .line 4328
    invoke-static {p0, v0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addHeaderIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static populateSourceSSE_C(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/services/s3/model/SSECustomerKey;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "x-amz-copy-source-server-side-encryption-customer-algorithm"

    .line 4306
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 4305
    invoke-static {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addHeaderIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-amz-copy-source-server-side-encryption-customer-key"

    .line 4308
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 4307
    invoke-static {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addHeaderIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-amz-copy-source-server-side-encryption-customer-key-MD5"

    .line 4310
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->getMd5()Ljava/lang/String;

    move-result-object v1

    .line 4309
    invoke-static {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addHeaderIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 4313
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4314
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->getMd5()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4315
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 4316
    invoke-static {p1}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    const-string v0, "x-amz-copy-source-server-side-encryption-customer-key-MD5"

    .line 4318
    invoke-static {p1}, Lcom/amazonaws/util/Md5Utils;->md5AsBase64([B)Ljava/lang/String;

    move-result-object p1

    .line 4317
    invoke-interface {p0, v0, p1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private setAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;ZLcom/amazonaws/AmazonWebServiceRequest;)V
    .locals 2

    if-nez p6, :cond_0

    .line 3875
    new-instance p6, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {p6, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    .line 3878
    :cond_0
    sget-object v0, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, p2, p6, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p6

    const-string v0, "acl"

    const/4 v1, 0x0

    .line 3880
    invoke-interface {p6, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const-string v0, "versionId"

    .line 3882
    invoke-interface {p6, v0, p3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3884
    :cond_1
    invoke-static {p6, p5}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequesterPaysHeader(Lcom/amazonaws/Request;Z)V

    .line 3886
    new-instance p3, Lcom/amazonaws/services/s3/model/transform/AclXmlFactory;

    invoke-direct {p3}, Lcom/amazonaws/services/s3/model/transform/AclXmlFactory;-><init>()V

    invoke-virtual {p3, p4}, Lcom/amazonaws/services/s3/model/transform/AclXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/AccessControlList;)[B

    move-result-object p3

    const-string p4, "Content-Type"

    const-string p5, "application/xml"

    .line 3887
    invoke-interface {p6, p4, p5}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "Content-Length"

    .line 3888
    array-length p5, p3

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    invoke-interface {p6, p4, p5}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3889
    new-instance p4, Ljava/io/ByteArrayInputStream;

    invoke-direct {p4, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p6, p4}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 3891
    iget-object p3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p6, p3, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method private setAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;ZLcom/amazonaws/AmazonWebServiceRequest;)V
    .locals 2

    if-nez p6, :cond_0

    .line 3838
    new-instance p6, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {p6, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    .line 3841
    :cond_0
    sget-object v0, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, p2, p6, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p6

    const-string v0, "acl"

    const/4 v1, 0x0

    .line 3843
    invoke-interface {p6, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-amz-acl"

    .line 3844
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p6, v0, p4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const-string p4, "versionId"

    .line 3846
    invoke-interface {p6, p4, p3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3848
    :cond_1
    invoke-static {p6, p5}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequesterPaysHeader(Lcom/amazonaws/Request;Z)V

    .line 3850
    iget-object p3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p6, p3, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method private setBucketAcl0(Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 8

    const-string v0, "The bucket name parameter must be specified when setting a bucket\'s ACL"

    .line 1096
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "The ACL parameter must be specified when setting a bucket\'s ACL"

    .line 1098
    invoke-static {p2, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1101
    new-instance v0, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {v0, p3}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;->withRequestMetricCollector(Lcom/amazonaws/metrics/RequestMetricCollector;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    .line 1101
    invoke-direct/range {v1 .. v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->setAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;ZLcom/amazonaws/AmazonWebServiceRequest;)V

    return-void
.end method

.method private setBucketAcl0(Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The bucket name parameter must be specified when setting a bucket\'s ACL"

    .line 1144
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "The ACL parameter must be specified when setting a bucket\'s ACL"

    .line 1146
    invoke-static {p2, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1149
    new-instance v0, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    .line 1151
    invoke-virtual {v0, p3}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;->withRequestMetricCollector(Lcom/amazonaws/metrics/RequestMetricCollector;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    .line 1149
    invoke-direct/range {v1 .. v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->setAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;ZLcom/amazonaws/AmazonWebServiceRequest;)V

    return-void
.end method

.method private setBucketRequestPayment(Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;)V
    .locals 5

    .line 4705
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 4707
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;->getConfiguration()Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified while setting the Requester Pays."

    .line 4709
    invoke-static {v0, v2}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "The request payment configuration parameter must be specified when setting the Requester Pays."

    .line 4712
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4716
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "requestPayment"

    .line 4719
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v4, "application/xml"

    .line 4720
    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4722
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3Client;->requestPaymentConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;

    .line 4723
    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;)[B

    move-result-object v1

    const-string v2, "Content-Length"

    .line 4724
    array-length v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4725
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v2}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 4727
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method private setContent(Lcom/amazonaws/Request;[BLjava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;[B",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 5195
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    const-string v0, "Content-Length"

    .line 5196
    array-length v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    .line 5197
    invoke-interface {p1, v0, p3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 5200
    :try_start_0
    invoke-static {p2}, Lcom/amazonaws/util/Md5Utils;->computeMD5Hash([B)[B

    move-result-object p2

    .line 5201
    invoke-static {p2}, Lcom/amazonaws/util/BinaryUtils;->toBase64([B)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Content-MD5"

    .line 5202
    invoke-interface {p1, p3, p2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5204
    new-instance p2, Lcom/amazonaws/AmazonClientException;

    const-string p3, "Couldn\'t compute md5 sum"

    invoke-direct {p2, p3, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method private setZeroContentLength(Lcom/amazonaws/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "Content-Length"

    const/4 v1, 0x0

    .line 4763
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private shouldRetryCompleteMultipartUpload(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/services/s3/model/AmazonS3Exception;I)Z
    .locals 3

    .line 3372
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientConfiguration:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v0}, Lcom/amazonaws/ClientConfiguration;->getRetryPolicy()Lcom/amazonaws/retry/RetryPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3374
    invoke-virtual {v0}, Lcom/amazonaws/retry/RetryPolicy;->getRetryCondition()Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 3378
    :cond_0
    sget-object v2, Lcom/amazonaws/retry/PredefinedRetryPolicies;->NO_RETRY_POLICY:Lcom/amazonaws/retry/RetryPolicy;

    if-ne v0, v2, :cond_1

    return v1

    .line 3382
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->completeMultipartUploadRetryCondition:Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    .line 3383
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;->shouldRetry(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;I)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private shouldUseVirtualAddressing(Ljava/net/URI;Ljava/lang/String;)Z
    .locals 1

    .line 5426
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientOptions:Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/S3ClientOptions;->isPathStyleAccess()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->isDNSBucketName(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5427
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->isValidIpV4Address(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private toByteArray(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;
    .locals 6

    const/high16 v0, 0x40000

    .line 4777
    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, -0x1

    if-lez v0, :cond_0

    .line 4782
    :try_start_0
    invoke-virtual {p1, v1, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-eq v5, v4, :cond_0

    add-int/2addr v3, v5

    sub-int/2addr v0, v5

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 4786
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 4787
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Input stream exceeds 256k buffer."

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4789
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4793
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object p1

    .line 4791
    :goto_1
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Failed to read from inputstream"

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public abortMultipartUpload(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The request parameter must be specified when aborting a multipart upload"

    .line 3289
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3291
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when aborting a multipart upload"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3293
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The key parameter must be specified when aborting a multipart upload"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3295
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The upload ID parameter must be specified when aborting a multipart upload"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3298
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 3299
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 3301
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v2

    const-string v3, "uploadId"

    .line 3303
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3304
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->isRequesterPays()Z

    move-result p1

    invoke-static {v2, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequesterPaysHeader(Lcom/amazonaws/Request;Z)V

    .line 3306
    iget-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public changeObjectStorageClass(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/StorageClass;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The bucketName parameter must be specified when changing an object\'s storage class"

    .line 1275
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "The key parameter must be specified when changing an object\'s storage class"

    .line 1277
    invoke-static {p2, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "The newStorageClass parameter must be specified when changing an object\'s storage class"

    .line 1279
    invoke-static {p3, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1282
    new-instance v0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-direct {v0, p1, p2, p1, p2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    invoke-virtual {p3}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->withStorageClass(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    move-result-object p1

    .line 1282
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->copyObject(Lcom/amazonaws/services/s3/model/CopyObjectRequest;)Lcom/amazonaws/services/s3/model/CopyObjectResult;

    return-void
.end method

.method public completeMultipartUpload(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The request parameter must be specified when completing a multipart upload"

    .line 3319
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3322
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 3323
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 3324
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "The bucket name parameter must be specified when completing a multipart upload"

    .line 3325
    invoke-static {v0, v3}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "The key parameter must be specified when completing a multipart upload"

    .line 3327
    invoke-static {v1, v3}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "The upload ID parameter must be specified when completing a multipart upload"

    .line 3329
    invoke-static {v2, v3}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3331
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getPartETags()Ljava/util/List;

    move-result-object v3

    const-string v4, "The part ETags parameter must be specified when completing a multipart upload"

    invoke-static {v3, v4}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    move v4, v3

    .line 3337
    :goto_0
    sget-object v5, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v5

    const-string v6, "uploadId"

    .line 3338
    invoke-interface {v5, v6, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3340
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->isRequesterPays()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequesterPaysHeader(Lcom/amazonaws/Request;Z)V

    .line 3342
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getPartETags()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/services/s3/model/transform/RequestXmlFactory;->convertToXmlByteArray(Ljava/util/List;)[B

    move-result-object v6

    const-string v7, "Content-Type"

    const-string v8, "application/xml"

    .line 3343
    invoke-interface {v5, v7, v8}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Content-Length"

    .line 3344
    array-length v8, v6

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3346
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v5, v7}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 3350
    new-instance v6, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    new-instance v7, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$CompleteMultipartUploadResultUnmarshaller;

    invoke-direct {v7}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$CompleteMultipartUploadResultUnmarshaller;-><init>()V

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/amazonaws/services/s3/internal/HeaderHandler;

    new-instance v9, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;

    invoke-direct {v9}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;-><init>()V

    aput-object v9, v8, v3

    new-instance v9, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;

    invoke-direct {v9}, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;-><init>()V

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x2

    new-instance v10, Lcom/amazonaws/services/s3/internal/S3VersionHeaderHandler;

    invoke-direct {v10}, Lcom/amazonaws/services/s3/internal/S3VersionHeaderHandler;-><init>()V

    aput-object v10, v8, v9

    const/4 v9, 0x3

    new-instance v10, Lcom/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler;

    invoke-direct {v10}, Lcom/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler;-><init>()V

    aput-object v10, v8, v9

    invoke-direct {v6, v7, v8}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V

    .line 3358
    invoke-direct {p0, v5, v6, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;

    .line 3359
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getCompleteMultipartUploadResult()Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 3360
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getCompleteMultipartUploadResult()Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object p1

    return-object p1

    .line 3363
    :cond_0
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getAmazonS3Exception()Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    .line 3362
    invoke-direct {p0, p1, v6, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->shouldRetryCompleteMultipartUpload(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/services/s3/model/AmazonS3Exception;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3365
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getAmazonS3Exception()Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    move-result-object p1

    throw p1

    :cond_1
    move v4, v7

    goto/16 :goto_0
.end method

.method public copyObject(Lcom/amazonaws/services/s3/model/CopyObjectRequest;)Lcom/amazonaws/services/s3/model/CopyObjectResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 1854
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The source bucket name must be specified when copying an object"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1856
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The source object key must be specified when copying an object"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1858
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The destination bucket name must be specified when copying an object"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1860
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The destination object key must be specified when copying an object"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1863
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationKey()Ljava/lang/String;

    move-result-object v0

    .line 1864
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v1

    .line 1866
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v1, v0, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 1869
    invoke-static {v2, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequestWithCopyObjectParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/CopyObjectRequest;)V

    .line 1873
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSSEAwsKeyManagementParams()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    move-result-object p1

    .line 1872
    invoke-static {v2, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateSSE_KMS(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V

    .line 1879
    invoke-direct {p0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->setZeroContentLength(Lcom/amazonaws/Request;)V

    .line 1884
    :try_start_0
    new-instance p1, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    new-instance v3, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$CopyObjectUnmarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$CopyObjectUnmarshaller;-><init>()V

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/amazonaws/services/s3/internal/HeaderHandler;

    const/4 v5, 0x0

    new-instance v6, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;

    invoke-direct {v6}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/amazonaws/services/s3/internal/S3VersionHeaderHandler;

    invoke-direct {v6}, Lcom/amazonaws/services/s3/internal/S3VersionHeaderHandler;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;

    invoke-direct {v6}, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Lcom/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler;

    invoke-direct {v6}, Lcom/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler;-><init>()V

    aput-object v6, v4, v5

    invoke-direct {p1, v3, v4}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V

    .line 1892
    invoke-direct {p0, v2, p1, v1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;
    :try_end_0
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1918
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1919
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 1920
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    .line 1921
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorRequestId()Ljava/lang/String;

    move-result-object v3

    .line 1922
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorHostId()Ljava/lang/String;

    move-result-object p1

    .line 1924
    new-instance v4, Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    invoke-direct {v4, v1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;-><init>(Ljava/lang/String;)V

    .line 1925
    invoke-virtual {v4, v0}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setErrorCode(Ljava/lang/String;)V

    .line 1926
    sget-object v0, Lcom/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {v4, v0}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 1927
    invoke-virtual {v4, v3}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setRequestId(Ljava/lang/String;)V

    .line 1928
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setExtendedRequestId(Ljava/lang/String;)V

    .line 1929
    invoke-interface {v2}, Lcom/amazonaws/Request;->getServiceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setServiceName(Ljava/lang/String;)V

    const/16 p1, 0xc8

    .line 1930
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setStatusCode(I)V

    .line 1932
    throw v4

    .line 1937
    :cond_0
    new-instance v0, Lcom/amazonaws/services/s3/model/CopyObjectResult;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/CopyObjectResult;-><init>()V

    .line 1938
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getETag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->setETag(Ljava/lang/String;)V

    .line 1939
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getLastModified()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->setLastModifiedDate(Ljava/util/Date;)V

    .line 1940
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getVersionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->setVersionId(Ljava/lang/String;)V

    .line 1941
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getSSEAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->setSSEAlgorithm(Ljava/lang/String;)V

    .line 1942
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getSSECustomerAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->setSSECustomerAlgorithm(Ljava/lang/String;)V

    .line 1943
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getSSECustomerKeyMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->setSSECustomerKeyMd5(Ljava/lang/String;)V

    .line 1944
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getExpirationTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->setExpirationTime(Ljava/util/Date;)V

    .line 1945
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getExpirationTimeRuleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->setExpirationTimeRuleId(Ljava/lang/String;)V

    .line 1946
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->isRequesterCharged()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->setRequesterCharged(Z)V

    return-object v0

    :catch_0
    move-exception p1

    .line 1901
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getStatusCode()I

    move-result v0

    const/16 v1, 0x19c

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 1905
    :cond_1
    throw p1
.end method

.method public copyObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 1841
    new-instance v0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->copyObject(Lcom/amazonaws/services/s3/model/CopyObjectRequest;)Lcom/amazonaws/services/s3/model/CopyObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public copyPart(Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;
    .locals 8

    .line 1978
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getSourceBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The source bucket name must be specified when copying a part"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1980
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getSourceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The source object key must be specified when copying a part"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1982
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The destination bucket name must be specified when copying a part"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1984
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The upload id must be specified when copying a part"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1986
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getDestinationKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The destination object key must be specified when copying a part"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1988
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getPartNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "The part number must be specified when copying a part"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1991
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getDestinationKey()Ljava/lang/String;

    move-result-object v0

    .line 1992
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v1

    .line 1994
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v1, v0, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 1998
    invoke-static {v2, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequestWithCopyPartParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/CopyPartRequest;)V

    const-string v3, "uploadId"

    .line 2000
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "partNumber"

    .line 2001
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getPartNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    invoke-direct {p0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->setZeroContentLength(Lcom/amazonaws/Request;)V

    .line 2013
    :try_start_0
    new-instance v3, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    new-instance v4, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$CopyObjectUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$CopyObjectUnmarshaller;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/amazonaws/services/s3/internal/HeaderHandler;

    const/4 v6, 0x0

    new-instance v7, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;

    invoke-direct {v7}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;-><init>()V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/amazonaws/services/s3/internal/S3VersionHeaderHandler;

    invoke-direct {v7}, Lcom/amazonaws/services/s3/internal/S3VersionHeaderHandler;-><init>()V

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V

    .line 2019
    invoke-direct {p0, v2, v3, v1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;
    :try_end_0
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2046
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2047
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    .line 2048
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    .line 2049
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorRequestId()Ljava/lang/String;

    move-result-object v3

    .line 2050
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorHostId()Ljava/lang/String;

    move-result-object v0

    .line 2052
    new-instance v4, Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    invoke-direct {v4, v1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;-><init>(Ljava/lang/String;)V

    .line 2053
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setErrorCode(Ljava/lang/String;)V

    .line 2054
    sget-object p1, Lcom/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 2055
    invoke-virtual {v4, v3}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setRequestId(Ljava/lang/String;)V

    .line 2056
    invoke-virtual {v4, v0}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setExtendedRequestId(Ljava/lang/String;)V

    .line 2057
    invoke-interface {v2}, Lcom/amazonaws/Request;->getServiceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setServiceName(Ljava/lang/String;)V

    const/16 p1, 0xc8

    .line 2058
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setStatusCode(I)V

    .line 2060
    throw v4

    .line 2063
    :cond_0
    new-instance v1, Lcom/amazonaws/services/s3/model/CopyPartResult;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/CopyPartResult;-><init>()V

    .line 2064
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getETag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/CopyPartResult;->setETag(Ljava/lang/String;)V

    .line 2065
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getPartNumber()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/CopyPartResult;->setPartNumber(I)V

    .line 2066
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getLastModified()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/CopyPartResult;->setLastModifiedDate(Ljava/util/Date;)V

    .line 2067
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getVersionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/CopyPartResult;->setVersionId(Ljava/lang/String;)V

    .line 2068
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getSSEAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/CopyPartResult;->setSSEAlgorithm(Ljava/lang/String;)V

    .line 2069
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getSSECustomerAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/CopyPartResult;->setSSECustomerAlgorithm(Ljava/lang/String;)V

    .line 2070
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getSSECustomerKeyMd5()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/CopyPartResult;->setSSECustomerKeyMd5(Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception p1

    .line 2029
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getStatusCode()I

    move-result v0

    const/16 v1, 0x19c

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 2033
    :cond_1
    throw p1
.end method

.method public createBucket(Lcom/amazonaws/services/s3/model/CreateBucketRequest;)Lcom/amazonaws/services/s3/model/Bucket;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The CreateBucketRequest parameter must be specified when creating a bucket"

    .line 866
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 869
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 870
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->getRegion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified when creating a bucket"

    .line 871
    invoke-static {v0, v2}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 875
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 877
    :cond_0
    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->validateBucketName(Ljava/lang/String;)V

    .line 879
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 882
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 883
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addAclHeaders(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    goto :goto_0

    .line 884
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v4, "x-amz-acl"

    .line 885
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v4, p1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->endpoint:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string v4, "s3.amazonaws.com"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz v1, :cond_3

    .line 894
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 897
    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->endpoint:Ljava/net/URI;

    .line 898
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/regions/RegionUtils;->getRegionByEndpoint(Ljava/lang/String;)Lcom/amazonaws/regions/Region;

    move-result-object p1

    .line 899
    invoke-virtual {p1}, Lcom/amazonaws/regions/Region;->getName()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_4
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_5

    .line 911
    invoke-static {p1}, Lcom/amazonaws/util/StringUtils;->upperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/amazonaws/services/s3/model/Region;->US_Standard:Lcom/amazonaws/services/s3/model/Region;

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/Region;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 912
    new-instance v1, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v4, "CreateBucketConfiguration"

    const-string v5, "xmlns"

    const-string v6, "http://s3.amazonaws.com/doc/2006-03-01/"

    .line 913
    invoke-virtual {v1, v4, v5, v6}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v4, "LocationConstraint"

    .line 914
    invoke-virtual {v1, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 915
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 917
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->getBytes()[B

    move-result-object p1

    const-string v1, "Content-Length"

    .line 918
    array-length v4, p1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v2, v1}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 922
    :cond_5
    iget-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v2, p1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 924
    new-instance p1, Lcom/amazonaws/services/s3/model/Bucket;

    invoke-direct {p1, v0}, Lcom/amazonaws/services/s3/model/Bucket;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public createBucket(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Bucket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 832
    new-instance v0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->createBucket(Lcom/amazonaws/services/s3/model/CreateBucketRequest;)Lcom/amazonaws/services/s3/model/Bucket;

    move-result-object p1

    return-object p1
.end method

.method public createBucket(Ljava/lang/String;Lcom/amazonaws/services/s3/model/Region;)Lcom/amazonaws/services/s3/model/Bucket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 843
    new-instance v0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/Region;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->createBucket(Lcom/amazonaws/services/s3/model/CreateBucketRequest;)Lcom/amazonaws/services/s3/model/Bucket;

    move-result-object p1

    return-object p1
.end method

.method public createBucket(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Bucket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 854
    new-instance v0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->createBucket(Lcom/amazonaws/services/s3/model/CreateBucketRequest;)Lcom/amazonaws/services/s3/model/Bucket;

    move-result-object p1

    return-object p1
.end method

.method protected final createExecutionContext(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;
    .locals 2

    .line 4578
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->isRequestMetricsEnabled(Lcom/amazonaws/AmazonWebServiceRequest;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/amazonaws/services/s3/AmazonS3Client;->isProfilingEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 4579
    :goto_1
    new-instance v0, Lcom/amazonaws/services/s3/internal/S3ExecutionContext;

    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->requestHandler2s:Ljava/util/List;

    invoke-direct {v0, v1, p1, p0}, Lcom/amazonaws/services/s3/internal/S3ExecutionContext;-><init>(Ljava/util/List;ZLcom/amazonaws/AmazonWebServiceClient;)V

    return-object v0
.end method

.method protected createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TX;",
            "Lcom/amazonaws/http/HttpMethodName;",
            ")",
            "Lcom/amazonaws/Request<",
            "TX;>;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 4543
    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;Ljava/net/URI;)Lcom/amazonaws/Request;

    move-result-object p1

    return-object p1
.end method

.method protected createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;Ljava/net/URI;)Lcom/amazonaws/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TX;",
            "Lcom/amazonaws/http/HttpMethodName;",
            "Ljava/net/URI;",
            ")",
            "Lcom/amazonaws/Request<",
            "TX;>;"
        }
    .end annotation

    .line 4548
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    const-string v1, "Amazon S3"

    invoke-direct {v0, p3, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 4553
    iget-object p3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientOptions:Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-virtual {p3}, Lcom/amazonaws/services/s3/S3ClientOptions;->isAccelerateModeEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 4554
    invoke-interface {v0}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object p3

    instance-of p3, p3, Lcom/amazonaws/services/s3/model/S3AccelerateUnsupported;

    if-nez p3, :cond_1

    .line 4555
    iget-object p3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientOptions:Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-virtual {p3}, Lcom/amazonaws/services/s3/S3ClientOptions;->isDualstackEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "s3-accelerate.dualstack.amazonaws.com"

    .line 4556
    iget-object p5, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientConfiguration:Lcom/amazonaws/ClientConfiguration;

    invoke-static {p3, p5}, Lcom/amazonaws/util/RuntimeHttpUtils;->toUri(Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)Ljava/net/URI;

    move-result-object p5

    goto :goto_0

    :cond_0
    const-string p3, "s3-accelerate.amazonaws.com"

    .line 4559
    iget-object p5, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientConfiguration:Lcom/amazonaws/ClientConfiguration;

    invoke-static {p3, p5}, Lcom/amazonaws/util/RuntimeHttpUtils;->toUri(Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)Ljava/net/URI;

    move-result-object p5

    .line 4564
    :cond_1
    :goto_0
    invoke-interface {v0, p4}, Lcom/amazonaws/Request;->setHttpMethod(Lcom/amazonaws/http/HttpMethodName;)V

    .line 4565
    invoke-virtual {p0, v0, p1, p2, p5}, Lcom/amazonaws/services/s3/AmazonS3Client;->resolveRequestEndpoint(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-object v0
.end method

.method protected createSigner(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazonaws/auth/Signer;"
        }
    .end annotation

    .line 3906
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientOptions:Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/S3ClientOptions;->isAccelerateModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->endpoint:Ljava/net/URI;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v0

    .line 3907
    :goto_0
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getSignerByURI(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;

    move-result-object v0

    .line 3909
    invoke-direct {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->isSignerOverridden()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3910
    instance-of v1, v0, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->noExplicitRegionProvided(Lcom/amazonaws/Request;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3912
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientRegion:Ljava/lang/String;

    if-nez v1, :cond_1

    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketRegionCache:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientRegion:Ljava/lang/String;

    :goto_1
    if-eqz v1, :cond_2

    .line 3918
    invoke-static {v1}, Lcom/amazonaws/regions/RegionUtils;->getRegion(Ljava/lang/String;)Lcom/amazonaws/regions/Region;

    move-result-object v2

    const-string v3, "s3"

    invoke-virtual {v2, v3}, Lcom/amazonaws/regions/Region;->getServiceEndpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientConfiguration:Lcom/amazonaws/ClientConfiguration;

    .line 3917
    invoke-static {v2, v3}, Lcom/amazonaws/util/RuntimeHttpUtils;->toUri(Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->resolveRequestEndpoint(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    .line 3921
    check-cast v0, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;

    .line 3922
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getServiceNameIntern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;->setServiceName(Ljava/lang/String;)V

    .line 3923
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;->setRegionName(Ljava/lang/String;)V

    return-object v0

    .line 3925
    :cond_2
    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v1

    instance-of v1, v1, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;

    if-eqz v1, :cond_3

    .line 3926
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->createSigV2Signer(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/S3Signer;

    move-result-object p1

    return-object p1

    .line 3931
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getSignerRegionOverride()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientRegion:Ljava/lang/String;

    if-nez v1, :cond_4

    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketRegionCache:Ljava/util/Map;

    .line 3932
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientRegion:Ljava/lang/String;

    goto :goto_2

    .line 3933
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getSignerRegionOverride()Ljava/lang/String;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_6

    .line 3935
    new-instance p1, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;-><init>()V

    .line 3936
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getServiceNameIntern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;->setServiceName(Ljava/lang/String;)V

    .line 3937
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;->setRegionName(Ljava/lang/String;)V

    return-object p1

    .line 3942
    :cond_6
    instance-of v1, v0, Lcom/amazonaws/services/s3/internal/S3Signer;

    if-eqz v1, :cond_7

    .line 3947
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->createSigV2Signer(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/S3Signer;

    move-result-object p1

    return-object p1

    :cond_7
    return-object v0
.end method

.method public deleteBucket(Lcom/amazonaws/services/s3/model/DeleteBucketRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The DeleteBucketRequest parameter must be specified when deleting a bucket"

    .line 1514
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1517
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when deleting a bucket"

    .line 1518
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1521
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    .line 1523
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1524
    sget-object p1, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketRegionCache:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public deleteBucket(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 1502
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteBucketRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteBucket(Lcom/amazonaws/services/s3/model/DeleteBucketRequest;)V

    return-void
.end method

.method public deleteBucketAnalyticsConfiguration(Lcom/amazonaws/services/s3/model/DeleteBucketAnalyticsConfigurationRequest;)Lcom/amazonaws/services/s3/model/DeleteBucketAnalyticsConfigurationResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    const-string v0, "The request cannot be null"

    .line 5010
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5013
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketAnalyticsConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketName"

    .line 5012
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5015
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketAnalyticsConfigurationRequest;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Analytics Id"

    .line 5014
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5017
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    .line 5018
    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "analytics"

    .line 5019
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "id"

    .line 5020
    invoke-interface {p1, v2, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 5022
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$DeleteBucketAnalyticsConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$DeleteBucketAnalyticsConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/DeleteBucketAnalyticsConfigurationResult;

    return-object p1
.end method

.method public deleteBucketAnalyticsConfiguration(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteBucketAnalyticsConfigurationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 5002
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteBucketAnalyticsConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/DeleteBucketAnalyticsConfigurationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteBucketAnalyticsConfiguration(Lcom/amazonaws/services/s3/model/DeleteBucketAnalyticsConfigurationRequest;)Lcom/amazonaws/services/s3/model/DeleteBucketAnalyticsConfigurationResult;

    move-result-object p1

    return-object p1
.end method

.method public deleteBucketCrossOriginConfiguration(Lcom/amazonaws/services/s3/model/DeleteBucketCrossOriginConfigurationRequest;)V
    .locals 3

    const-string v0, "The delete bucket cross origin configuration request object must be specified."

    .line 2583
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2586
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketCrossOriginConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when deleting bucket cross origin configuration."

    .line 2587
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2590
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "cors"

    .line 2592
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2593
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public deleteBucketCrossOriginConfiguration(Ljava/lang/String;)V
    .locals 1

    .line 2569
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteBucketCrossOriginConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketCrossOriginConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteBucketCrossOriginConfiguration(Lcom/amazonaws/services/s3/model/DeleteBucketCrossOriginConfigurationRequest;)V

    return-void
.end method

.method public deleteBucketInventoryConfiguration(Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;)Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    const-string v0, "The request cannot be null"

    .line 5114
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5116
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketName"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5117
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Inventory id"

    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5119
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "inventory"

    .line 5120
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "id"

    .line 5121
    invoke-interface {p1, v2, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 5123
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$DeleteBucketInventoryConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$DeleteBucketInventoryConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationResult;

    return-object p1
.end method

.method public deleteBucketInventoryConfiguration(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 5106
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteBucketInventoryConfiguration(Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;)Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationResult;

    move-result-object p1

    return-object p1
.end method

.method public deleteBucketLifecycleConfiguration(Lcom/amazonaws/services/s3/model/DeleteBucketLifecycleConfigurationRequest;)V
    .locals 3

    const-string v0, "The delete bucket lifecycle configuration request object must be specified."

    .line 2452
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2455
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketLifecycleConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when deleting bucket lifecycle configuration."

    .line 2456
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2459
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "lifecycle"

    .line 2461
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2463
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public deleteBucketLifecycleConfiguration(Ljava/lang/String;)V
    .locals 1

    .line 2439
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteBucketLifecycleConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketLifecycleConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteBucketLifecycleConfiguration(Lcom/amazonaws/services/s3/model/DeleteBucketLifecycleConfigurationRequest;)V

    return-void
.end method

.method public deleteBucketMetricsConfiguration(Lcom/amazonaws/services/s3/model/DeleteBucketMetricsConfigurationRequest;)Lcom/amazonaws/services/s3/model/DeleteBucketMetricsConfigurationResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    const-string v0, "The request cannot be null"

    .line 4914
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4916
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketMetricsConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketName"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4917
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketMetricsConfigurationRequest;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Metrics Id"

    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4919
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    .line 4920
    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "metrics"

    .line 4921
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "id"

    .line 4922
    invoke-interface {p1, v2, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4924
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$DeleteBucketMetricsConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$DeleteBucketMetricsConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/DeleteBucketMetricsConfigurationResult;

    return-object p1
.end method

.method public deleteBucketMetricsConfiguration(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteBucketMetricsConfigurationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 4906
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteBucketMetricsConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/DeleteBucketMetricsConfigurationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteBucketMetricsConfiguration(Lcom/amazonaws/services/s3/model/DeleteBucketMetricsConfigurationRequest;)Lcom/amazonaws/services/s3/model/DeleteBucketMetricsConfigurationResult;

    move-result-object p1

    return-object p1
.end method

.method public deleteBucketPolicy(Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The request object must be specified when deleting a bucket policy"

    .line 3147
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3150
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name must be specified when deleting a bucket policy"

    .line 3151
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3154
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "policy"

    .line 3156
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3158
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public deleteBucketPolicy(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 3064
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteBucketPolicy(Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;)V

    return-void
.end method

.method public deleteBucketReplicationConfiguration(Lcom/amazonaws/services/s3/model/DeleteBucketReplicationConfigurationRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 4890
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketReplicationConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when deleting replication configuration"

    .line 4891
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4895
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "replication"

    .line 4898
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4900
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public deleteBucketReplicationConfiguration(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 4881
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteBucketReplicationConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketReplicationConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteBucketReplicationConfiguration(Lcom/amazonaws/services/s3/model/DeleteBucketReplicationConfigurationRequest;)V

    return-void
.end method

.method public deleteBucketTaggingConfiguration(Lcom/amazonaws/services/s3/model/DeleteBucketTaggingConfigurationRequest;)V
    .locals 3

    const-string v0, "The delete bucket tagging configuration request object must be specified."

    .line 2709
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2712
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketTaggingConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when deleting bucket tagging configuration."

    .line 2713
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2716
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "tagging"

    .line 2718
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2720
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public deleteBucketTaggingConfiguration(Ljava/lang/String;)V
    .locals 1

    .line 2697
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteBucketTaggingConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketTaggingConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteBucketTaggingConfiguration(Lcom/amazonaws/services/s3/model/DeleteBucketTaggingConfigurationRequest;)V

    return-void
.end method

.method public deleteBucketWebsiteConfiguration(Lcom/amazonaws/services/s3/model/DeleteBucketWebsiteConfigurationRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 2796
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketWebsiteConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when deleting a bucket\'s website configuration"

    .line 2798
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2801
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "website"

    .line 2803
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v3, "application/xml"

    .line 2804
    invoke-interface {p1, v1, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2806
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public deleteBucketWebsiteConfiguration(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 2783
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteBucketWebsiteConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketWebsiteConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteBucketWebsiteConfiguration(Lcom/amazonaws/services/s3/model/DeleteBucketWebsiteConfigurationRequest;)V

    return-void
.end method

.method public deleteObject(Lcom/amazonaws/services/s3/model/DeleteObjectRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The delete object request must be specified when deleting an object"

    .line 2095
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2098
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name must be specified when deleting an object"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2100
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The key must be specified when deleting an object"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2103
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 2104
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    .line 2103
    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2105
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    .line 2106
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 2105
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public deleteObject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 2083
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteObject(Lcom/amazonaws/services/s3/model/DeleteObjectRequest;)V

    return-void
.end method

.method public deleteObjectTagging(Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;)Lcom/amazonaws/services/s3/model/DeleteObjectTaggingResult;
    .locals 7

    const-string v0, "The request parameter must be specified when delete the object tags"

    .line 5288
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5290
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketName"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5292
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Key"

    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5294
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v2

    const-string v3, "tagging"

    const/4 v4, 0x0

    .line 5296
    invoke-interface {v2, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "versionId"

    .line 5297
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;->getVersionId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addParameterIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 5299
    new-instance p1, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    new-instance v3, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$DeleteObjectTaggingResponseUnmarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$DeleteObjectTaggingResponseUnmarshaller;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/amazonaws/services/s3/internal/HeaderHandler;

    new-instance v5, Lcom/amazonaws/services/s3/internal/DeleteObjectTaggingHeaderHandler;

    invoke-direct {v5}, Lcom/amazonaws/services/s3/internal/DeleteObjectTaggingHeaderHandler;-><init>()V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-direct {p1, v3, v4}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V

    .line 5303
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/DeleteObjectTaggingResult;

    return-object p1
.end method

.method public deleteObjects(Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;)Lcom/amazonaws/services/s3/model/DeleteObjectsResult;
    .locals 7

    .line 2117
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    const-string v1, "delete"

    .line 2119
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->getMfa()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2122
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->getMfa()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequestWithMfaDetails(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V

    .line 2125
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->isRequesterPays()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequesterPaysHeader(Lcom/amazonaws/Request;Z)V

    .line 2127
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/MultiObjectDeleteXmlFactory;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/MultiObjectDeleteXmlFactory;-><init>()V

    .line 2128
    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/transform/MultiObjectDeleteXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;)[B

    move-result-object v1

    const-string v3, "Content-Length"

    .line 2129
    array-length v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Type"

    const-string v4, "application/xml"

    .line 2130
    invoke-interface {v0, v3, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v3}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 2133
    :try_start_0
    invoke-static {v1}, Lcom/amazonaws/util/Md5Utils;->computeMD5Hash([B)[B

    move-result-object v1

    .line 2134
    invoke-static {v1}, Lcom/amazonaws/util/BinaryUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Content-MD5"

    .line 2135
    invoke-interface {v0, v3, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2142
    new-instance v1, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    new-instance v3, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$DeleteObjectsResultUnmarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$DeleteObjectsResultUnmarshaller;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/amazonaws/services/s3/internal/HeaderHandler;

    const/4 v5, 0x0

    new-instance v6, Lcom/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler;

    invoke-direct {v6}, Lcom/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler;-><init>()V

    aput-object v6, v4, v5

    invoke-direct {v1, v3, v4}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V

    .line 2146
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->getBucketName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;

    .line 2151
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2152
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    .line 2154
    new-instance v1, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;

    .line 2155
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->getErrors()Ljava/util/List;

    move-result-object v2

    .line 2156
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->getDeletedObjects()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    const/16 p1, 0xc8

    .line 2158
    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;->setStatusCode(I)V

    const-string p1, "x-amz-request-id"

    .line 2159
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;->setRequestId(Ljava/lang/String;)V

    const-string p1, "x-amz-id-2"

    .line 2160
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;->setExtendedRequestId(Ljava/lang/String;)V

    const-string p1, "X-Amz-Cf-Id"

    .line 2161
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;->setCloudFrontId(Ljava/lang/String;)V

    .line 2163
    throw v1

    .line 2165
    :cond_1
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->getDeletedObjects()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->isRequesterCharged()Z

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsResult;-><init>(Ljava/util/List;Z)V

    return-object v0

    :catch_0
    move-exception p1

    .line 2137
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Couldn\'t compute md5 sum"

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public deleteVersion(Lcom/amazonaws/services/s3/model/DeleteVersionRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The delete version request object must be specified when deleting a version"

    .line 2191
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2194
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 2195
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 2196
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->getVersionId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "The bucket name must be specified when deleting a version"

    .line 2198
    invoke-static {v0, v3}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "The key must be specified when deleting a version"

    .line 2200
    invoke-static {v1, v3}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "The version ID must be specified when deleting a version"

    .line 2201
    invoke-static {v2, v3}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2204
    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v3

    if-eqz v2, :cond_0

    const-string v4, "versionId"

    .line 2207
    invoke-interface {v3, v4, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->getMfa()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2211
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->getMfa()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequestWithMfaDetails(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V

    .line 2214
    :cond_1
    iget-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v3, p1, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public deleteVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 2179
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteVersion(Lcom/amazonaws/services/s3/model/DeleteVersionRequest;)V

    return-void
.end method

.method public disableRequesterPays(Ljava/lang/String;)V
    .locals 2

    .line 4672
    new-instance v0, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;

    sget-object v1, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;->BucketOwner:Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;-><init>(Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;)V

    .line 4675
    new-instance v1, Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;

    invoke-direct {v1, p1, v0}, Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;)V

    invoke-direct {p0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->setBucketRequestPayment(Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;)V

    return-void
.end method

.method public doesBucketExist(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1221
    :try_start_0
    new-instance v1, Lcom/amazonaws/services/s3/model/HeadBucketRequest;

    invoke-direct {v1, p1}, Lcom/amazonaws/services/s3/model/HeadBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->headBucket(Lcom/amazonaws/services/s3/model/HeadBucketRequest;)Lcom/amazonaws/services/s3/model/HeadBucketResult;
    :try_end_0
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 1226
    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_2

    .line 1227
    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x193

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 1230
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 1233
    :cond_1
    throw p1

    :cond_2
    :goto_0
    return v0
.end method

.method public doesObjectExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1242
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->getObjectMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :try_end_0
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 1245
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getStatusCode()I

    move-result p2

    const/16 v0, 0x194

    if-ne p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1248
    :cond_0
    throw p1
.end method

.method public enableRequesterPays(Ljava/lang/String;)V
    .locals 2

    .line 4658
    new-instance v0, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;

    sget-object v1, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;->Requester:Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;-><init>(Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;)V

    .line 4661
    new-instance v1, Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;

    invoke-direct {v1, p1, v0}, Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;)V

    invoke-direct {p0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->setBucketRequestPayment(Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;)V

    return-void
.end method

.method public generatePresignedUrl(Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;)Ljava/net/URL;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    const-string v0, "The request parameter must be specified when generating a pre-signed URL"

    .line 3199
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3202
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    .line 3203
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v0, "The bucket name parameter must be specified when generating a pre-signed URL"

    .line 3205
    invoke-static {v4, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3207
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getMethod()Lcom/amazonaws/HttpMethod;

    move-result-object v0

    const-string v1, "The HTTP method request parameter must be specified when generating a pre-signed URL"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3210
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getExpiration()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3211
    new-instance v0, Ljava/util/Date;

    .line 3212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v6, 0xdbba0

    add-long/2addr v1, v6

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 3211
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setExpiration(Ljava/util/Date;)V

    .line 3215
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getMethod()Lcom/amazonaws/HttpMethod;

    move-result-object v0

    .line 3216
    invoke-virtual {v0}, Lcom/amazonaws/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3215
    invoke-static {v0}, Lcom/amazonaws/http/HttpMethodName;->valueOf(Ljava/lang/String;)Lcom/amazonaws/http/HttpMethodName;

    move-result-object v0

    .line 3223
    invoke-virtual {p0, v4, v5, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 3225
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->isZeroByteContent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3226
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 3229
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getRequestParameters()Ljava/util/Map;

    move-result-object v1

    .line 3230
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 3229
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3231
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3234
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getContentType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "Content-Type"

    .line 3235
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3238
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getContentMd5()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "Content-MD5"

    .line 3239
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getContentMd5()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3243
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateSSE_C(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    const-string v1, "x-amz-server-side-encryption"

    .line 3246
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getSSEAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 3245
    invoke-static {v0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->addHeaderIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "x-amz-server-side-encryption-aws-kms-key-id"

    .line 3250
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getKmsCmkId()Ljava/lang/String;

    move-result-object v2

    .line 3248
    invoke-static {v0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->addHeaderIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 3252
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getResponseHeaders()Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addResponseHeaderParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V

    .line 3254
    invoke-virtual {p0, v0, v4, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->createSigner(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;

    move-result-object v1

    .line 3256
    instance-of v2, v1, Lcom/amazonaws/auth/Presigner;

    if-eqz v2, :cond_5

    .line 3259
    check-cast v1, Lcom/amazonaws/auth/Presigner;

    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 3261
    invoke-interface {v2}, Lcom/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v2

    .line 3262
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getExpiration()Ljava/util/Date;

    move-result-object p1

    .line 3259
    invoke-interface {v1, v0, v2, p1}, Lcom/amazonaws/auth/Presigner;->presignRequest(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;Ljava/util/Date;)V

    goto :goto_1

    .line 3269
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getMethod()Lcom/amazonaws/HttpMethod;

    move-result-object v3

    .line 3272
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getExpiration()Ljava/util/Date;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v0

    .line 3267
    invoke-virtual/range {v1 .. v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->presignRequest(Lcom/amazonaws/Request;Lcom/amazonaws/HttpMethod;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x1

    .line 3277
    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->convertRequestToUrl(Lcom/amazonaws/Request;Z)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public generatePresignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 3170
    sget-object v0, Lcom/amazonaws/HttpMethod;->GET:Lcom/amazonaws/HttpMethod;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->generatePresignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/amazonaws/HttpMethod;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public generatePresignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/amazonaws/HttpMethod;)Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 3183
    new-instance v0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;

    invoke-direct {v0, p1, p2, p4}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/HttpMethod;)V

    .line 3185
    invoke-virtual {v0, p3}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setExpiration(Ljava/util/Date;)V

    .line 3187
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->generatePresignedUrl(Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public getBucketAccelerateConfiguration(Lcom/amazonaws/services/s3/model/GetBucketAccelerateConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    const-string v0, "getBucketAccelerateConfigurationRequest must be specified."

    .line 2970
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2972
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketAccelerateConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when querying accelerate configuration"

    .line 2973
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2976
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "accelerate"

    .line 2978
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2980
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketAccelerateConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketAccelerateConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;

    return-object p1
.end method

.method public getBucketAccelerateConfiguration(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2961
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketAccelerateConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetBucketAccelerateConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getBucketAccelerateConfiguration(Lcom/amazonaws/services/s3/model/GetBucketAccelerateConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public getBucketAcl(Lcom/amazonaws/services/s3/model/GetBucketAclRequest;)Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 1072
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketAclRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    const-string v0, "The bucket name parameter must be specified when requesting a bucket\'s ACL"

    .line 1073
    invoke-static {v1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    .line 1076
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->getAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object p1

    return-object p1
.end method

.method public getBucketAcl(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The bucket name parameter must be specified when requesting a bucket\'s ACL"

    .line 1057
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 1060
    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->getAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object p1

    return-object p1
.end method

.method public getBucketAnalyticsConfiguration(Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationRequest;)Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    const-string v0, "The request cannot be null"

    .line 5036
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5039
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketName"

    .line 5038
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5041
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationRequest;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Analytics Id"

    .line 5040
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5043
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    .line 5044
    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "analytics"

    .line 5045
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "id"

    .line 5046
    invoke-interface {p1, v2, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 5048
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$GetBucketAnalyticsConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$GetBucketAnalyticsConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationResult;

    return-object p1
.end method

.method public getBucketAnalyticsConfiguration(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 5028
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getBucketAnalyticsConfiguration(Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationRequest;)Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationResult;

    move-result-object p1

    return-object p1
.end method

.method public getBucketCrossOriginConfiguration(Lcom/amazonaws/services/s3/model/GetBucketCrossOriginConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;
    .locals 3

    const-string v0, "The request object parameter getBucketCrossOriginConfigurationRequest must be specified."

    .line 2481
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2483
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketCrossOriginConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name must be specified when retrieving the bucket cross origin configuration."

    .line 2484
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2487
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "cors"

    .line 2489
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2492
    :try_start_0
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketCrossOriginConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketCrossOriginConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;
    :try_end_0
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2495
    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x194

    if-eq v0, v1, :cond_0

    .line 2499
    throw p1

    :cond_0
    return-object v2
.end method

.method public getBucketCrossOriginConfiguration(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;
    .locals 1

    .line 2474
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketCrossOriginConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetBucketCrossOriginConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getBucketCrossOriginConfiguration(Lcom/amazonaws/services/s3/model/GetBucketCrossOriginConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public getBucketInventoryConfiguration(Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationRequest;)Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    const-string v0, "The request cannot be null"

    .line 5137
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5139
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketName"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5140
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationRequest;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Inventory id"

    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5142
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "inventory"

    .line 5143
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "id"

    .line 5144
    invoke-interface {p1, v2, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 5146
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$GetBucketInventoryConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$GetBucketInventoryConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;

    return-object p1
.end method

.method public getBucketInventoryConfiguration(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 5129
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getBucketInventoryConfiguration(Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationRequest;)Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;

    move-result-object p1

    return-object p1
.end method

.method public getBucketLifecycleConfiguration(Lcom/amazonaws/services/s3/model/GetBucketLifecycleConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
    .locals 3

    const-string v0, "The request object pamameter getBucketLifecycleConfigurationRequest must be specified."

    .line 2352
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2354
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketLifecycleConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name must be specifed when retrieving the bucket lifecycle configuration."

    .line 2355
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2358
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "lifecycle"

    .line 2360
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    :try_start_0
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketLifecycleConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketLifecycleConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
    :try_end_0
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2366
    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x194

    if-eq v0, v1, :cond_0

    .line 2370
    throw p1

    :cond_0
    return-object v2
.end method

.method public getBucketLifecycleConfiguration(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
    .locals 1

    .line 2345
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketLifecycleConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetBucketLifecycleConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getBucketLifecycleConfiguration(Lcom/amazonaws/services/s3/model/GetBucketLifecycleConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public getBucketLocation(Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The request parameter must be specified when requesting a bucket\'s location"

    .line 801
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 803
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when requesting a bucket\'s location"

    .line 804
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 807
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "location"

    .line 809
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketLocationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketLocationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getBucketLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 822
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getBucketLocation(Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBucketLoggingConfiguration(Lcom/amazonaws/services/s3/model/GetBucketLoggingConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The bucket logging configuration"

    .line 2912
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2914
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketLoggingConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 2915
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    const-string v1, "logging"

    .line 2917
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2918
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketLoggingConfigurationnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketLoggingConfigurationnmarshaller;-><init>()V

    .line 2920
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketLoggingConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object p1

    .line 2918
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;

    return-object p1
.end method

.method public getBucketLoggingConfiguration(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The bucket name parameter must be specified when requesting a bucket\'s logging status"

    .line 2902
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2905
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketLoggingConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetBucketLoggingConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getBucketLoggingConfiguration(Lcom/amazonaws/services/s3/model/GetBucketLoggingConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public getBucketMetricsConfiguration(Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationRequest;)Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    const-string v0, "The request cannot be null"

    .line 4938
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4939
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketName"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4940
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationRequest;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Metrics Id"

    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4942
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    .line 4943
    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "metrics"

    .line 4944
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "id"

    .line 4945
    invoke-interface {p1, v2, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4947
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$GetBucketMetricsConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$GetBucketMetricsConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationResult;

    return-object p1
.end method

.method public getBucketMetricsConfiguration(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 4930
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getBucketMetricsConfiguration(Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationRequest;)Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationResult;

    move-result-object p1

    return-object p1
.end method

.method public getBucketNotificationConfiguration(Lcom/amazonaws/services/s3/model/GetBucketNotificationConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 2881
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketNotificationConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket request must specify a bucket name when querying notification configuration"

    .line 2882
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2885
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "notification"

    .line 2887
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2889
    invoke-static {}, Lcom/amazonaws/services/s3/model/transform/BucketNotificationConfigurationStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/s3/model/transform/BucketNotificationConfigurationStaxUnmarshaller;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;

    return-object p1
.end method

.method public getBucketNotificationConfiguration(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The bucket name parameter must be specified when querying notification configuration"

    .line 2864
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2866
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketNotificationConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetBucketNotificationConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getBucketNotificationConfiguration(Lcom/amazonaws/services/s3/model/GetBucketNotificationConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public getBucketPolicy(Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;)Lcom/amazonaws/services/s3/model/BucketPolicy;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The request object must be specified when getting a bucket policy"

    .line 3077
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3080
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name must be specified when getting a bucket policy"

    .line 3081
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3084
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "policy"

    .line 3086
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3088
    new-instance v1, Lcom/amazonaws/services/s3/model/BucketPolicy;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/BucketPolicy;-><init>()V

    .line 3090
    :try_start_0
    new-instance v3, Lcom/amazonaws/services/s3/internal/S3StringResponseHandler;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/internal/S3StringResponseHandler;-><init>()V

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3091
    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/BucketPolicy;->setPolicyText(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 3100
    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NoSuchBucketPolicy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 3103
    :cond_0
    throw p1
.end method

.method public getBucketPolicy(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 3030
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getBucketPolicy(Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;)Lcom/amazonaws/services/s3/model/BucketPolicy;

    move-result-object p1

    return-object p1
.end method

.method public getBucketReplicationConfiguration(Lcom/amazonaws/services/s3/model/GetBucketReplicationConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    const-string v0, "The bucket request parameter must be specified when retrieving replication configuration"

    .line 4861
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4864
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketReplicationConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket request must specify a bucket name when retrieving replication configuration"

    .line 4865
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4869
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "replication"

    .line 4871
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4873
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketReplicationConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketReplicationConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;

    return-object p1
.end method

.method public getBucketReplicationConfiguration(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 4852
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketReplicationConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetBucketReplicationConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getBucketReplicationConfiguration(Lcom/amazonaws/services/s3/model/GetBucketReplicationConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public getBucketTaggingConfiguration(Lcom/amazonaws/services/s3/model/GetBucketTaggingConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;
    .locals 3

    const-string v0, "The request object parameter getBucketTaggingConfigurationRequest must be specifed."

    .line 2610
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2612
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketTaggingConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name must be specified when retrieving the bucket tagging configuration."

    .line 2613
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2616
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "tagging"

    .line 2618
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2621
    :try_start_0
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketTaggingConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketTaggingConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;
    :try_end_0
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2624
    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x194

    if-eq v0, v1, :cond_0

    .line 2628
    throw p1

    :cond_0
    return-object v2
.end method

.method public getBucketTaggingConfiguration(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;
    .locals 1

    .line 2604
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketTaggingConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetBucketTaggingConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getBucketTaggingConfiguration(Lcom/amazonaws/services/s3/model/GetBucketTaggingConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public getBucketVersioningConfiguration(Lcom/amazonaws/services/s3/model/GetBucketVersioningConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The request object parameter getBucketVersioningConfigurationRequest must be specified."

    .line 2280
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2282
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketVersioningConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when querying versioning configuration"

    .line 2283
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2286
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "versioning"

    .line 2288
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketVersioningConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketVersioningConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;

    return-object p1
.end method

.method public getBucketVersioningConfiguration(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 2272
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketVersioningConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetBucketVersioningConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getBucketVersioningConfiguration(Lcom/amazonaws/services/s3/model/GetBucketVersioningConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public getBucketWebsiteConfiguration(Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 2316
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when requesting a bucket\'s website configuration"

    .line 2318
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2321
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "website"

    .line 2323
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v3, "application/xml"

    .line 2324
    invoke-interface {p1, v1, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2327
    :try_start_0
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketWebsiteConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketWebsiteConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
    :try_end_0
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2330
    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    return-object v2

    .line 2333
    :cond_0
    throw p1
.end method

.method public getBucketWebsiteConfiguration(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 2303
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getBucketWebsiteConfiguration(Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public getCachedResponseMetadata(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/S3ResponseMetadata;
    .locals 1

    .line 3700
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/http/AmazonHttpClient;->getResponseMetadataForRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/S3ResponseMetadata;

    return-object p1
.end method

.method public getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The destination file parameter must be specified when downloading an object directly to a file"

    .line 1467
    invoke-static {p2, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1470
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const/4 v1, 0x1

    .line 1473
    :cond_0
    new-instance v0, Lcom/amazonaws/services/s3/AmazonS3Client$2;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client$2;-><init>(Lcom/amazonaws/services/s3/AmazonS3Client;Lcom/amazonaws/services/s3/model/GetObjectRequest;)V

    invoke-static {p2, v0, v1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->retryableDownloadS3ObjectToFile(Ljava/io/File;Lcom/amazonaws/services/s3/internal/ServiceUtils$RetryableS3DownloadTask;Z)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 1492
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The GetObjectRequest parameter must be specified when requesting an object"

    .line 1315
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1317
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when requesting an object"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1319
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The key parameter must be specified when requesting an object"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1322
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 1323
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    .line 1322
    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1325
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getVersionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "versionId"

    .line 1326
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getVersionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 1332
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1333
    aget-wide v4, v1, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 1339
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, v1, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string v1, "Range"

    .line 1341
    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->isRequesterPays()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequesterPaysHeader(Lcom/amazonaws/Request;Z)V

    .line 1346
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getResponseHeaders()Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addResponseHeaderParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V

    const-string v1, "If-Modified-Since"

    .line 1349
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getModifiedSinceConstraint()Ljava/util/Date;

    move-result-object v3

    .line 1348
    invoke-static {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addDateHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    const-string v1, "If-Unmodified-Since"

    .line 1351
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getUnmodifiedSinceConstraint()Ljava/util/Date;

    move-result-object v3

    .line 1350
    invoke-static {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addDateHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    const-string v1, "If-Match"

    .line 1353
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getMatchingETagConstraints()Ljava/util/List;

    move-result-object v3

    .line 1352
    invoke-static {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addStringListHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    const-string v1, "If-None-Match"

    .line 1355
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getNonmatchingETagConstraints()Ljava/util/List;

    move-result-object v3

    .line 1354
    invoke-static {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addStringListHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    .line 1358
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateSSE_C(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 1365
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getGeneralProgressListener()Lcom/amazonaws/event/ProgressListener;

    move-result-object v1

    .line 1367
    invoke-static {v1}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->wrapListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    move-result-object v1

    .line 1370
    :try_start_0
    new-instance v3, Lcom/amazonaws/services/s3/internal/S3ObjectResponseHandler;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/internal/S3ObjectResponseHandler;-><init>()V

    .line 1371
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 1370
    invoke-direct {p0, v0, v3, v4, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/S3Object;

    .line 1378
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/model/S3Object;->setBucketName(Ljava/lang/String;)V

    .line 1379
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/model/S3Object;->setKey(Ljava/lang/String;)V

    .line 1381
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v3

    .line 1386
    new-instance v4, Lcom/amazonaws/util/ServiceClientHolderInputStream;

    invoke-direct {v4, v3, p0}, Lcom/amazonaws/util/ServiceClientHolderInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/AmazonWebServiceClient;)V

    if-eqz v1, :cond_3

    .line 1393
    new-instance v3, Lcom/amazonaws/event/ProgressReportingInputStream;

    invoke-direct {v3, v4, v1}, Lcom/amazonaws/event/ProgressReportingInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)V

    .line 1395
    invoke-virtual {v3, v2}, Lcom/amazonaws/event/ProgressReportingInputStream;->setFireCompletedEvent(Z)V

    const/4 v4, 0x2

    .line 1397
    invoke-direct {p0, v1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    goto :goto_0

    :cond_3
    move-object v3, v4

    .line 1405
    :goto_0
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->skipMd5CheckPerRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1406
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->skipMd5CheckPerResponse(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1408
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1409
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->isMultipartUploadETag(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1410
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/util/BinaryUtils;->fromHex(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "MD5"

    .line 1415
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 1416
    new-instance v4, Lcom/amazonaws/services/s3/internal/DigestValidationInputStream;

    invoke-direct {v4, v3, v2, p1}, Lcom/amazonaws/services/s3/internal/DigestValidationInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;[B)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1418
    :try_start_2
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3Client;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "No MD5 digest algorithm available.  Unable to calculate checksum and verify data integrity."

    invoke-interface {v2, v4, p1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    move-object p1, v3

    goto :goto_2

    .line 1425
    :cond_5
    new-instance p1, Lcom/amazonaws/util/LengthCheckInputStream;

    .line 1426
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentLength()J

    move-result-wide v4

    invoke-direct {p1, v3, v4, v5, v2}, Lcom/amazonaws/util/LengthCheckInputStream;-><init>(Ljava/io/InputStream;JZ)V

    .line 1435
    :goto_2
    new-instance v2, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    invoke-direct {v2, p1}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/S3Object;->setObjectContent(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V
    :try_end_2
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :catch_1
    move-exception p1

    .line 1446
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getStatusCode()I

    move-result v0

    const/16 v2, 0x19c

    if-eq v0, v2, :cond_7

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getStatusCode()I

    move-result v0

    const/16 v2, 0x130

    if-ne v0, v2, :cond_6

    goto :goto_3

    :cond_6
    const/16 v0, 0x8

    .line 1452
    invoke-direct {p0, v1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 1454
    throw p1

    :cond_7
    :goto_3
    const/16 p1, 0x10

    .line 1447
    invoke-direct {p0, v1, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 1209
    new-instance v0, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1

    return-object p1
.end method

.method public getObjectAcl(Lcom/amazonaws/services/s3/model/GetObjectAclRequest;)Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The request parameter must be specified when requesting an object\'s ACL"

    .line 952
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 954
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when requesting an object\'s ACL"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 956
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The key parameter must be specified when requesting an object\'s ACL"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 959
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 960
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->getVersionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->isRequesterPays()Z

    move-result v6

    move-object v2, p0

    move-object v7, p1

    .line 959
    invoke-direct/range {v2 .. v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->getAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object p1

    return-object p1
.end method

.method public getObjectAcl(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 935
    new-instance v0, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getObjectAcl(Lcom/amazonaws/services/s3/model/GetObjectAclRequest;)Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object p1

    return-object p1
.end method

.method public getObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 946
    new-instance v0, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getObjectAcl(Lcom/amazonaws/services/s3/model/GetObjectAclRequest;)Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object p1

    return-object p1
.end method

.method public getObjectAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    const-string v0, "Bucket name must be provided"

    .line 5228
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Object key must be provided"

    .line 5229
    invoke-static {p2, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5231
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->getObject(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1

    .line 5233
    :try_start_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/util/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 5235
    :catch_0
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string p2, "Error streaming content from S3 during download"

    invoke-direct {p1, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getObjectMetadata(Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The GetObjectMetadataRequest parameter must be specified when requesting an object\'s metadata"

    .line 1175
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1178
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 1179
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1180
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->getVersionId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "The bucket name parameter must be specified when requesting an object\'s metadata"

    .line 1182
    invoke-static {v0, v3}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "The key parameter must be specified when requesting an object\'s metadata"

    .line 1184
    invoke-static {v1, v3}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1187
    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->HEAD:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v3

    if-eqz v2, :cond_0

    const-string v4, "versionId"

    .line 1190
    invoke-interface {v3, v4, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->isRequesterPays()Z

    move-result v2

    invoke-static {v3, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequesterPaysHeader(Lcom/amazonaws/Request;Z)V

    .line 1194
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->getPartNumber()Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->addPartNumberIfNotNull(Lcom/amazonaws/Request;Ljava/lang/Integer;)V

    .line 1196
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateSSE_C(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 1198
    new-instance p1, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;-><init>()V

    invoke-direct {p0, v3, p1, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-object p1
.end method

.method public getObjectMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 1163
    new-instance v0, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getObjectMetadata(Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getObjectTagging(Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;)Lcom/amazonaws/services/s3/model/GetObjectTaggingResult;
    .locals 7

    const-string v0, "The request parameter must be specified when getting the object tags"

    .line 5242
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5244
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketName"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5246
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Key"

    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5248
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v2

    const-string v3, "tagging"

    const/4 v4, 0x0

    .line 5250
    invoke-interface {v2, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "versionId"

    .line 5251
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;->getVersionId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addParameterIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 5253
    new-instance p1, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    new-instance v3, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$GetObjectTaggingResponseUnmarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$GetObjectTaggingResponseUnmarshaller;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/amazonaws/services/s3/internal/HeaderHandler;

    new-instance v5, Lcom/amazonaws/services/s3/internal/GetObjectTaggingResponseHeaderHandler;

    invoke-direct {v5}, Lcom/amazonaws/services/s3/internal/GetObjectTaggingResponseHeaderHandler;-><init>()V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-direct {p1, v3, v4}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V

    .line 5257
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/GetObjectTaggingResult;

    return-object p1
.end method

.method public getRegion()Lcom/amazonaws/services/s3/model/Region;
    .locals 2

    .line 4510
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->endpoint:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "s3.amazonaws.com"

    .line 4511
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4512
    sget-object v0, Lcom/amazonaws/services/s3/model/Region;->US_Standard:Lcom/amazonaws/services/s3/model/Region;

    return-object v0

    .line 4514
    :cond_0
    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->S3_REGIONAL_ENDPOINT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 4515
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 4516
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/services/s3/model/Region;->fromValue(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Region;

    move-result-object v0

    return-object v0

    .line 4518
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "S3 client with invalid S3 endpoint configured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRegionName()Ljava/lang/String;
    .locals 3

    .line 5327
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->endpoint:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "s3.amazonaws.com"

    .line 5328
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "us-east-1"

    return-object v0

    .line 5331
    :cond_0
    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->S3_REGIONAL_ENDPOINT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 5333
    :try_start_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    const/4 v1, 0x1

    .line 5334
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/regions/RegionUtils;->getRegion(Ljava/lang/String;)Lcom/amazonaws/regions/Region;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/regions/Region;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5336
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No valid region has been specified. Unable to return region name"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getResourceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4481
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->getUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getS3AccountOwner()Lcom/amazonaws/services/s3/model/Owner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 754
    new-instance v0, Lcom/amazonaws/services/s3/model/GetS3AccountOwnerRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/GetS3AccountOwnerRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getS3AccountOwner(Lcom/amazonaws/services/s3/model/GetS3AccountOwnerRequest;)Lcom/amazonaws/services/s3/model/Owner;

    move-result-object v0

    return-object v0
.end method

.method public getS3AccountOwner(Lcom/amazonaws/services/s3/model/GetS3AccountOwnerRequest;)Lcom/amazonaws/services/s3/model/Owner;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The request object parameter getS3AccountOwnerRequest must be specified."

    .line 762
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 764
    new-instance p1, Lcom/amazonaws/services/s3/model/ListBucketsRequest;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/ListBucketsRequest;-><init>()V

    sget-object v0, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    .line 767
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketsOwnerUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketsOwnerUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/Owner;

    return-object p1
.end method

.method public getUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 2

    .line 4503
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    const-string v1, "Amazon S3"

    invoke-direct {v0, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Ljava/lang/String;)V

    .line 4504
    invoke-virtual {p0, v0, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->resolveRequestEndpoint(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 4505
    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->convertRequestToUrl(Lcom/amazonaws/Request;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public headBucket(Lcom/amazonaws/services/s3/model/HeadBucketRequest;)Lcom/amazonaws/services/s3/model/HeadBucketResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 1256
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/HeadBucketRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucketName parameter must be specified."

    .line 1258
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1261
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->HEAD:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    .line 1263
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/HeadBucketResultHandler;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/HeadBucketResultHandler;-><init>()V

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/HeadBucketResult;

    return-object p1
.end method

.method public initiateMultipartUpload(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The request parameter must be specified when initiating a multipart upload"

    .line 3395
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3398
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when initiating a multipart upload"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3400
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The key parameter must be specified when initiating a multipart upload"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3404
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 3405
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    .line 3403
    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    const-string v1, "uploads"

    const/4 v2, 0x0

    .line 3407
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3409
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getStorageClass()Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "x-amz-storage-class"

    .line 3411
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getStorageClass()Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3410
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3414
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "x-amz-website-redirect-location"

    .line 3416
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v2

    .line 3415
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3419
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3420
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addAclHeaders(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    goto :goto_0

    .line 3421
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getCannedACL()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "x-amz-acl"

    .line 3422
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getCannedACL()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v2

    .line 3423
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3422
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3426
    :cond_3
    :goto_0
    iget-object v1, p1, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->objectMetadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    if-eqz v1, :cond_4

    .line 3427
    iget-object v1, p1, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->objectMetadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequestMetadata(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 3430
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->isRequesterPays()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequesterPaysHeader(Lcom/amazonaws/Request;Z)V

    .line 3433
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateSSE_C(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 3437
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getSSEAwsKeyManagementParams()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    move-result-object v1

    .line 3436
    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateSSE_KMS(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V

    .line 3441
    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->setZeroContentLength(Lcom/amazonaws/Request;)V

    .line 3446
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    new-array v3, v2, [B

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 3450
    new-instance v1, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    new-instance v3, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$InitiateMultipartUploadResultUnmarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$InitiateMultipartUploadResultUnmarshaller;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/amazonaws/services/s3/internal/HeaderHandler;

    new-instance v5, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;

    invoke-direct {v5}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;-><init>()V

    aput-object v5, v4, v2

    invoke-direct {v1, v3, v4}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V

    .line 3456
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    .line 3457
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 3455
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    return-object p1
.end method

.method public isRequesterPaysEnabled(Ljava/lang/String;)Z
    .locals 1

    .line 4687
    new-instance v0, Lcom/amazonaws/services/s3/model/GetRequestPaymentConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetRequestPaymentConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getBucketRequestPayment(Lcom/amazonaws/services/s3/model/GetRequestPaymentConfigurationRequest;)Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;

    move-result-object p1

    .line 4689
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;->getPayer()Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

    move-result-object p1

    sget-object v0, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;->Requester:Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public listBucketAnalyticsConfigurations(Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsRequest;)Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    const-string v0, "The request cannot be null"

    .line 5090
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5093
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketName"

    .line 5092
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5095
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    .line 5096
    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    const-string v3, "analytics"

    .line 5097
    invoke-interface {v1, v3, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "continuation-token"

    .line 5098
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsRequest;->getContinuationToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v3, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addParameterIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 5100
    new-instance p1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketAnalyticsConfigurationUnmarshaller;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketAnalyticsConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;

    return-object p1
.end method

.method public listBucketInventoryConfigurations(Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsRequest;)Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    const-string v0, "The request cannot be null"

    .line 5183
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5185
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketName"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5187
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    const-string v3, "inventory"

    .line 5188
    invoke-interface {v1, v3, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "continuation-token"

    .line 5189
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsRequest;->getContinuationToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v3, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addParameterIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 5191
    new-instance p1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketInventoryConfigurationsUnmarshaller;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketInventoryConfigurationsUnmarshaller;-><init>()V

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;

    return-object p1
.end method

.method public listBucketMetricsConfigurations(Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsRequest;)Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    const-string v0, "The request cannot be null"

    .line 4987
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4989
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketName"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4991
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    .line 4992
    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    const-string v3, "metrics"

    .line 4993
    invoke-interface {v1, v3, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "continuation-token"

    .line 4994
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsRequest;->getContinuationToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v3, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addParameterIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 4996
    new-instance p1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketMetricsConfigurationsUnmarshaller;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketMetricsConfigurationsUnmarshaller;-><init>()V

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;

    return-object p1
.end method

.method public listBuckets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/Bucket;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 789
    new-instance v0, Lcom/amazonaws/services/s3/model/ListBucketsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ListBucketsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->listBuckets(Lcom/amazonaws/services/s3/model/ListBucketsRequest;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listBuckets(Lcom/amazonaws/services/s3/model/ListBucketsRequest;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/ListBucketsRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/Bucket;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 777
    sget-object v0, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    .line 779
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketsUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketsUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public listMultipartUploads(Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;)Lcom/amazonaws/services/s3/model/MultipartUploadListing;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The request parameter must be specified when listing multipart uploads"

    .line 3470
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3473
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when listing multipart uploads"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3477
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    .line 3476
    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    const-string v1, "uploads"

    .line 3479
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3481
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getKeyMarker()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "key-marker"

    .line 3482
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getKeyMarker()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3484
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getMaxUploads()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "max-uploads"

    .line 3485
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getMaxUploads()Ljava/lang/Integer;

    move-result-object v3

    .line 3486
    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3485
    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3488
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getUploadIdMarker()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "upload-id-marker"

    .line 3490
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getUploadIdMarker()Ljava/lang/String;

    move-result-object v3

    .line 3489
    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3492
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "delimiter"

    .line 3493
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3495
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "prefix"

    .line 3496
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3498
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "encoding-type"

    .line 3499
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3502
    :cond_5
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListMultipartUploadsResultUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListMultipartUploadsResultUnmarshaller;-><init>()V

    .line 3503
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getBucketName()Ljava/lang/String;

    move-result-object p1

    .line 3502
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/MultipartUploadListing;

    return-object p1
.end method

.method public listNextBatchOfObjects(Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;)Lcom/amazonaws/services/s3/model/ObjectListing;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 728
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;->getPreviousObjectListing()Lcom/amazonaws/services/s3/model/ObjectListing;

    move-result-object v0

    .line 730
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->isTruncated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 731
    new-instance p1, Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/ObjectListing;-><init>()V

    .line 732
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/ObjectListing;->setBucketName(Ljava/lang/String;)V

    .line 733
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->getDelimiter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/ObjectListing;->setDelimiter(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->getNextMarker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/ObjectListing;->setMarker(Ljava/lang/String;)V

    .line 735
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->getMaxKeys()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/ObjectListing;->setMaxKeys(I)V

    .line 736
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/ObjectListing;->setPrefix(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->getEncodingType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->setEncodingType(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 738
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->setTruncated(Z)V

    return-object p1

    .line 742
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;->toListObjectsRequest()Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->listObjects(Lcom/amazonaws/services/s3/model/ListObjectsRequest;)Lcom/amazonaws/services/s3/model/ObjectListing;

    move-result-object p1

    return-object p1
.end method

.method public listNextBatchOfObjects(Lcom/amazonaws/services/s3/model/ObjectListing;)Lcom/amazonaws/services/s3/model/ObjectListing;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The previous object listing parameter must be specified when listing the next batch of objects in a bucket"

    .line 714
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 718
    new-instance v0, Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;-><init>(Lcom/amazonaws/services/s3/model/ObjectListing;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->listNextBatchOfObjects(Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;)Lcom/amazonaws/services/s3/model/ObjectListing;

    move-result-object p1

    return-object p1
.end method

.method public listNextBatchOfVersions(Lcom/amazonaws/services/s3/model/ListNextBatchOfVersionsRequest;)Lcom/amazonaws/services/s3/model/VersionListing;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The request object parameter must be specified when listing the next batch of versions in a bucket"

    .line 494
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListNextBatchOfVersionsRequest;->getPreviousVersionListing()Lcom/amazonaws/services/s3/model/VersionListing;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/VersionListing;->isTruncated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 502
    new-instance p1, Lcom/amazonaws/services/s3/model/VersionListing;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/VersionListing;-><init>()V

    .line 503
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/VersionListing;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/VersionListing;->setBucketName(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/VersionListing;->getDelimiter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/VersionListing;->setDelimiter(Ljava/lang/String;)V

    .line 505
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/VersionListing;->getNextKeyMarker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/VersionListing;->setKeyMarker(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/VersionListing;->getNextVersionIdMarker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/VersionListing;->setVersionIdMarker(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/VersionListing;->getMaxKeys()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/VersionListing;->setMaxKeys(I)V

    .line 508
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/VersionListing;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/VersionListing;->setPrefix(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/VersionListing;->getEncodingType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/VersionListing;->setEncodingType(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 510
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/VersionListing;->setTruncated(Z)V

    return-object p1

    .line 515
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListNextBatchOfVersionsRequest;->toListVersionsRequest()Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->listVersions(Lcom/amazonaws/services/s3/model/ListVersionsRequest;)Lcom/amazonaws/services/s3/model/VersionListing;

    move-result-object p1

    return-object p1
.end method

.method public listNextBatchOfVersions(Lcom/amazonaws/services/s3/model/VersionListing;)Lcom/amazonaws/services/s3/model/VersionListing;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 486
    new-instance v0, Lcom/amazonaws/services/s3/model/ListNextBatchOfVersionsRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/ListNextBatchOfVersionsRequest;-><init>(Lcom/amazonaws/services/s3/model/VersionListing;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->listNextBatchOfVersions(Lcom/amazonaws/services/s3/model/ListNextBatchOfVersionsRequest;)Lcom/amazonaws/services/s3/model/VersionListing;

    move-result-object p1

    return-object p1
.end method

.method public listObjects(Lcom/amazonaws/services/s3/model/ListObjectsRequest;)Lcom/amazonaws/services/s3/model/ObjectListing;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 626
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when listing objects in a bucket"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 635
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 639
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v4, 0x0

    .line 638
    invoke-virtual {p0, v2, v4, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v2

    const-string v3, "prefix"

    if-eqz v0, :cond_1

    .line 642
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/amazonaws/services/s3/internal/S3HttpUtils;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 643
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v5

    .line 641
    :goto_1
    invoke-static {v2, v3, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->addParameterIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "marker"

    .line 644
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getMarker()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->addParameterIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "delimiter"

    if-eqz v0, :cond_2

    .line 647
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/amazonaws/services/s3/internal/S3HttpUtils;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 648
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v1

    .line 645
    :goto_2
    invoke-static {v2, v3, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addParameterIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "encoding-type"

    .line 649
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addParameterIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getMaxKeys()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 652
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getMaxKeys()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_3

    const-string v1, "max-keys"

    .line 653
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getMaxKeys()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :cond_3
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListObjectsUnmarshaller;

    invoke-direct {v1, v0}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListObjectsUnmarshaller;-><init>(Z)V

    .line 656
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getBucketName()Ljava/lang/String;

    move-result-object p1

    .line 655
    invoke-direct {p0, v2, v1, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/ObjectListing;

    return-object p1
.end method

.method public listObjects(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ObjectListing;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 603
    new-instance v6, Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->listObjects(Lcom/amazonaws/services/s3/model/ListObjectsRequest;)Lcom/amazonaws/services/s3/model/ObjectListing;

    move-result-object p1

    return-object p1
.end method

.method public listObjects(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ObjectListing;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 614
    new-instance v6, Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->listObjects(Lcom/amazonaws/services/s3/model/ListObjectsRequest;)Lcom/amazonaws/services/s3/model/ObjectListing;

    move-result-object p1

    return-object p1
.end method

.method public listObjectsV2(Lcom/amazonaws/services/s3/model/ListObjectsV2Request;)Lcom/amazonaws/services/s3/model/ListObjectsV2Result;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 675
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when listing objects in a bucket"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 678
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->getBucketName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    .line 677
    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    const-string v1, "list-type"

    const-string v3, "2"

    .line 683
    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "start-after"

    .line 685
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->getStartAfter()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addParameterIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "continuation-token"

    .line 687
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->getContinuationToken()Ljava/lang/String;

    move-result-object v3

    .line 686
    invoke-static {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addParameterIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "delimiter"

    .line 688
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->getDelimiter()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addParameterIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "max-keys"

    .line 689
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->getMaxKeys()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addParameterIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "prefix"

    .line 690
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addParameterIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "encoding-type"

    .line 691
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->getEncodingType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addParameterIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fetch-owner"

    .line 692
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->isFetchOwner()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->getEncodingType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "url"

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 701
    :goto_0
    new-instance v3, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListObjectsV2Unmarshaller;

    invoke-direct {v3, v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListObjectsV2Unmarshaller;-><init>(Z)V

    .line 702
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->getBucketName()Ljava/lang/String;

    move-result-object p1

    .line 701
    invoke-direct {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    return-object p1
.end method

.method public listObjectsV2(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsV2Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 662
    new-instance v0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsV2Request;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->listObjectsV2(Lcom/amazonaws/services/s3/model/ListObjectsV2Request;)Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    move-result-object p1

    return-object p1
.end method

.method public listObjectsV2(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsV2Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 668
    new-instance v0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;-><init>()V

    .line 669
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsV2Request;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->withPrefix(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsV2Request;

    move-result-object p1

    .line 668
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->listObjectsV2(Lcom/amazonaws/services/s3/model/ListObjectsV2Request;)Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    move-result-object p1

    return-object p1
.end method

.method public listParts(Lcom/amazonaws/services/s3/model/ListPartsRequest;)Lcom/amazonaws/services/s3/model/PartListing;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The request parameter must be specified when listing parts"

    .line 3515
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3518
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when listing parts"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3520
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The key parameter must be specified when listing parts"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3522
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getUploadId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The upload ID parameter must be specified when listing parts"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3525
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 3526
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    .line 3525
    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    const-string v1, "uploadId"

    .line 3527
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getUploadId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3529
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getMaxParts()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "max-parts"

    .line 3530
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getMaxParts()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3532
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getPartNumberMarker()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "part-number-marker"

    .line 3533
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getPartNumberMarker()Ljava/lang/Integer;

    move-result-object v2

    .line 3534
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3533
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3536
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "encoding-type"

    .line 3537
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3541
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->isRequesterPays()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequesterPaysHeader(Lcom/amazonaws/Request;Z)V

    .line 3542
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListPartsResultUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListPartsResultUnmarshaller;-><init>()V

    .line 3543
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 3542
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PartListing;

    return-object p1
.end method

.method public listVersions(Lcom/amazonaws/services/s3/model/ListVersionsRequest;)Lcom/amazonaws/services/s3/model/VersionListing;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 559
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when listing versions in a bucket"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 571
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v4, 0x0

    .line 570
    invoke-virtual {p0, v2, v4, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v2

    const-string v3, "versions"

    .line 572
    invoke-interface {v2, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "prefix"

    if-eqz v0, :cond_1

    .line 576
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/amazonaws/services/s3/internal/S3HttpUtils;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 577
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v5

    .line 574
    :goto_1
    invoke-static {v2, v3, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->addParameterIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "key-marker"

    .line 578
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getKeyMarker()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->addParameterIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "version-id-marker"

    .line 580
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getVersionIdMarker()Ljava/lang/String;

    move-result-object v5

    .line 579
    invoke-static {v2, v3, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->addParameterIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "delimiter"

    if-eqz v0, :cond_2

    .line 583
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/amazonaws/services/s3/internal/S3HttpUtils;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 584
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v1

    .line 581
    :goto_2
    invoke-static {v2, v3, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addParameterIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 587
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_3

    const-string v1, "max-keys"

    .line 588
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v1, "encoding-type"

    .line 590
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addParameterIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$VersionListUnmarshaller;

    invoke-direct {v1, v0}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$VersionListUnmarshaller;-><init>(Z)V

    .line 593
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getBucketName()Ljava/lang/String;

    move-result-object p1

    .line 592
    invoke-direct {p0, v2, v1, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/VersionListing;

    return-object p1
.end method

.method public listVersions(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/VersionListing;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 526
    new-instance v7, Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->listVersions(Lcom/amazonaws/services/s3/model/ListVersionsRequest;)Lcom/amazonaws/services/s3/model/VersionListing;

    move-result-object p1

    return-object p1
.end method

.method public listVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/amazonaws/services/s3/model/VersionListing;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 540
    new-instance v0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;-><init>()V

    .line 541
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    move-result-object p1

    .line 542
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->withPrefix(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    move-result-object p1

    .line 543
    invoke-virtual {p1, p5}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->withDelimiter(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    move-result-object p1

    .line 544
    invoke-virtual {p1, p3}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->withKeyMarker(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    move-result-object p1

    .line 545
    invoke-virtual {p1, p4}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->withVersionIdMarker(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    move-result-object p1

    .line 546
    invoke-virtual {p1, p6}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->withMaxResults(Ljava/lang/Integer;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    move-result-object p1

    .line 547
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->listVersions(Lcom/amazonaws/services/s3/model/ListVersionsRequest;)Lcom/amazonaws/services/s3/model/VersionListing;

    move-result-object p1

    return-object p1
.end method

.method protected presignRequest(Lcom/amazonaws/Request;Lcom/amazonaws/HttpMethod;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request<",
            "TT;>;",
            "Lcom/amazonaws/HttpMethod;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4024
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->beforeRequest(Lcom/amazonaws/Request;)V

    .line 4026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 4028
    invoke-static {p4, p3}, Lcom/amazonaws/services/s3/internal/S3HttpUtils;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    const-string p3, ""

    :goto_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "?"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_2
    const-string p3, ""

    :goto_2
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "(?<=/)/"

    const-string p6, "%2F"

    .line 4036
    invoke-virtual {p3, p4, p6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4038
    iget-object p4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {p4}, Lcom/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object p4

    .line 4039
    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object p6

    if-eqz p6, :cond_3

    .line 4040
    invoke-virtual {p6}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4041
    invoke-virtual {p6}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object p4

    .line 4044
    :cond_3
    new-instance p6, Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;

    invoke-virtual {p2}, Lcom/amazonaws/HttpMethod;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p6, p2, p3, p5}, Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    invoke-virtual {p6, p1, p4}, Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;->sign(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;)V

    .line 4052
    invoke-interface {p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object p2

    const-string p3, "x-amz-security-token"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 4053
    invoke-interface {p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object p2

    const-string p3, "x-amz-security-token"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, "x-amz-security-token"

    .line 4054
    invoke-interface {p1, p3, p2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4055
    invoke-interface {p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string p2, "x-amz-security-token"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The PutObjectRequest parameter must be specified when uploading an object"

    .line 1561
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1564
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 1565
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1566
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v2

    .line 1567
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1574
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getGeneralProgressListener()Lcom/amazonaws/event/ProgressListener;

    move-result-object v4

    .line 1576
    invoke-static {v4}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->wrapListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    move-result-object v4

    if-nez v2, :cond_0

    .line 1579
    new-instance v2, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    :cond_0
    const-string v5, "The bucket name parameter must be specified when uploading an object"

    .line 1582
    invoke-static {v0, v5}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "The key parameter must be specified when uploading an object"

    .line 1584
    invoke-static {v1, v5}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1587
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->skipMd5CheckPerRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Z

    move-result v5

    .line 1591
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_4

    .line 1592
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v3

    .line 1594
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    .line 1596
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    move v6, v7

    goto :goto_0

    :cond_1
    move v6, v8

    .line 1599
    :goto_0
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    .line 1600
    invoke-static {}, Lcom/amazonaws/services/s3/util/Mimetypes;->getInstance()Lcom/amazonaws/services/s3/util/Mimetypes;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/amazonaws/services/s3/util/Mimetypes;->getMimetype(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    :cond_2
    if-eqz v6, :cond_3

    if-nez v5, :cond_3

    .line 1605
    :try_start_0
    invoke-static {v3}, Lcom/amazonaws/util/Md5Utils;->md5AsBase64(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    .line 1606
    invoke-virtual {v2, v6}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentMD5(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1608
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to calculate MD5 hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1609
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1614
    :cond_3
    :goto_1
    :try_start_1
    new-instance v6, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;

    invoke-direct {v6, v3}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v6

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1616
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Unable to find file to upload"

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1620
    :cond_4
    :goto_2
    sget-object v6, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v6

    .line 1623
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 1624
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/amazonaws/services/s3/AmazonS3Client;->addAclHeaders(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    goto :goto_3

    .line 1625
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v9

    if-eqz v9, :cond_6

    const-string v9, "x-amz-acl"

    .line 1626
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    :cond_6
    :goto_3
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getStorageClass()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    const-string v9, "x-amz-storage-class"

    .line 1630
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getStorageClass()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    const-string v9, "x-amz-website-redirect-location"

    .line 1634
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_8

    .line 1636
    invoke-direct {p0, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->setZeroContentLength(Lcom/amazonaws/Request;)V

    .line 1637
    new-instance v3, Ljava/io/ByteArrayInputStream;

    new-array v9, v8, [B

    invoke-direct {v3, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1642
    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateSSE_C(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    const-string v9, "Content-Length"

    .line 1645
    invoke-virtual {v2, v9}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getRawMetadataValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-nez v9, :cond_a

    .line 1654
    invoke-virtual {v3}, Ljava/io/InputStream;->markSupported()Z

    move-result v8

    if-nez v8, :cond_9

    .line 1655
    sget-object v8, Lcom/amazonaws/services/s3/AmazonS3Client;->log:Lorg/apache/commons/logging/Log;

    const-string v9, "No content length specified for stream data.  Stream contents will be buffered in memory and could result in out of memory errors."

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 1658
    invoke-direct {p0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->toByteArray(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;

    move-result-object v3

    const-string v8, "Content-Length"

    .line 1659
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    invoke-interface {v6, v7}, Lcom/amazonaws/Request;->setStreaming(Z)V

    goto :goto_4

    .line 1663
    :cond_9
    invoke-direct {p0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->calculateContentLength(Ljava/io/InputStream;)J

    move-result-wide v7

    const-string v9, "Content-Length"

    .line 1664
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v9, v7}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1667
    :cond_a
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-ltz v7, :cond_b

    .line 1676
    new-instance v7, Lcom/amazonaws/util/LengthCheckInputStream;

    invoke-direct {v7, v3, v10, v11, v8}, Lcom/amazonaws/util/LengthCheckInputStream;-><init>(Ljava/io/InputStream;JZ)V

    const-string v3, "Content-Length"

    .line 1681
    invoke-virtual {v9}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v3, v8}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v7

    :cond_b
    :goto_4
    if-eqz v4, :cond_c

    .line 1686
    new-instance v7, Lcom/amazonaws/event/ProgressReportingInputStream;

    invoke-direct {v7, v3, v4}, Lcom/amazonaws/event/ProgressReportingInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)V

    const/4 v3, 0x2

    .line 1687
    invoke-direct {p0, v4, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    move-object v3, v7

    :cond_c
    const/4 v7, 0x0

    .line 1691
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_d

    if-nez v5, :cond_d

    .line 1699
    new-instance v7, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;

    invoke-direct {v7, v3}, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v7

    .line 1702
    :cond_d
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_e

    const-string v8, "application/octet-stream"

    .line 1707
    invoke-virtual {v2, v8}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 1710
    :cond_e
    invoke-static {v6, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequestMetadata(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 1711
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getSSEAwsKeyManagementParams()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateSSE_KMS(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V

    .line 1713
    invoke-interface {v6, v3}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    const/16 p1, 0x8

    .line 1728
    :try_start_2
    new-instance v8, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;

    invoke-direct {v8}, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;-><init>()V

    invoke-direct {p0, v6, v8, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :try_end_2
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1734
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Lcom/amazonaws/AbortedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v1

    .line 1737
    sget-object v3, Lcom/amazonaws/services/s3/AmazonS3Client;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to cleanly close input stream: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1741
    :catch_3
    :goto_5
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v1

    if-eqz v7, :cond_f

    .line 1743
    invoke-virtual {v7}, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->getMd5Digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/BinaryUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v1

    :cond_f
    if-eqz v0, :cond_10

    if-eqz v1, :cond_10

    if-nez v5, :cond_10

    .line 1747
    invoke-static {v1}, Lcom/amazonaws/util/BinaryUtils;->fromBase64(Ljava/lang/String;)[B

    move-result-object v1

    .line 1748
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/BinaryUtils;->fromHex(Ljava/lang/String;)[B

    move-result-object v2

    .line 1750
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1751
    invoke-direct {p0, v4, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 1753
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Unable to verify integrity of data upload.  Client calculated content hash didn\'t match hash calculated by Amazon S3.  You may need to delete the data stored in Amazon S3."

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    const/4 p1, 0x4

    .line 1762
    invoke-direct {p0, v4, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 1764
    new-instance p1, Lcom/amazonaws/services/s3/model/PutObjectResult;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/PutObjectResult;-><init>()V

    .line 1765
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getVersionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setVersionId(Ljava/lang/String;)V

    .line 1766
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSEAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setSSEAlgorithm(Ljava/lang/String;)V

    .line 1767
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSECustomerAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setSSECustomerAlgorithm(Ljava/lang/String;)V

    .line 1768
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSECustomerKeyMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setSSECustomerKeyMd5(Ljava/lang/String;)V

    .line 1769
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getExpirationTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setExpirationTime(Ljava/util/Date;)V

    .line 1770
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getExpirationTimeRuleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setExpirationTimeRuleId(Ljava/lang/String;)V

    .line 1771
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setETag(Ljava/lang/String;)V

    .line 1772
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 1773
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->isRequesterCharged()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setRequesterCharged(Z)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_4
    move-exception v0

    .line 1730
    :try_start_4
    invoke-direct {p0, v4, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 1731
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1734
    :goto_6
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Lcom/amazonaws/AbortedException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    .line 1737
    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3Client;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to cleanly close input stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1738
    :catch_6
    :goto_7
    throw p1
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 1535
    new-instance v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    new-instance p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 1536
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    .line 1535
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 1549
    new-instance v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    const-string v0, "Bucket name must be provided"

    .line 5309
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Object key must be provided"

    .line 5310
    invoke-static {p2, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "String content must be provided"

    .line 5311
    invoke-static {p3, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5313
    sget-object v0, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    .line 5315
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 5316
    new-instance v1, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    const-string v2, "text/plain"

    .line 5317
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 5318
    array-length p3, p3

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    .line 5320
    new-instance p3, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-direct {p3, p1, p2, v0, v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public resolveRequestEndpoint(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5405
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->resolveRequestEndpoint(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public resolveRequestEndpoint(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/net/URI;",
            ")V"
        }
    .end annotation

    if-nez p4, :cond_0

    .line 5410
    iget-object p4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->endpoint:Ljava/net/URI;

    .line 5411
    :cond_0
    invoke-direct {p0, p4, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->shouldUseVirtualAddressing(Ljava/net/URI;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 5412
    invoke-direct {p0, p4, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->convertToVirtualHostEndpoint(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 5414
    invoke-direct {p0, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->getHostStyleResourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/amazonaws/services/s3/internal/S3HttpUtils;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 5413
    invoke-interface {p1, p2}, Lcom/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V

    goto :goto_0

    .line 5416
    :cond_1
    invoke-interface {p1, p4}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    if-eqz p2, :cond_2

    .line 5419
    invoke-direct {p0, p2, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->getPathStyleResourcePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/amazonaws/services/s3/internal/S3HttpUtils;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 5418
    invoke-interface {p1, p2}, Lcom/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public restoreObject(Lcom/amazonaws/services/s3/model/RestoreObjectRequest;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 3712
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 3713
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 3714
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->getVersionId()Ljava/lang/String;

    move-result-object v2

    .line 3715
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->getExpirationInDays()I

    move-result v3

    const-string v4, "The bucket name parameter must be specified when copying a glacier object"

    .line 3717
    invoke-static {v0, v4}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "The key parameter must be specified when copying a glacier object"

    .line 3719
    invoke-static {v1, v4}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 3722
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The expiration in days parameter must be specified when copying a glacier object"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3726
    :cond_0
    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v3

    const-string v4, "restore"

    const/4 v5, 0x0

    .line 3728
    invoke-interface {v3, v4, v5}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    const-string v4, "versionId"

    .line 3730
    invoke-interface {v3, v4, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3733
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->isRequesterPays()Z

    move-result v2

    invoke-static {v3, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequesterPaysHeader(Lcom/amazonaws/Request;Z)V

    .line 3735
    invoke-static {p1}, Lcom/amazonaws/services/s3/model/transform/RequestXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/RestoreObjectRequest;)[B

    move-result-object p1

    const-string v2, "Content-Length"

    .line 3736
    array-length v4, p1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v4, "application/xml"

    .line 3737
    invoke-interface {v3, v2, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3738
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v3, v2}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 3740
    :try_start_0
    invoke-static {p1}, Lcom/amazonaws/util/Md5Utils;->computeMD5Hash([B)[B

    move-result-object p1

    .line 3741
    invoke-static {p1}, Lcom/amazonaws/util/BinaryUtils;->toBase64([B)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Content-MD5"

    .line 3742
    invoke-interface {v3, v2, p1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3747
    iget-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v3, p1, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception p1

    .line 3744
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Couldn\'t compute md5 sum"

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public restoreObject(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 3760
    new-instance v0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->restoreObject(Lcom/amazonaws/services/s3/model/RestoreObjectRequest;)V

    return-void
.end method

.method public setBucketAccelerateConfiguration(Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    const-string v0, "setBucketAccelerateConfigurationRequest must be specified"

    .line 2997
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3000
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 3002
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;->getAccelerateConfiguration()Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified when setting accelerate configuration."

    .line 3004
    invoke-static {v0, v2}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "The bucket accelerate configuration parameter must be specified."

    .line 3006
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3008
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "The status parameter must be specified when updating bucket accelerate configuration."

    invoke-static {v2, v3}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3011
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "accelerate"

    .line 3014
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3016
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;)[B

    move-result-object v1

    const-string v2, "Content-Length"

    .line 3017
    array-length v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3018
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v2}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 3020
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setBucketAccelerateConfiguration(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2988
    new-instance v0, Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->setBucketAccelerateConfiguration(Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;)V

    return-void
.end method

.method public setBucketAcl(Lcom/amazonaws/services/s3/model/SetBucketAclRequest;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 1109
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketAclRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 1110
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketAclRequest;->getAcl()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v4

    .line 1111
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketAclRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v5

    const-string v0, "The bucket name parameter must be specified when setting a bucket\'s ACL"

    .line 1112
    invoke-static {v1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, p1

    .line 1116
    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->setAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;ZLcom/amazonaws/AmazonWebServiceRequest;)V

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, v5

    move v5, v6

    move-object v6, p1

    .line 1118
    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->setAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;ZLcom/amazonaws/AmazonWebServiceRequest;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const-string v0, "The ACL parameter must be specified when setting a bucket\'s ACL"

    .line 1120
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setBucketAcl(Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1082
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->setBucketAcl0(Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    return-void
.end method

.method public setBucketAcl(Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 0

    .line 1091
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->setBucketAcl0(Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    return-void
.end method

.method public setBucketAcl(Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1128
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->setBucketAcl0(Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    return-void
.end method

.method public setBucketAcl(Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 1138
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->setBucketAcl0(Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    return-void
.end method

.method public setBucketAnalyticsConfiguration(Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;)Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    const-string v0, "The request cannot be null"

    .line 5064
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5067
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketName"

    .line 5066
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5069
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;->getAnalyticsConfiguration()Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    move-result-object v1

    const-string v2, "Analytics Configuration"

    .line 5068
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    .line 5070
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Analytics Id"

    invoke-static {v2, v3}, Lcom/amazonaws/util/ValidationUtils;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5072
    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v4, 0x0

    .line 5073
    invoke-virtual {p0, v0, v4, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v3, "analytics"

    .line 5074
    invoke-interface {p1, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "id"

    .line 5075
    invoke-interface {p1, v3, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 5077
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;)[B

    move-result-object v1

    const-string v2, "Content-Length"

    .line 5078
    array-length v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/xml"

    .line 5079
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 5080
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v2}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 5082
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$SetBucketAnalyticsConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$SetBucketAnalyticsConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationResult;

    return-object p1
.end method

.method public setBucketAnalyticsConfiguration(Ljava/lang/String;Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;)Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 5055
    new-instance v0, Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->setBucketAnalyticsConfiguration(Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;)Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationResult;

    move-result-object p1

    return-object p1
.end method

.method public setBucketCrossOriginConfiguration(Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;)V
    .locals 5

    const-string v0, "The set bucket cross origin configuration request object must be specified."

    .line 2528
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2531
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 2533
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;->getCrossOriginConfiguration()Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified when setting bucket cross origin configuration."

    .line 2535
    invoke-static {v0, v2}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "The cross origin configuration parameter must be specified when setting bucket cross origin configuration."

    .line 2537
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2541
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "cors"

    .line 2543
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2545
    new-instance v2, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;-><init>()V

    .line 2546
    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;)[B

    move-result-object v1

    const-string v2, "Content-Length"

    .line 2547
    array-length v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v4, "application/xml"

    .line 2548
    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2549
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v2}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 2551
    :try_start_0
    invoke-static {v1}, Lcom/amazonaws/util/Md5Utils;->computeMD5Hash([B)[B

    move-result-object v1

    .line 2552
    invoke-static {v1}, Lcom/amazonaws/util/BinaryUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-MD5"

    .line 2553
    invoke-interface {p1, v2, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2558
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception p1

    .line 2555
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Couldn\'t compute md5 sum"

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setBucketCrossOriginConfiguration(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;)V
    .locals 1

    .line 2515
    new-instance v0, Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->setBucketCrossOriginConfiguration(Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;)V

    return-void
.end method

.method public setBucketInventoryConfiguration(Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationRequest;)Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    const-string v0, "The request cannot be null"

    .line 5161
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5163
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketName"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5164
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationRequest;->getInventoryConfiguration()Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    move-result-object v1

    const-string v2, "InventoryConfiguration"

    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 5166
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Inventory id"

    invoke-static {v2, v3}, Lcom/amazonaws/util/ValidationUtils;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5168
    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v3, "inventory"

    .line 5169
    invoke-interface {p1, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "id"

    .line 5170
    invoke-interface {p1, v3, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 5172
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;)[B

    move-result-object v1

    const-string v2, "Content-Length"

    .line 5173
    array-length v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/xml"

    .line 5174
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 5175
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v2}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 5177
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$SetBucketInventoryConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$SetBucketInventoryConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationResult;

    return-object p1
.end method

.method public setBucketInventoryConfiguration(Ljava/lang/String;Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;)Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 5153
    new-instance v0, Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->setBucketInventoryConfiguration(Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationRequest;)Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationResult;

    move-result-object p1

    return-object p1
.end method

.method public setBucketLifecycleConfiguration(Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;)V
    .locals 5

    const-string v0, "The set bucket lifecycle configuration request object must be specified."

    .line 2398
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2401
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 2403
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;->getLifecycleConfiguration()Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified when setting bucket lifecycle configuration."

    .line 2405
    invoke-static {v0, v2}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "The lifecycle configuration parameter must be specified when setting bucket lifecycle configuration."

    .line 2407
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2411
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "lifecycle"

    .line 2413
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2415
    new-instance v2, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;-><init>()V

    .line 2416
    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;)[B

    move-result-object v1

    const-string v2, "Content-Length"

    .line 2417
    array-length v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v4, "application/xml"

    .line 2418
    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2419
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v2}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 2421
    :try_start_0
    invoke-static {v1}, Lcom/amazonaws/util/Md5Utils;->computeMD5Hash([B)[B

    move-result-object v1

    .line 2422
    invoke-static {v1}, Lcom/amazonaws/util/BinaryUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-MD5"

    .line 2423
    invoke-interface {p1, v2, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2428
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception p1

    .line 2425
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Couldn\'t compute md5 sum"

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setBucketLifecycleConfiguration(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;)V
    .locals 1

    .line 2385
    new-instance v0, Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->setBucketLifecycleConfiguration(Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;)V

    return-void
.end method

.method public setBucketLoggingConfiguration(Lcom/amazonaws/services/s3/model/SetBucketLoggingConfigurationRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The set bucket logging configuration request object must be specified when enabling server access logging"

    .line 2933
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2937
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketLoggingConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 2939
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketLoggingConfigurationRequest;->getLoggingConfiguration()Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified when enabling server access logging"

    .line 2941
    invoke-static {v0, v2}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "The logging configuration parameter must be specified when enabling server access logging"

    .line 2943
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2946
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "logging"

    .line 2948
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2950
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;)[B

    move-result-object v1

    const-string v2, "Content-Length"

    .line 2951
    array-length v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2952
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v2}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 2954
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setBucketMetricsConfiguration(Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationRequest;)Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 4962
    new-instance v0, Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationRequest;-><init>()V

    const-string v0, "The request cannot be null"

    .line 4963
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4964
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketName"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4966
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationRequest;->getMetricsConfiguration()Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

    move-result-object v1

    const-string v2, "Metrics Configuration"

    .line 4965
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

    .line 4967
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Metrics Id"

    invoke-static {v2, v3}, Lcom/amazonaws/util/ValidationUtils;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4969
    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v4, 0x0

    .line 4970
    invoke-virtual {p0, v0, v4, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v3, "metrics"

    .line 4971
    invoke-interface {p1, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "id"

    .line 4972
    invoke-interface {p1, v3, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4974
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;)[B

    move-result-object v1

    const-string v2, "Content-Length"

    .line 4975
    array-length v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/xml"

    .line 4976
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4977
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v2}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 4979
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$SetBucketMetricsConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$SetBucketMetricsConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationResult;

    return-object p1
.end method

.method public setBucketMetricsConfiguration(Ljava/lang/String;Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;)Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 4954
    new-instance v0, Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->setBucketMetricsConfiguration(Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationRequest;)Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationResult;

    move-result-object p1

    return-object p1
.end method

.method public setBucketNotificationConfiguration(Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The set bucket notification configuration request object must be specified."

    .line 2836
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2839
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 2841
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->getNotificationConfiguration()Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified when setting bucket notification configuration."

    .line 2843
    invoke-static {v0, v2}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "The notification configuration parameter must be specified when setting bucket notification configuration."

    .line 2845
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2849
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "notification"

    .line 2851
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2853
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    .line 2854
    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;)[B

    move-result-object v1

    const-string v2, "Content-Length"

    .line 2855
    array-length v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2856
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v2}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 2858
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setBucketNotificationConfiguration(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 2821
    new-instance v0, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->setBucketNotificationConfiguration(Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;)V

    return-void
.end method

.method public setBucketPolicy(Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The request object must be specified when setting a bucket policy"

    .line 3116
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3119
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 3120
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->getPolicyText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The bucket name must be specified when setting a bucket policy"

    .line 3122
    invoke-static {v0, v2}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "The policy text must be specified when setting a bucket policy"

    .line 3124
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3127
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "policy"

    .line 3129
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3130
    invoke-static {v1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "Content-Length"

    .line 3131
    array-length v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3132
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v2}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 3134
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setBucketPolicy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The bucket name must be specified when setting a bucket policy"

    .line 3041
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "The policy text must be specified when setting a bucket policy"

    .line 3043
    invoke-static {p2, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3046
    new-instance v0, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    const-string v1, "policy"

    .line 3048
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3049
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->toByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const-string v1, "Content-Length"

    .line 3050
    array-length v3, p2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3051
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 3053
    iget-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v0, p2, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setBucketReplicationConfiguration(Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    const-string v0, "The set bucket replication configuration request object must be specified."

    .line 4808
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4812
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 4815
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;->getReplicationConfiguration()Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified when setting replication configuration."

    .line 4817
    invoke-static {v0, v2}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "The replication configuration parameter must be specified when setting replication configuration."

    .line 4820
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4824
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "replication"

    .line 4827
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4829
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    .line 4830
    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;)[B

    move-result-object v1

    const-string v2, "Content-Length"

    .line 4832
    array-length v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v4, "application/xml"

    .line 4833
    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4834
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v2}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    :try_start_0
    const-string v2, "Content-MD5"

    .line 4838
    invoke-static {v1}, Lcom/amazonaws/util/Md5Utils;->computeMD5Hash([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/BinaryUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v1

    .line 4837
    invoke-interface {p1, v2, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4845
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception p1

    .line 4840
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not able to compute MD5 of the replication rule configuration. Exception Message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4842
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setBucketReplicationConfiguration(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 4800
    new-instance v0, Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->setBucketReplicationConfiguration(Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;)V

    return-void
.end method

.method public setBucketTaggingConfiguration(Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;)V
    .locals 5

    const-string v0, "The set bucket tagging configuration request object must be specified."

    .line 2657
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2660
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 2662
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;->getTaggingConfiguration()Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified when setting bucket tagging configuration."

    .line 2664
    invoke-static {v0, v2}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "The tagging configuration parameter must be specified when setting bucket tagging configuration."

    .line 2666
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2669
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "tagging"

    .line 2671
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2673
    new-instance v2, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;-><init>()V

    .line 2674
    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;)[B

    move-result-object v1

    const-string v2, "Content-Length"

    .line 2675
    array-length v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v4, "application/xml"

    .line 2676
    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2677
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v2}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 2679
    :try_start_0
    invoke-static {v1}, Lcom/amazonaws/util/Md5Utils;->computeMD5Hash([B)[B

    move-result-object v1

    .line 2680
    invoke-static {v1}, Lcom/amazonaws/util/BinaryUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-MD5"

    .line 2681
    invoke-interface {p1, v2, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2686
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception p1

    .line 2683
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Couldn\'t compute md5 sum"

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setBucketTaggingConfiguration(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;)V
    .locals 1

    .line 2644
    new-instance v0, Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->setBucketTaggingConfiguration(Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;)V

    return-void
.end method

.method public setBucketVersioningConfiguration(Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The SetBucketVersioningConfigurationRequest object must be specified when setting versioning configuration"

    .line 2227
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2231
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 2233
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->getVersioningConfiguration()Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified when setting versioning configuration"

    .line 2235
    invoke-static {v0, v2}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "The bucket versioning parameter must be specified when setting versioning configuration"

    .line 2237
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2239
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->isMfaDeleteEnabled()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2241
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->getMfa()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    move-result-object v2

    const-string v3, "The MFA parameter must be specified when changing MFA Delete status in the versioning configuration"

    .line 2240
    invoke-static {v2, v3}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2245
    :cond_0
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v2

    const-string v4, "versioning"

    .line 2247
    invoke-interface {v2, v4, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2249
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->isMfaDeleteEnabled()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2250
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->getMfa()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2252
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->getMfa()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    move-result-object p1

    .line 2251
    invoke-direct {p0, v2, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequestWithMfaDetails(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V

    .line 2256
    :cond_1
    sget-object p1, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;)[B

    move-result-object p1

    const-string v1, "Content-Length"

    .line 2257
    array-length v4, p1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2258
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v2, v1}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 2260
    iget-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v2, p1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setBucketWebsiteConfiguration(Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 2747
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 2749
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;->getConfiguration()Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified when setting a bucket\'s website configuration"

    .line 2751
    invoke-static {v0, v2}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "The bucket website configuration parameter must be specified when setting a bucket\'s website configuration"

    .line 2753
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2756
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->getRedirectAllRequestsTo()Lcom/amazonaws/services/s3/model/RedirectRule;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2758
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->getIndexDocumentSuffix()Ljava/lang/String;

    move-result-object v2

    const-string v3, "The bucket website configuration parameter must specify the index document suffix when setting a bucket\'s website configuration"

    .line 2757
    invoke-static {v2, v3}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2762
    :cond_0
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "website"

    .line 2764
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v4, "application/xml"

    .line 2765
    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2767
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;)[B

    move-result-object v1

    const-string v2, "Content-Length"

    .line 2768
    array-length v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2769
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v2}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 2771
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setBucketWebsiteConfiguration(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 2733
    new-instance v0, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->setBucketWebsiteConfiguration(Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;)V

    return-void
.end method

.method public setEndpoint(Ljava/lang/String;)V
    .locals 1

    const-string v0, "s3-accelerate.amazonaws.com"

    .line 437
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "To enable accelerate mode, please use AmazonS3Client.setS3ClientOptions(S3ClientOptions.builder().setAccelerateModeEnabled(true).build());"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 441
    :cond_0
    invoke-super {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->setEndpoint(Ljava/lang/String;)V

    const-string v0, "s3.amazonaws.com"

    .line 446
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 447
    iget-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->endpoint:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string v0, "s3"

    invoke-static {p1, v0}, Lcom/amazonaws/util/AwsHostNameUtils;->parseRegionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientRegion:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public setObjectAcl(Lcom/amazonaws/services/s3/model/SetObjectAclRequest;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The request must not be null."

    .line 1016
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1018
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when setting an object\'s ACL"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1020
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The key parameter must be specified when setting an object\'s ACL"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1023
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->getAcl()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1024
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only one of the ACL and CannedACL parameters can be specified, not both."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1028
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->getAcl()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1029
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    .line 1030
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 1031
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->getVersionId()Ljava/lang/String;

    move-result-object v4

    .line 1032
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->getAcl()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v5

    .line 1033
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->isRequesterPays()Z

    move-result v6

    move-object v1, p0

    move-object v7, p1

    .line 1029
    invoke-direct/range {v1 .. v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->setAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;ZLcom/amazonaws/AmazonWebServiceRequest;)V

    goto :goto_0

    .line 1036
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1037
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    .line 1038
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 1039
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->getVersionId()Ljava/lang/String;

    move-result-object v4

    .line 1040
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v5

    .line 1041
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->isRequesterPays()Z

    move-result v6

    move-object v1, p0

    move-object v7, p1

    .line 1037
    invoke-direct/range {v1 .. v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->setAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;ZLcom/amazonaws/AmazonWebServiceRequest;)V

    :goto_0
    return-void

    .line 1045
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one of the ACL and CannedACL parameters should be specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setObjectAcl(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 967
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->setObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    return-void
.end method

.method public setObjectAcl(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 973
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->setObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V

    return-void
.end method

.method public setObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 979
    new-instance v0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->setObjectAcl(Lcom/amazonaws/services/s3/model/SetObjectAclRequest;)V

    return-void
.end method

.method public setObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 989
    new-instance v0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    .line 990
    invoke-virtual {v0, p5}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->withRequestMetricCollector(Lcom/amazonaws/metrics/RequestMetricCollector;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;

    .line 989
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->setObjectAcl(Lcom/amazonaws/services/s3/model/SetObjectAclRequest;)V

    return-void
.end method

.method public setObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 997
    new-instance v0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->setObjectAcl(Lcom/amazonaws/services/s3/model/SetObjectAclRequest;)V

    return-void
.end method

.method public setObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 1

    .line 1008
    new-instance v0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V

    .line 1009
    invoke-virtual {v0, p5}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->withRequestMetricCollector(Lcom/amazonaws/metrics/RequestMetricCollector;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;

    .line 1008
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->setObjectAcl(Lcom/amazonaws/services/s3/model/SetObjectAclRequest;)V

    return-void
.end method

.method public setObjectRedirectLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The bucketName parameter must be specified when changing an object\'s storage class"

    .line 1295
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "The key parameter must be specified when changing an object\'s storage class"

    .line 1297
    invoke-static {p2, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "The newStorageClass parameter must be specified when changing an object\'s storage class"

    .line 1299
    invoke-static {p3, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1302
    new-instance v0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-direct {v0, p1, p2, p1, p2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    invoke-virtual {v0, p3}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->withRedirectLocation(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    move-result-object p1

    .line 1302
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->copyObject(Lcom/amazonaws/services/s3/model/CopyObjectRequest;)Lcom/amazonaws/services/s3/model/CopyObjectResult;

    return-void
.end method

.method public setObjectTagging(Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;)Lcom/amazonaws/services/s3/model/SetObjectTaggingResult;
    .locals 7

    const-string v0, "The request parameter must be specified setting the object tags"

    .line 5263
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5265
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketName"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5267
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Key"

    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5268
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;->getTagging()Lcom/amazonaws/services/s3/model/ObjectTagging;

    move-result-object v2

    const-string v3, "ObjectTagging"

    invoke-static {v2, v3}, Lcom/amazonaws/util/ValidationUtils;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/s3/model/ObjectTagging;

    .line 5271
    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v3

    const-string v4, "tagging"

    const/4 v5, 0x0

    .line 5273
    invoke-interface {v3, v4, v5}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "versionId"

    .line 5274
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;->getVersionId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v4, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addParameterIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 5275
    new-instance p1, Lcom/amazonaws/services/s3/model/transform/ObjectTaggingXmlFactory;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/transform/ObjectTaggingXmlFactory;-><init>()V

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/s3/model/transform/ObjectTaggingXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/ObjectTagging;)[B

    move-result-object p1

    const-string v2, "application/xml"

    const/4 v4, 0x1

    .line 5276
    invoke-direct {p0, v3, p1, v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->setContent(Lcom/amazonaws/Request;[BLjava/lang/String;Z)V

    .line 5278
    new-instance p1, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    new-instance v2, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$SetObjectTaggingResponseUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$SetObjectTaggingResponseUnmarshaller;-><init>()V

    new-array v4, v4, [Lcom/amazonaws/services/s3/internal/HeaderHandler;

    new-instance v5, Lcom/amazonaws/services/s3/internal/SetObjectTaggingResponseHeaderHandler;

    invoke-direct {v5}, Lcom/amazonaws/services/s3/internal/SetObjectTaggingResponseHeaderHandler;-><init>()V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-direct {p1, v2, v4}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V

    .line 5282
    invoke-direct {p0, v3, p1, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/SetObjectTaggingResult;

    return-object p1
.end method

.method public setRegion(Lcom/amazonaws/regions/Region;)V
    .locals 0

    .line 454
    invoke-super {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->setRegion(Lcom/amazonaws/regions/Region;)V

    .line 461
    invoke-virtual {p1}, Lcom/amazonaws/regions/Region;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientRegion:Ljava/lang/String;

    return-void
.end method

.method public setS3ClientOptions(Lcom/amazonaws/services/s3/S3ClientOptions;)V
    .locals 1

    .line 474
    new-instance v0, Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>(Lcom/amazonaws/services/s3/S3ClientOptions;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientOptions:Lcom/amazonaws/services/s3/S3ClientOptions;

    return-void
.end method

.method public uploadPart(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The request parameter must be specified when uploading a part"

    .line 3555
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3558
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 3559
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 3560
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v2

    .line 3561
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartNumber()I

    move-result v3

    .line 3562
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v8

    const-string v4, "The bucket name parameter must be specified when uploading a part"

    .line 3564
    invoke-static {v0, v4}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "The key parameter must be specified when uploading a part"

    .line 3566
    invoke-static {v1, v4}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "The upload ID parameter must be specified when uploading a part"

    .line 3568
    invoke-static {v2, v4}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3570
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "The part number parameter must be specified when uploading a part"

    invoke-static {v4, v5}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3572
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "The part size parameter must be specified when uploading a part"

    invoke-static {v4, v5}, Lcom/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3575
    sget-object v4, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v11

    const-string v4, "uploadId"

    .line 3577
    invoke-interface {v11, v4, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "partNumber"

    .line 3578
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v2, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3580
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3582
    invoke-static {v11, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequestMetadata(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    :cond_0
    const-string v2, "Content-MD5"

    .line 3585
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getMd5Digest()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->addHeaderIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Length"

    .line 3586
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v2, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3592
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isRequesterPays()Z

    move-result v2

    invoke-static {v11, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequesterPaysHeader(Lcom/amazonaws/Request;Z)V

    .line 3594
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateSSE_C(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 3597
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3598
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    .line 3599
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 3601
    :try_start_0
    new-instance v2, Lcom/amazonaws/services/s3/internal/InputSubstream;

    new-instance v5, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;

    .line 3602
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;-><init>(Ljava/io/File;)V

    .line 3603
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFileOffset()J

    move-result-wide v6

    const/4 v10, 0x1

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/amazonaws/services/s3/internal/InputSubstream;-><init>(Ljava/io/InputStream;JJZ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    const/4 v4, 0x0

    .line 3613
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getMd5Digest()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 3614
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->skipMd5CheckPerRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3621
    new-instance v4, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;

    invoke-direct {v4, v2}, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v4

    .line 3629
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getGeneralProgressListener()Lcom/amazonaws/event/ProgressListener;

    move-result-object p1

    .line 3631
    invoke-static {p1}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->wrapListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3634
    new-instance v5, Lcom/amazonaws/event/ProgressReportingInputStream;

    invoke-direct {v5, v2, p1}, Lcom/amazonaws/event/ProgressReportingInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)V

    const/16 v2, 0x400

    .line 3636
    invoke-direct {p0, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    move-object v2, v5

    .line 3641
    :cond_3
    :try_start_1
    invoke-interface {v11, v2}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 3642
    new-instance v5, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;

    invoke-direct {v5}, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;-><init>()V

    invoke-direct {p0, v11, v5, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    .line 3646
    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->skipMd5CheckPerResponse(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3647
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->getMd5Digest()[B

    move-result-object v1

    .line 3648
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/BinaryUtils;->fromHex(Ljava/lang/String;)[B

    move-result-object v4

    .line 3650
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3651
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Unable to verify integrity of data upload.  Client calculated content hash didn\'t match hash calculated by Amazon S3.  You may need to delete the data stored in Amazon S3."

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/16 v1, 0x800

    .line 3660
    invoke-direct {p0, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 3663
    new-instance v1, Lcom/amazonaws/services/s3/model/UploadPartResult;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/UploadPartResult;-><init>()V

    .line 3664
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/s3/model/UploadPartResult;->setETag(Ljava/lang/String;)V

    .line 3665
    invoke-virtual {v1, v3}, Lcom/amazonaws/services/s3/model/UploadPartResult;->setPartNumber(I)V

    .line 3666
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSEAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/s3/model/UploadPartResult;->setSSEAlgorithm(Ljava/lang/String;)V

    .line 3667
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSECustomerAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/s3/model/UploadPartResult;->setSSECustomerAlgorithm(Ljava/lang/String;)V

    .line 3668
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSECustomerKeyMd5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/s3/model/UploadPartResult;->setSSECustomerKeyMd5(Ljava/lang/String;)V

    .line 3669
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->isRequesterCharged()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/UploadPartResult;->setRequesterCharged(Z)V
    :try_end_1
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    .line 3685
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_5
    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v0

    const/16 v1, 0x1000

    .line 3672
    :try_start_3
    invoke-direct {p0, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 3681
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz v2, :cond_6

    .line 3685
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 3687
    :catch_2
    :cond_6
    throw p1

    :catch_3
    move-exception p1

    .line 3605
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified file doesn\'t exist"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 3608
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A File or InputStream must be specified when uploading part"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
