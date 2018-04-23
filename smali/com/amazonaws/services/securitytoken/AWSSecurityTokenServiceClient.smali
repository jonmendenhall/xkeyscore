.class public Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;
.super Lcom/amazonaws/AmazonWebServiceClient;
.source "AWSSecurityTokenServiceClient.java"

# interfaces
.implements Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;


# instance fields
.field private awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

.field protected final exceptionUnmarshallers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/transform/Unmarshaller<",
            "Lcom/amazonaws/AmazonServiceException;",
            "Lorg/w3c/dom/Node;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    new-instance v1, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1

    .line 189
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 219
    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    invoke-direct {p0, v0, p2}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1

    .line 246
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 277
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p2}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .locals 0

    .line 325
    invoke-static {p2}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->adjustClientConfiguration(Lcom/amazonaws/ClientConfiguration;)Lcom/amazonaws/ClientConfiguration;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    .line 120
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    .line 327
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 329
    invoke-direct {p0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 300
    invoke-static {p2}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->adjustClientConfiguration(Lcom/amazonaws/ClientConfiguration;)Lcom/amazonaws/ClientConfiguration;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    .line 120
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    .line 302
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 304
    invoke-direct {p0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->init()V

    return-void
.end method

.method private static adjustClientConfiguration(Lcom/amazonaws/ClientConfiguration;)Lcom/amazonaws/ClientConfiguration;
    .locals 0

    return-object p0
.end method

.method private init()V
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/securitytoken/model/transform/ExpiredTokenExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/securitytoken/model/transform/ExpiredTokenExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/securitytoken/model/transform/IDPCommunicationErrorExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/securitytoken/model/transform/IDPCommunicationErrorExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/securitytoken/model/transform/IDPRejectedClaimExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/securitytoken/model/transform/IDPRejectedClaimExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/securitytoken/model/transform/InvalidIdentityTokenExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/securitytoken/model/transform/InvalidIdentityTokenExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/securitytoken/model/transform/MalformedPolicyDocumentExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/securitytoken/model/transform/MalformedPolicyDocumentExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/securitytoken/model/transform/PackedPolicyTooLargeExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/securitytoken/model/transform/PackedPolicyTooLargeExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/securitytoken/model/transform/RegionDisabledExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/securitytoken/model/transform/RegionDisabledExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/transform/StandardErrorUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/transform/StandardErrorUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "sts.amazonaws.com"

    .line 343
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->setEndpoint(Ljava/lang/String;)V

    const-string v0, "sts"

    .line 344
    iput-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->endpointPrefix:Ljava/lang/String;

    .line 346
    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 347
    iget-object v1, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->requestHandler2s:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/securitytoken/request.handlers"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->newRequestHandlerChain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 349
    iget-object v1, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->requestHandler2s:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/securitytoken/request.handler2s"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->newRequestHandler2Chain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    .locals 3
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
            "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
            ">;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")",
            "Lcom/amazonaws/Response<",
            "TX;>;"
        }
    .end annotation

    .line 1135
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->endpoint:Ljava/net/URI;

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 1136
    iget v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->timeOffset:I

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->setTimeOffset(I)V

    .line 1137
    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    .line 1139
    iget-object v1, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v1}, Lcom/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v1

    .line 1140
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1141
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v1

    .line 1144
    :cond_0
    invoke-virtual {p3, v1}, Lcom/amazonaws/http/ExecutionContext;->setCredentials(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 1146
    new-instance v0, Lcom/amazonaws/http/StaxResponseHandler;

    invoke-direct {v0, p2}, Lcom/amazonaws/http/StaxResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1147
    new-instance p2, Lcom/amazonaws/http/DefaultErrorResponseHandler;

    iget-object v1, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    invoke-direct {p2, v1}, Lcom/amazonaws/http/DefaultErrorResponseHandler;-><init>(Ljava/util/List;)V

    .line 1149
    iget-object v1, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/amazonaws/http/AmazonHttpClient;->execute(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public assumeRole(Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 495
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->createExecutionContext(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 496
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 497
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 501
    :try_start_0
    new-instance v3, Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleRequestMarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleRequestMarshaller;-><init>()V

    invoke-virtual {v3, p1}, Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleRequestMarshaller;->marshall(Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 503
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazonaws/util/AWSRequestMetrics;)V

    .line 504
    new-instance v3, Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 505
    :try_start_2
    invoke-virtual {v0}, Lcom/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 507
    invoke-virtual {p0, v1, p1, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    return-object v2

    :catchall_0
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v0, p1

    move-object p1, v2

    :goto_0
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    throw v0
.end method

.method public assumeRoleWithWebIdentity(Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 674
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->createExecutionContext(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 675
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 676
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 680
    :try_start_0
    new-instance v3, Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleWithWebIdentityRequestMarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleWithWebIdentityRequestMarshaller;-><init>()V

    .line 681
    invoke-virtual {v3, p1}, Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleWithWebIdentityRequestMarshaller;->marshall(Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 683
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazonaws/util/AWSRequestMetrics;)V

    .line 684
    new-instance v3, Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleWithWebIdentityResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleWithWebIdentityResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 686
    :try_start_2
    invoke-virtual {v0}, Lcom/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 688
    invoke-virtual {p0, v1, p1, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    return-object v2

    :catchall_0
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v0, p1

    move-object p1, v2

    :goto_0
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    throw v0
.end method

.method public getCachedResponseMetadata(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1129
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/http/AmazonHttpClient;->getResponseMetadataForRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getCallerIdentity()Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1104
    new-instance v0, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityRequest;-><init>()V

    .line 1105
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->getCallerIdentity(Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityRequest;)Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;

    move-result-object v0

    return-object v0
.end method

.method public getCallerIdentity(Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityRequest;)Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 712
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->createExecutionContext(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 713
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 714
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 718
    :try_start_0
    new-instance v3, Lcom/amazonaws/services/securitytoken/model/transform/GetCallerIdentityRequestMarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/securitytoken/model/transform/GetCallerIdentityRequestMarshaller;-><init>()V

    invoke-virtual {v3, p1}, Lcom/amazonaws/services/securitytoken/model/transform/GetCallerIdentityRequestMarshaller;->marshall(Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 720
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazonaws/util/AWSRequestMetrics;)V

    .line 721
    new-instance v3, Lcom/amazonaws/services/securitytoken/model/transform/GetCallerIdentityResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/securitytoken/model/transform/GetCallerIdentityResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 723
    :try_start_2
    invoke-virtual {v0}, Lcom/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 725
    invoke-virtual {p0, v1, p1, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    return-object v2

    :catchall_0
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v0, p1

    move-object p1, v2

    :goto_0
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    throw v0
.end method

.method public getFederationToken(Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;)Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 871
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->createExecutionContext(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 872
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 873
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 877
    :try_start_0
    new-instance v3, Lcom/amazonaws/services/securitytoken/model/transform/GetFederationTokenRequestMarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/securitytoken/model/transform/GetFederationTokenRequestMarshaller;-><init>()V

    invoke-virtual {v3, p1}, Lcom/amazonaws/services/securitytoken/model/transform/GetFederationTokenRequestMarshaller;->marshall(Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 879
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazonaws/util/AWSRequestMetrics;)V

    .line 880
    new-instance v3, Lcom/amazonaws/services/securitytoken/model/transform/GetFederationTokenResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/securitytoken/model/transform/GetFederationTokenResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 882
    :try_start_2
    invoke-virtual {v0}, Lcom/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 884
    invoke-virtual {p0, v1, p1, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    return-object v2

    :catchall_0
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v0, p1

    move-object p1, v2

    :goto_0
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    throw v0
.end method

.method public getSessionToken()Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1082
    new-instance v0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;-><init>()V

    .line 1083
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->getSessionToken(Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;)Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken(Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;)Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 977
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->createExecutionContext(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 978
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 979
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 983
    :try_start_0
    new-instance v3, Lcom/amazonaws/services/securitytoken/model/transform/GetSessionTokenRequestMarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/securitytoken/model/transform/GetSessionTokenRequestMarshaller;-><init>()V

    invoke-virtual {v3, p1}, Lcom/amazonaws/services/securitytoken/model/transform/GetSessionTokenRequestMarshaller;->marshall(Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 985
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazonaws/util/AWSRequestMetrics;)V

    .line 986
    new-instance v3, Lcom/amazonaws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 988
    :try_start_2
    invoke-virtual {v0}, Lcom/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 990
    invoke-virtual {p0, v1, p1, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    return-object v2

    :catchall_0
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v0, p1

    move-object p1, v2

    :goto_0
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    throw v0
.end method
