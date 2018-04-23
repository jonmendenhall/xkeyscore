.class public Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;
.super Lcom/amazonaws/AmazonWebServiceClient;
.source "AmazonDynamoDBClient.java"

# interfaces
.implements Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDB;


# instance fields
.field private awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

.field protected jsonErrorUnmarshallers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/transform/JsonErrorUnmarshaller;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    new-instance v1, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 281
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1

    .line 306
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 335
    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    invoke-direct {p0, v0, p2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1

    .line 361
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 392
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p2}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .locals 0

    .line 440
    invoke-static {p2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->adjustClientConfiguration(Lcom/amazonaws/ClientConfiguration;)Lcom/amazonaws/ClientConfiguration;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    .line 442
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 444
    invoke-direct {p0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 415
    invoke-static {p2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->adjustClientConfiguration(Lcom/amazonaws/ClientConfiguration;)Lcom/amazonaws/ClientConfiguration;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    .line 417
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 419
    invoke-direct {p0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->init()V

    return-void
.end method

.method private static adjustClientConfiguration(Lcom/amazonaws/ClientConfiguration;)Lcom/amazonaws/ClientConfiguration;
    .locals 2

    .line 472
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0, p0}, Lcom/amazonaws/ClientConfiguration;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    .line 473
    invoke-virtual {v0}, Lcom/amazonaws/ClientConfiguration;->getRetryPolicy()Lcom/amazonaws/retry/RetryPolicy;

    move-result-object p0

    sget-object v1, Lcom/amazonaws/retry/PredefinedRetryPolicies;->DEFAULT:Lcom/amazonaws/retry/RetryPolicy;

    if-ne p0, v1, :cond_0

    .line 474
    sget-object p0, Lcom/amazonaws/retry/PredefinedRetryPolicies;->DYNAMODB_DEFAULT:Lcom/amazonaws/retry/RetryPolicy;

    invoke-virtual {v0, p0}, Lcom/amazonaws/ClientConfiguration;->setRetryPolicy(Lcom/amazonaws/retry/RetryPolicy;)V

    :cond_0
    return-object v0
.end method

.method private init()V
    .locals 3

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->jsonErrorUnmarshallers:Ljava/util/List;

    .line 449
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/model/transform/ConditionalCheckFailedExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodbv2/model/transform/ConditionalCheckFailedExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/model/transform/InternalServerErrorExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodbv2/model/transform/InternalServerErrorExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/model/transform/ItemCollectionSizeLimitExceededExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodbv2/model/transform/ItemCollectionSizeLimitExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/model/transform/LimitExceededExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodbv2/model/transform/LimitExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/model/transform/ProvisionedThroughputExceededExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodbv2/model/transform/ProvisionedThroughputExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/model/transform/ResourceInUseExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodbv2/model/transform/ResourceInUseExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/model/transform/ResourceNotFoundExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodbv2/model/transform/ResourceNotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/transform/JsonErrorUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/transform/JsonErrorUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "dynamodb.us-east-1.amazonaws.com"

    .line 459
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->setEndpoint(Ljava/lang/String;)V

    const-string v0, "dynamodb"

    .line 460
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->endpointPrefix:Ljava/lang/String;

    .line 462
    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 463
    iget-object v1, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->requestHandler2s:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/dynamodbv2/request.handlers"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->newRequestHandlerChain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 465
    iget-object v1, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->requestHandler2s:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/dynamodbv2/request.handler2s"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->newRequestHandler2Chain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
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
            "Lcom/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazonaws/AmazonWebServiceResponse<",
            "TX;>;>;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")",
            "Lcom/amazonaws/Response<",
            "TX;>;"
        }
    .end annotation

    .line 4162
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->endpoint:Ljava/net/URI;

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 4163
    iget v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->timeOffset:I

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->setTimeOffset(I)V

    .line 4165
    invoke-virtual {p3}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v0

    .line 4167
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V

    .line 4169
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v1}, Lcom/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4171
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    .line 4174
    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4175
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4176
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v1

    .line 4179
    :cond_0
    invoke-virtual {p3, v1}, Lcom/amazonaws/http/ExecutionContext;->setCredentials(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 4180
    new-instance v0, Lcom/amazonaws/http/JsonErrorResponseHandler;

    iget-object v1, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->jsonErrorUnmarshallers:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/amazonaws/http/JsonErrorResponseHandler;-><init>(Ljava/util/List;)V

    .line 4182
    iget-object v1, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v1, p1, p2, v0, p3}, Lcom/amazonaws/http/AmazonHttpClient;->execute(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 4171
    sget-object p2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, p2}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    throw p1
