.class public Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;
.super Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;
.source "AmazonDynamoDBAsyncClient.java"

# interfaces
.implements Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsync;


# static fields
.field private static final DEFAULT_THREAD_POOL_SIZE:I = 0xa


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 255
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 279
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    .line 280
    invoke-virtual {p1}, Lcom/amazonaws/ClientConfiguration;->getMaxConnections()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 279
    invoke-direct {p0, v0, p1, v1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1

    const/16 v0, 0xa

    .line 297
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 337
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    .line 338
    iput-object p3, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 315
    invoke-direct {p0, p1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 316
    iput-object p2, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1

    const/16 v0, 0xa

    .line 356
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 397
    invoke-virtual {p2}, Lcom/amazonaws/ClientConfiguration;->getMaxConnections()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 396
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 419
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 420
    iput-object p3, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 376
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method


# virtual methods
.method public batchGetItemAsync(Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 546
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$1;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$1;-><init>(Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public batchGetItemAsync(Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;",
            "Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 653
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$2;-><init>(Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public batchWriteItemAsync(Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 803
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$3;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$3;-><init>(Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public batchWriteItemAsync(Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;",
            "Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 946
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$4;-><init>(Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public createTableAsync(Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/dynamodbv2/model/CreateTableResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1005
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$5;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$5;-><init>(Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public createTableAsync(Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;",
            "Lcom/amazonaws/services/dynamodbv2/model/CreateTableResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/dynamodbv2/model/CreateTableResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1057
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$6;-><init>(Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public deleteItemAsync(Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/dynamodbv2/model/DeleteItemResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1113
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$7;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$7;-><init>(Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public deleteItemAsync(Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;",
            "Lcom/amazonaws/services/dynamodbv2/model/DeleteItemResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/dynamodbv2/model/DeleteItemResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1162
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$8;-><init>(Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public deleteTableAsync(Lcom/amazonaws/services/dynamodbv2/model/DeleteTableRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/DeleteTableRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/dynamodbv2/model/DeleteTableResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1227
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$9;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$9;-><init>(Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodbv2/model/DeleteTableRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public deleteTableAsync(Lcom/amazonaws/services/dynamodbv2/model/DeleteTableRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/DeleteTableRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazonaws/services/dynamodbv2/model/DeleteTableRequest;",
            "Lcom/amazonaws/services/dynamodbv2/model/DeleteTableResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/dynamodbv2/model/DeleteTableResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1285
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$10;-><init>(Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodbv2/model/DeleteTableRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public describeLimitsAsync(Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1422
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$11;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$11;-><init>(Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public describeLimitsAsync(Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsRequest;",
            "Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1552
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$12;-><init>(Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public describeTableAsync(Lcom/amazonaws/services/dynamodbv2/model/DescribeTableRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/DescribeTableRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/dynamodbv2/model/DescribeTableResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1602
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$13;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$13;-><init>(Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodbv2/model/DescribeTableRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public describeTableAsync(Lcom/amazonaws/services/dynamodbv2/model/DescribeTableRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/DescribeTableRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazonaws/services/dynamodbv2/model/DescribeTableRequest;",
            "Lcom/amazonaws/services/dynamodbv2/model/DescribeTableResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/dynamodbv2/model/DescribeTableResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1645
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$14;-><init>(Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodbv2/model/DescribeTableRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getItemAsync(Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1692
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$15;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$15;-><init>(Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public getItemAsync(Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;",
            "Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1732
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$16;-><init>(Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public listTablesAsync(Lcom/amazonaws/services/dynamodbv2/model/ListTablesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/ListTablesRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/dynamodbv2/model/ListTablesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1770
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$17;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$17;-><init>(Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodbv2/model/ListTablesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public listTablesAsync(Lcom/amazonaws/services/dynamodbv2/model/ListTablesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/ListTablesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazonaws/services/dynamodbv2/model/ListTablesRequest;",
            "Lcom/amazonaws/services/dynamodbv2/model/ListTablesResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/dynamodbv2/model/ListTablesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1801
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$18;-><init>(Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodbv2/model/ListTablesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public putItemAsync(Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1878
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$19;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$19;-><init>(Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public putItemAsync(Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;",
            "Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1948
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$20;-><init>(Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public queryAsync(Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/dynamodbv2/model/QueryResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2018
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$21;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$21;-><init>(Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public queryAsync(Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;",
            "Lcom/amazonaws/services/dynamodbv2/model/QueryResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/dynamodbv2/model/QueryResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2081
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$22;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$22;-><init>(Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public scanAsync(Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/dynamodbv2/model/ScanResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2143
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$23;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$23;-><init>(Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public scanAsync(Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;",
            "Lcom/amazonaws/services/dynamodbv2/model/ScanResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/dynamodbv2/model/ScanResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2198
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$24;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$24;-><init>(Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public shutdown()V
    .locals 1

    .line 443
    invoke-super {p0}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBClient;->shutdown()V

    .line 444
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public updateItemAsync(Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2246
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$25;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$25;-><init>(Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public updateItemAsync(Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;",
            "Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2287
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$26;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$26;-><init>(Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public updateTableAsync(Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/dynamodbv2/model/UpdateTableResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2360
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$27;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$27;-><init>(Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public updateTableAsync(Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;",
            "Lcom/amazonaws/services/dynamodbv2/model/UpdateTableResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/dynamodbv2/model/UpdateTableResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2426
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$28;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient$28;-><init>(Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
