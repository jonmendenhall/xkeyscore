.class public interface abstract Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDBAsync;
.super Ljava/lang/Object;
.source "AmazonDynamoDBAsync.java"

# interfaces
.implements Lcom/amazonaws/services/dynamodbv2/AmazonDynamoDB;


# virtual methods
.method public abstract batchGetItemAsync(Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract batchGetItemAsync(Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract batchWriteItemAsync(Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract batchWriteItemAsync(Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract createTableAsync(Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract createTableAsync(Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract deleteItemAsync(Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract deleteItemAsync(Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract deleteTableAsync(Lcom/amazonaws/services/dynamodbv2/model/DeleteTableRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract deleteTableAsync(Lcom/amazonaws/services/dynamodbv2/model/DeleteTableRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract describeLimitsAsync(Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract describeLimitsAsync(Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract describeTableAsync(Lcom/amazonaws/services/dynamodbv2/model/DescribeTableRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract describeTableAsync(Lcom/amazonaws/services/dynamodbv2/model/DescribeTableRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract getItemAsync(Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract getItemAsync(Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract listTablesAsync(Lcom/amazonaws/services/dynamodbv2/model/ListTablesRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract listTablesAsync(Lcom/amazonaws/services/dynamodbv2/model/ListTablesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract putItemAsync(Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract putItemAsync(Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract queryAsync(Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract queryAsync(Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract scanAsync(Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract scanAsync(Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract updateItemAsync(Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract updateItemAsync(Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract updateTableAsync(Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract updateTableAsync(Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method