.end method


# virtual methods
.method public batchGetItem(Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;)Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 577
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->createExecutionContext(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 578
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 579
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 583
    :try_start_0
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 585
    :try_start_1
    new-instance v4, Lcom/amazonaws/services/dynamodbv2/model/transform/BatchGetItemRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodbv2/model/transform/BatchGetItemRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/BatchGetItemRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 587
    :try_start_2
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 589
    :try_start_3
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    .line 591
    new-instance v4, Lcom/amazonaws/services/dynamodbv2/model/transform/BatchGetItemResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodbv2/model/transform/BatchGetItemResultJsonUnmarshaller;-><init>()V

    .line 592
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 595
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 597
    :try_start_4
    invoke-virtual {v0}, Lcom/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 599
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_0
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object p1, v3

    .line 589
    :goto_0
    :try_start_5
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 599
    :goto_1
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    throw v0
.end method

.method public batchGetItem(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 3939
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;-><init>()V

    .line 3940
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->setRequestItems(Ljava/util/Map;)V

    .line 3941
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->batchGetItem(Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;)Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemResult;

    move-result-object p1

    return-object p1
.end method

.method public batchGetItem(Ljava/util/Map;Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 3678
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;-><init>()V

    .line 3679
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->setRequestItems(Ljava/util/Map;)V

    .line 3680
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->setReturnConsumedCapacity(Ljava/lang/String;)V

    .line 3681
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->batchGetItem(Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;)Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemResult;

    move-result-object p1

    return-object p1
.end method

.method public batchWriteItem(Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;)Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 737
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->createExecutionContext(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 738
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 739
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 743
    :try_start_0
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 745
    :try_start_1
    new-instance v4, Lcom/amazonaws/services/dynamodbv2/model/transform/BatchWriteItemRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodbv2/model/transform/BatchWriteItemRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/BatchWriteItemRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 747
    :try_start_2
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 749
    :try_start_3
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    .line 751
    new-instance v4, Lcom/amazonaws/services/dynamodbv2/model/transform/BatchWriteItemResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodbv2/model/transform/BatchWriteItemResultJsonUnmarshaller;-><init>()V

    .line 752
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 755
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 757
    :try_start_4
    invoke-virtual {v0}, Lcom/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 759
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_0
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object p1, v3

    .line 749
    :goto_0
    :try_start_5
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 759
    :goto_1
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    throw v0
.end method

.method public batchWriteItem(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;",
            ">;>;)",
            "Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 4130
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;-><init>()V

    .line 4131
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->setRequestItems(Ljava/util/Map;)V

    .line 4132
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->batchWriteItem(Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;)Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemResult;

    move-result-object p1

    return-object p1
.end method

.method public createTable(Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;)Lcom/amazonaws/services/dynamodbv2/model/CreateTableResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 807
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->createExecutionContext(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 808
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 809
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 813
    :try_start_0
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 815
    :try_start_1
    new-instance v4, Lcom/amazonaws/services/dynamodbv2/model/transform/CreateTableRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodbv2/model/transform/CreateTableRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/CreateTableRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 817
    :try_start_2
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 819
    :try_start_3
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    .line 821
    new-instance v4, Lcom/amazonaws/services/dynamodbv2/model/transform/CreateTableResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodbv2/model/transform/CreateTableResultJsonUnmarshaller;-><init>()V

    .line 822
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 825
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 827
    :try_start_4
    invoke-virtual {v0}, Lcom/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/dynamodbv2/model/CreateTableResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 829
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_0
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object p1, v3

    .line 819
    :goto_0
    :try_start_5
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 829
    :goto_1
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    throw v0
.end method

.method public createTable(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;)Lcom/amazonaws/services/dynamodbv2/model/CreateTableResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeDefinition;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;",
            ">;",
            "Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;",
            ")",
            "Lcom/amazonaws/services/dynamodbv2/model/CreateTableResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 3121
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;-><init>()V

    .line 3122
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->setAttributeDefinitions(Ljava/util/Collection;)V

    .line 3123
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->setTableName(Ljava/lang/String;)V

    .line 3124
    invoke-virtual {v0, p3}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->setKeySchema(Ljava/util/Collection;)V

    .line 3125
    invoke-virtual {v0, p4}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->setProvisionedThroughput(Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;)V

    .line 3126
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->createTable(Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;)Lcom/amazonaws/services/dynamodbv2/model/CreateTableResult;

    move-result-object p1

    return-object p1
.end method

.method public deleteItem(Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;)Lcom/amazonaws/services/dynamodbv2/model/DeleteItemResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 874
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->createExecutionContext(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 875
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 876
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 880
    :try_start_0
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 882
    :try_start_1
    new-instance v4, Lcom/amazonaws/services/dynamodbv2/model/transform/DeleteItemRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodbv2/model/transform/DeleteItemRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/DeleteItemRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 884
    :try_start_2
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 886
    :try_start_3
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    .line 888
    new-instance v4, Lcom/amazonaws/services/dynamodbv2/model/transform/DeleteItemResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodbv2/model/transform/DeleteItemResultJsonUnmarshaller;-><init>()V

    .line 889
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 892
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 894
    :try_start_4
    invoke-virtual {v0}, Lcom/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 896
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_0
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object p1, v3

    .line 886
    :goto_0
    :try_start_5
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 896
    :goto_1
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    throw v0
.end method

.method public deleteItem(Ljava/lang/String;Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/DeleteItemResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/DeleteItemResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2853
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;-><init>()V

    .line 2854
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->setTableName(Ljava/lang/String;)V

    .line 2855
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->setKey(Ljava/util/Map;)V

    .line 2856
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->deleteItem(Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;)Lcom/amazonaws/services/dynamodbv2/model/DeleteItemResult;

    move-result-object p1

    return-object p1
.end method

.method public deleteItem(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/DeleteItemResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazonaws/services/dynamodbv2/model/DeleteItemResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2940
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;-><init>()V

    .line 2941
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->setTableName(Ljava/lang/String;)V

    .line 2942
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->setKey(Ljava/util/Map;)V

    .line 2943
    invoke-virtual {v0, p3}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->setReturnValues(Ljava/lang/String;)V

    .line 2944
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->deleteItem(Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;)Lcom/amazonaws/services/dynamodbv2/model/DeleteItemResult;

    move-result-object p1

    return-object p1
.end method

.method public deleteTable(Lcom/amazonaws/services/dynamodbv2/model/DeleteTableRequest;)Lcom/amazonaws/services/dynamodbv2/model/DeleteTableResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 950
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->createExecutionContext(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 951
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 952
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 956
    :try_start_0
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 958
    :try_start_1
    new-instance v4, Lcom/amazonaws/services/dynamodbv2/model/transform/DeleteTableRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodbv2/model/transform/DeleteTableRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/DeleteTableRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/DeleteTableRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 960
    :try_start_2
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 962
    :try_start_3
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    .line 964
    new-instance v4, Lcom/amazonaws/services/dynamodbv2/model/transform/DeleteTableResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodbv2/model/transform/DeleteTableResultJsonUnmarshaller;-><init>()V

    .line 965
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 968
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 970
    :try_start_4
    invoke-virtual {v0}, Lcom/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/dynamodbv2/model/DeleteTableResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 972
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_0
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object p1, v3

    .line 962
    :goto_0
    :try_start_5
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 972
    :goto_1
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    throw v0
.end method

.method public deleteTable(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/DeleteTableResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2997
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/DeleteTableRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteTableRequest;-><init>()V

    .line 2998
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteTableRequest;->setTableName(Ljava/lang/String;)V

    .line 2999
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->deleteTable(Lcom/amazonaws/services/dynamodbv2/model/DeleteTableRequest;)Lcom/amazonaws/services/dynamodbv2/model/DeleteTableResult;

    move-result-object p1

    return-object p1
.end method

.method public describeLimits(Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsRequest;)Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1097
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->createExecutionContext(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1098
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1099
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1103
    :try_start_0
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1105
    :try_start_1
    new-instance v4, Lcom/amazonaws/services/dynamodbv2/model/transform/DescribeLimitsRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodbv2/model/transform/DescribeLimitsRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/DescribeLimitsRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1107
    :try_start_2
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1109
    :try_start_3
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    .line 1111
    new-instance v4, Lcom/amazonaws/services/dynamodbv2/model/transform/DescribeLimitsResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodbv2/model/transform/DescribeLimitsResultJsonUnmarshaller;-><init>()V

    .line 1112
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1115
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1117
    :try_start_4
    invoke-virtual {v0}, Lcom/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1119
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_0
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object p1, v3

    .line 1109
    :goto_0
    :try_start_5
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 1119
    :goto_1
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    throw v0
.end method

.method public describeTable(Lcom/amazonaws/services/dynamodbv2/model/DescribeTableRequest;)Lcom/amazonaws/services/dynamodbv2/model/DescribeTableResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1157
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->createExecutionContext(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1158
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1159
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1163
    :try_start_0
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1165
    :try_start_1
    new-instance v4, Lcom/amazonaws/services/dynamodbv2/model/transform/DescribeTableRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodbv2/model/transform/DescribeTableRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/DescribeTableRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/DescribeTableRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1167
    :try_start_2
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1169
    :try_start_3
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    .line 1171
    new-instance v4, Lcom/amazonaws/services/dynamodbv2/model/transform/DescribeTableResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodbv2/model/transform/DescribeTableResultJsonUnmarshaller;-><init>()V

    .line 1172
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1175
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1177
    :try_start_4
    invoke-virtual {v0}, Lcom/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/dynamodbv2/model/DescribeTableResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1179
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_0
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object p1, v3

    .line 1169
    :goto_0
    :try_start_5
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 1179
    :goto_1
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    throw v0
.end method

.method public describeTable(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/DescribeTableResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2411
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/DescribeTableRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/DescribeTableRequest;-><init>()V

    .line 2412
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/dynamodbv2/model/DescribeTableRequest;->setTableName(Ljava/lang/String;)V

    .line 2413
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->describeTable(Lcom/amazonaws/services/dynamodbv2/model/DescribeTableRequest;)Lcom/amazonaws/services/dynamodbv2/model/DescribeTableResult;

    move-result-object p1

    return-object p1
.end method

.method public getCachedResponseMetadata(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4156
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/http/AmazonHttpClient;->getResponseMetadataForRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getItem(Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;)Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1215
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->createExecutionContext(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1216
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1217
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1221
    :try_start_0
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1223
    :try_start_1
    new-instance v4, Lcom/amazonaws/services/dynamodbv2/model/transform/GetItemRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodbv2/model/transform/GetItemRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/GetItemRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1225
    :try_start_2
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1227
    :try_start_3
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    .line 1229
    new-instance v4, Lcom/amazonaws/services/dynamodbv2/model/transform/GetItemResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodbv2/model/transform/GetItemResultJsonUnmarshaller;-><init>()V

    .line 1230
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1233
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1235
    :try_start_4
    invoke-virtual {v0}, Lcom/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1237
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_0
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object p1, v3

    .line 1227
    :goto_0
    :try_start_5
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 1237
    :goto_1
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    throw v0
.end method

.method public getItem(Ljava/lang/String;Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 3172
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;-><init>()V

    .line 3173
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->setTableName(Ljava/lang/String;)V

    .line 3174
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->setKey(Ljava/util/Map;)V

    .line 3175
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->getItem(Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;)Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;

    move-result-object p1

    return-object p1
.end method

.method public getItem(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Boolean;)Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 3228
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;-><init>()V

    .line 3229
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->setTableName(Ljava/lang/String;)V

    .line 3230
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->setKey(Ljava/util/Map;)V

    .line 3231
    invoke-virtual {v0, p3}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->setConsistentRead(Ljava/lang/Boolean;)V

    .line 3232
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->getItem(Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;)Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;

    move-result-object p1

    return-object p1
.end method

.method public listTables()Lcom/amazonaws/services/dynamodbv2/model/ListTablesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 3255
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/ListTablesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/ListTablesRequest;-><init>()V

    .line 3256
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->listTables(Lcom/amazonaws/services/dynamodbv2/model/ListTablesRequest;)Lcom/amazonaws/services/dynamodbv2/model/ListTablesResult;

    move-result-object v0

    return-object v0
.end method

.method public listTables(Lcom/amazonaws/services/dynamodbv2/model/ListTablesRequest;)Lcom/amazonaws/services/dynamodbv2/model/ListTablesResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1264
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->createExecutionContext(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1265
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1266
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1270
    :try_start_0
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1272
    :try_start_1
    new-instance v4, Lcom/amazonaws/services/dynamodbv2/model/transform/ListTablesRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodbv2/model/transform/ListTablesRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/ListTablesRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/ListTablesRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1274
    :try_start_2
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1276
    :try_start_3
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    .line 1278
    new-instance v4, Lcom/amazonaws/services/dynamodbv2/model/transform/ListTablesResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodbv2/model/transform/ListTablesResultJsonUnmarshaller;-><init>()V

    .line 1279
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1282
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1284
    :try_start_4
    invoke-virtual {v0}, Lcom/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/dynamodbv2/model/ListTablesResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1286
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_0
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object p1, v3

    .line 1276
    :goto_0
    :try_start_5
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 1286
    :goto_1
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    throw v0
.end method

.method public listTables(Ljava/lang/Integer;)Lcom/amazonaws/services/dynamodbv2/model/ListTablesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 3350
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/ListTablesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/ListTablesRequest;-><init>()V

    .line 3351
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/dynamodbv2/model/ListTablesRequest;->setLimit(Ljava/lang/Integer;)V

    .line 3352
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->listTables(Lcom/amazonaws/services/dynamodbv2/model/ListTablesRequest;)Lcom/amazonaws/services/dynamodbv2/model/ListTablesResult;

    move-result-object p1

    return-object p1
.end method

.method public listTables(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/ListTablesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 3285
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/ListTablesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/ListTablesRequest;-><init>()V

    .line 3286
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/dynamodbv2/model/ListTablesRequest;->setExclusiveStartTableName(Ljava/lang/String;)V

    .line 3287
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->listTables(Lcom/amazonaws/services/dynamodbv2/model/ListTablesRequest;)Lcom/amazonaws/services/dynamodbv2/model/ListTablesResult;

    move-result-object p1

    return-object p1
.end method

.method public listTables(Ljava/lang/String;Ljava/lang/Integer;)Lcom/amazonaws/services/dynamodbv2/model/ListTablesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 3320
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/ListTablesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/ListTablesRequest;-><init>()V

    .line 3321
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/dynamodbv2/model/ListTablesRequest;->setExclusiveStartTableName(Ljava/lang/String;)V

    .line 3322
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/dynamodbv2/model/ListTablesRequest;->setLimit(Ljava/lang/Integer;)V

    .line 3323
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->listTables(Lcom/amazonaws/services/dynamodbv2/model/ListTablesRequest;)Lcom/amazonaws/services/dynamodbv2/model/ListTablesResult;

    move-result-object p1

    return-object p1
.end method

.method public putItem(Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;)Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1352
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->createExecutionContext(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1353
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1354
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1358
    :try_start_0
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1360
    :try_start_1
    new-instance v4, Lcom/amazonaws/services/dynamodbv2/model/transform/PutItemRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodbv2/model/transform/PutItemRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/PutItemRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1362
    :try_start_2
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1364
    :try_start_3
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    .line 1366
    new-instance v4, Lcom/amazonaws/services/dynamodbv2/model/transform/PutItemResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodbv2/model/transform/PutItemResultJsonUnmarshaller;-><init>()V

    .line 1367
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1370
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1372
    :try_start_4
    invoke-virtual {v0}, Lcom/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1374
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_0
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object p1, v3

    .line 1364
    :goto_0
    :try_start_5
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 1374
    :goto_1
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    throw v0
.end method

.method public putItem(Ljava/lang/String;Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1765
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;-><init>()V

    .line 1766
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->setTableName(Ljava/lang/String;)V

    .line 1767
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->setItem(Ljava/util/Map;)V

    .line 1768
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->putItem(Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;)Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;

    move-result-object p1

    return-object p1
.end method

.method public putItem(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1892
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;-><init>()V

    .line 1893
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->setTableName(Ljava/lang/String;)V

    .line 1894
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->setItem(Ljava/util/Map;)V

    .line 1895
    invoke-virtual {v0, p3}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->setReturnValues(Ljava/lang/String;)V

    .line 1896
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->putItem(Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;)Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;

    move-result-object p1

    return-object p1
.end method

.method public query(Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;)Lcom/amazonaws/services/dynamodbv2/model/QueryResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1433
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->createExecutionContext(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1434
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1435
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1439
    :try_start_0
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1441
    :try_start_1
    new-instance v4, Lcom/amazonaws/services/dynamodbv2/model/transform/QueryRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodbv2/model/transform/QueryRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/QueryRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1443
    :try_start_2
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1445
    :try_start_3
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    .line 1447
    new-instance v4, Lcom/amazonaws/services/dynamodbv2/model/transform/QueryResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodbv2/model/transform/QueryResultJsonUnmarshaller;-><init>()V

    .line 1448
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1451
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1453
    :try_start_4
    invoke-virtual {v0}, Lcom/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1455
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_0
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object p1, v3

    .line 1445
    :goto_0
    :try_start_5
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 1455
    :goto_1
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    throw v0
.end method

.method public scan(Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;)Lcom/amazonaws/services/dynamodbv2/model/ScanResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1506
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->createExecutionContext(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1507
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1508
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1512
    :try_start_0
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1514
    :try_start_1
    new-instance v4, Lcom/amazonaws/services/dynamodbv2/model/transform/ScanRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodbv2/model/transform/ScanRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/ScanRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1516
    :try_start_2
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1518
    :try_start_3
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    .line 1520
    new-instance v4, Lcom/amazonaws/services/dynamodbv2/model/transform/ScanResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodbv2/model/transform/ScanResultJsonUnmarshaller;-><init>()V

    .line 1521
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1524
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1526
    :try_start_4
    invoke-virtual {v0}, Lcom/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/dynamodbv2/model/ScanResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1528
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_0
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object p1, v3

    .line 1518
    :goto_0
    :try_start_5
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 1528
    :goto_1
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    throw v0
.end method

.method public scan(Ljava/lang/String;Ljava/util/List;)Lcom/amazonaws/services/dynamodbv2/model/ScanResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/ScanResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2491
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;-><init>()V

    .line 2492
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->setTableName(Ljava/lang/String;)V

    .line 2493
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->setAttributesToGet(Ljava/util/Collection;)V

    .line 2494
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->scan(Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;)Lcom/amazonaws/services/dynamodbv2/model/ScanResult;

    move-result-object p1

    return-object p1
.end method

.method public scan(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/ScanResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/Condition;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/ScanResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2794
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;-><init>()V

    .line 2795
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->setTableName(Ljava/lang/String;)V

    .line 2796
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->setAttributesToGet(Ljava/util/Collection;)V

    .line 2797
    invoke-virtual {v0, p3}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->setScanFilter(Ljava/util/Map;)V

    .line 2798
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->scan(Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;)Lcom/amazonaws/services/dynamodbv2/model/ScanResult;

    move-result-object p1

    return-object p1
.end method

.method public scan(Ljava/lang/String;Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/ScanResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/Condition;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/ScanResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2629
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;-><init>()V

    .line 2630
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->setTableName(Ljava/lang/String;)V

    .line 2631
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->setScanFilter(Ljava/util/Map;)V

    .line 2632
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->scan(Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;)Lcom/amazonaws/services/dynamodbv2/model/ScanResult;

    move-result-object p1

    return-object p1
.end method

.method public updateItem(Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;)Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1565
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->createExecutionContext(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1566
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1567
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1571
    :try_start_0
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1573
    :try_start_1
    new-instance v4, Lcom/amazonaws/services/dynamodbv2/model/transform/UpdateItemRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodbv2/model/transform/UpdateItemRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/UpdateItemRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1575
    :try_start_2
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1577
    :try_start_3
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    .line 1579
    new-instance v4, Lcom/amazonaws/services/dynamodbv2/model/transform/UpdateItemResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodbv2/model/transform/UpdateItemResultJsonUnmarshaller;-><init>()V

    .line 1580
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1583
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1585
    :try_start_4
    invoke-virtual {v0}, Lcom/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1587
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_0
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object p1, v3

    .line 1577
    :goto_0
    :try_start_5
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 1587
    :goto_1
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    throw v0
.end method

.method public updateItem(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2106
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;-><init>()V

    .line 2107
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->setTableName(Ljava/lang/String;)V

    .line 2108
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->setKey(Ljava/util/Map;)V

    .line 2109
    invoke-virtual {v0, p3}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->setAttributeUpdates(Ljava/util/Map;)V

    .line 2110
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->updateItem(Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;)Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;

    move-result-object p1

    return-object p1
.end method

.method public updateItem(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2369
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;-><init>()V

    .line 2370
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->setTableName(Ljava/lang/String;)V

    .line 2371
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->setKey(Ljava/util/Map;)V

    .line 2372
    invoke-virtual {v0, p3}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->setAttributeUpdates(Ljava/util/Map;)V

    .line 2373
    invoke-virtual {v0, p4}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->setReturnValues(Ljava/lang/String;)V

    .line 2374
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->updateItem(Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;)Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;

    move-result-object p1

    return-object p1
.end method

.method public updateTable(Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;)Lcom/amazonaws/services/dynamodbv2/model/UpdateTableResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1649
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->createExecutionContext(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1650
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1651
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1655
    :try_start_0
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1657
    :try_start_1
    new-instance v4, Lcom/amazonaws/services/dynamodbv2/model/transform/UpdateTableRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodbv2/model/transform/UpdateTableRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/UpdateTableRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1659
    :try_start_2
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1661
    :try_start_3
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    .line 1663
    new-instance v4, Lcom/amazonaws/services/dynamodbv2/model/transform/UpdateTableResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodbv2/model/transform/UpdateTableResultJsonUnmarshaller;-><init>()V

    .line 1664
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1667
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1669
    :try_start_4
    invoke-virtual {v0}, Lcom/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1671
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_0
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object p1, v3

    .line 1661
    :goto_0
    :try_start_5
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 1671
    :goto_1
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    throw v0
.end method

.method public updateTable(Ljava/lang/String;Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;)Lcom/amazonaws/services/dynamodbv2/model/UpdateTableResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 3415
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;-><init>()V

    .line 3416
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->setTableName(Ljava/lang/String;)V

    .line 3417
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->setProvisionedThroughput(Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;)V

    .line 3418
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->updateTable(Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;)Lcom/amazonaws/services/dynamodbv2/model/UpdateTableResult;

    move-result-object p1

    return-object p1
.end method
