.class public Lcom/amazonaws/http/AmazonHttpClient;
.super Ljava/lang/Object;
.source "AmazonHttpClient.java"


# static fields
.field private static final HEADER_SDK_RETRY_INFO:Ljava/lang/String; = "aws-sdk-retry"

.field private static final HEADER_SDK_TRANSACTION_ID:Ljava/lang/String; = "aws-sdk-invocation-id"

.field private static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field private static final HTTP_STATUS_MULTIPLE_CHOICES:I = 0x12c

.field private static final HTTP_STATUS_OK:I = 0xc8

.field private static final HTTP_STATUS_REQ_TOO_LONG:I = 0x19d

.field private static final HTTP_STATUS_SERVICE_UNAVAILABLE:I = 0x1f7

.field private static final HTTP_STATUS_TEMP_REDIRECT:I = 0x133

.field private static final REQUEST_LOG:Lorg/apache/commons/logging/Log;

.field private static final TIME_MILLISEC:I = 0x3e8

.field static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field final config:Lcom/amazonaws/ClientConfiguration;

.field final httpClient:Lcom/amazonaws/http/HttpClient;

.field private final requestFactory:Lcom/amazonaws/http/HttpRequestFactory;

.field private final requestMetricCollector:Lcom/amazonaws/metrics/RequestMetricCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.amazonaws.request"

    .line 79
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/AmazonHttpClient;->REQUEST_LOG:Lorg/apache/commons/logging/Log;

    .line 85
    const-class v0, Lcom/amazonaws/http/AmazonHttpClient;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 112
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p1}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/http/AmazonHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .locals 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/amazonaws/http/HttpRequestFactory;

    invoke-direct {v0}, Lcom/amazonaws/http/HttpRequestFactory;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->requestFactory:Lcom/amazonaws/http/HttpRequestFactory;

    .line 142
    iput-object p1, p0, Lcom/amazonaws/http/AmazonHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    .line 143
    iput-object p2, p0, Lcom/amazonaws/http/AmazonHttpClient;->httpClient:Lcom/amazonaws/http/HttpClient;

    const/4 p1, 0x0

    .line 144
    iput-object p1, p0, Lcom/amazonaws/http/AmazonHttpClient;->requestMetricCollector:Lcom/amazonaws/metrics/RequestMetricCollector;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/amazonaws/http/HttpRequestFactory;

    invoke-direct {v0}, Lcom/amazonaws/http/HttpRequestFactory;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->requestFactory:Lcom/amazonaws/http/HttpRequestFactory;

    .line 162
    iput-object p1, p0, Lcom/amazonaws/http/AmazonHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    .line 163
    iput-object p2, p0, Lcom/amazonaws/http/AmazonHttpClient;->httpClient:Lcom/amazonaws/http/HttpClient;

    .line 164
    iput-object p3, p0, Lcom/amazonaws/http/AmazonHttpClient;->requestMetricCollector:Lcom/amazonaws/metrics/RequestMetricCollector;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p1}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/amazonaws/http/AmazonHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    return-void
.end method

.method static createUserAgentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 544
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 547
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getServerDateFromException(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "("

    .line 782
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, " + 15"

    .line 784
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " + 15"

    .line 785
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const-string v1, " - 15"

    .line 787
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 789
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleUnexpectedFailure(Ljava/lang/Throwable;Lcom/amazonaws/util/AWSRequestMetrics;)Ljava/lang/Throwable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;",
            "Lcom/amazonaws/util/AWSRequestMetrics;",
            ")TT;"
        }
    .end annotation

    .line 482
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->Exception:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->incrementCounter(Lcom/amazonaws/metrics/MetricType;)V

    .line 483
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->Exception:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2, v0, p1}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    return-object p1
.end method

.method private isRequestSuccessful(Lcom/amazonaws/http/HttpResponse;)Z
    .locals 1

    .line 617
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result p1

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static isTemporaryRedirect(Lcom/amazonaws/http/HttpResponse;)Z
    .locals 2

    .line 610
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v0

    .line 611
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object p0

    const-string v1, "Location"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/16 v1, 0x133

    if-ne v0, v1, :cond_0

    if-eqz p0, :cond_0

    .line 613
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private pauseBeforeNextRetry(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)J
    .locals 2

    add-int/lit8 p3, p3, -0x1

    add-int/lit8 p3, p3, -0x1

    .line 753
    invoke-virtual {p4}, Lcom/amazonaws/retry/RetryPolicy;->getBackoffStrategy()Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    move-result-object p4

    invoke-interface {p4, p1, p2, p3}, Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;->delayBeforeNextRetry(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;I)J

    move-result-wide p1

    .line 756
    sget-object p4, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 757
    sget-object p4, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retriable error detected, will retry in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms, attempt number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 762
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 765
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 766
    new-instance p2, Lcom/amazonaws/AmazonClientException;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private shouldRetry(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/io/InputStream;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)Z
    .locals 2

    add-int/lit8 p4, p4, -0x1

    .line 579
    iget-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v0}, Lcom/amazonaws/ClientConfiguration;->getMaxErrorRetry()I

    move-result v0

    if-ltz v0, :cond_0

    .line 585
    invoke-virtual {p5}, Lcom/amazonaws/retry/RetryPolicy;->isMaxErrorRetryInClientConfigHonored()Z

    move-result v1

    if-nez v1, :cond_1

    .line 586
    :cond_0
    invoke-virtual {p5}, Lcom/amazonaws/retry/RetryPolicy;->getMaxErrorRetry()I

    move-result v0

    :cond_1
    const/4 v1, 0x0

    if-lt p4, v0, :cond_2

    return v1

    :cond_2
    if-eqz p2, :cond_4

    .line 595
    invoke-virtual {p2}, Ljava/io/InputStream;->markSupported()Z

    move-result p2

    if-nez p2, :cond_4

    .line 596
    sget-object p1, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 597
    sget-object p1, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string p2, "Content not repeatable"

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_3
    return v1

    .line 604
    :cond_4
    invoke-virtual {p5}, Lcom/amazonaws/retry/RetryPolicy;->getRetryCondition()Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    move-result-object p2

    invoke-interface {p2, p1, p3, p4}, Lcom/amazonaws/retry/RetryPolicy$RetryCondition;->shouldRetry(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method afterError(Lcom/amazonaws/Request;Lcom/amazonaws/Response;Ljava/util/List;Lcom/amazonaws/AmazonClientException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/Response<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/amazonaws/handlers/RequestHandler2;",
            ">;",
            "Lcom/amazonaws/AmazonClientException;",
            ")V"
        }
    .end annotation

    .line 225
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/handlers/RequestHandler2;

    .line 226
    invoke-virtual {v0, p1, p2, p4}, Lcom/amazonaws/handlers/RequestHandler2;->afterError(Lcom/amazonaws/Request;Lcom/amazonaws/Response;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method afterResponse(Lcom/amazonaws/Request;Ljava/util/List;Lcom/amazonaws/Response;Lcom/amazonaws/util/TimingInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/amazonaws/handlers/RequestHandler2;",
            ">;",
            "Lcom/amazonaws/Response<",
            "TT;>;",
            "Lcom/amazonaws/util/TimingInfo;",
            ")V"
        }
    .end annotation

    .line 234
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/amazonaws/handlers/RequestHandler2;

    .line 235
    invoke-virtual {p4, p1, p3}, Lcom/amazonaws/handlers/RequestHandler2;->afterResponse(Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public execute(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazonaws/AmazonWebServiceResponse<",
            "TT;>;>;",
            "Lcom/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazonaws/AmazonServiceException;",
            ">;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")",
            "Lcom/amazonaws/Response<",
            "TT;>;"
        }
    .end annotation

    if-nez p4, :cond_0

    .line 205
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string p2, "Internal SDK Error: No execution context parameter specified."

    invoke-direct {p1, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 208
    :cond_0
    invoke-virtual {p0, p1, p4}, Lcom/amazonaws/http/AmazonHttpClient;->requestHandler2s(Lcom/amazonaws/Request;Lcom/amazonaws/http/ExecutionContext;)Ljava/util/List;

    move-result-object v0

    .line 209
    invoke-virtual {p4}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    const/4 v2, 0x0

    .line 212
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazonaws/http/AmazonHttpClient;->executeHelper(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object p2
    :try_end_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_1

    .line 214
    :try_start_1
    invoke-virtual {v1}, Lcom/amazonaws/util/AWSRequestMetrics;->getTimingInfo()Lcom/amazonaws/util/TimingInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazonaws/util/TimingInfo;->endTiming()Lcom/amazonaws/util/TimingInfo;

    move-result-object p3

    .line 215
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/amazonaws/http/AmazonHttpClient;->afterResponse(Lcom/amazonaws/Request;Ljava/util/List;Lcom/amazonaws/Response;Lcom/amazonaws/util/TimingInfo;)V
    :try_end_1
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    move-exception p3

    goto :goto_0

    :catch_1
    move-exception p3

    move-object p2, v2

    .line 218
    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/amazonaws/http/AmazonHttpClient;->afterError(Lcom/amazonaws/Request;Lcom/amazonaws/Response;Ljava/util/List;Lcom/amazonaws/AmazonClientException;)V

    .line 219
    throw p3
.end method

.method executeHelper(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazonaws/AmazonWebServiceResponse<",
            "TT;>;>;",
            "Lcom/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazonaws/AmazonServiceException;",
            ">;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")",
            "Lcom/amazonaws/Response<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    .line 281
    invoke-virtual/range {p4 .. p4}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v10

    .line 286
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ServiceName:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 287
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ServiceEndpoint:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 291
    invoke-virtual/range {p0 .. p1}, Lcom/amazonaws/http/AmazonHttpClient;->setUserAgent(Lcom/amazonaws/Request;)V

    const-string v1, "aws-sdk-invocation-id"

    .line 292
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v11, Ljava/util/LinkedHashMap;

    .line 301
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v11, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 302
    new-instance v12, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 304
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 305
    invoke-virtual {v13}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    .line 306
    invoke-virtual {v13, v1}, Ljava/io/InputStream;->mark(I)V

    .line 309
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/amazonaws/http/ExecutionContext;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v14

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move/from16 v18, v1

    move-wide v4, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_0
    const/4 v15, 0x1

    add-int/2addr v1, v15

    .line 316
    sget-object v15, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestCount:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    move-wide/from16 v21, v4

    int-to-long v4, v1

    invoke-virtual {v10, v15, v4, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->setCounter(Lcom/amazonaws/metrics/MetricType;J)V

    const/4 v4, 0x1

    if-le v1, v4, :cond_1

    .line 318
    invoke-interface {v8, v11}, Lcom/amazonaws/Request;->setParameters(Ljava/util/Map;)V

    .line 319
    invoke-interface {v8, v12}, Lcom/amazonaws/Request;->setHeaders(Ljava/util/Map;)V

    .line 320
    invoke-interface {v8, v13}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    :cond_1
    if-eqz v6, :cond_2

    .line 322
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v4

    if-nez v4, :cond_2

    .line 323
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getResourcePath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 324
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    invoke-virtual {v6}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 324
    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-interface {v8, v4}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 326
    invoke-virtual {v6}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4}, Lcom/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V

    :cond_2
    const/4 v4, 0x1

    if-le v1, v4, :cond_3

    .line 331
    :try_start_0
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RetryPauseTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 333
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v4

    iget-object v5, v7, Lcom/amazonaws/http/AmazonHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    .line 336
    invoke-virtual {v5}, Lcom/amazonaws/ClientConfiguration;->getRetryPolicy()Lcom/amazonaws/retry/RetryPolicy;

    move-result-object v5

    .line 333
    invoke-direct {v7, v4, v2, v1, v5}, Lcom/amazonaws/http/AmazonHttpClient;->pauseBeforeNextRetry(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    :try_start_2
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RetryPauseTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    .line 340
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 341
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 342
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v9, v0

    move/from16 v20, v1

    move-wide/from16 v21, v4

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 338
    :try_start_3
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RetryPauseTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v3, v16

    goto/16 :goto_21

    :catch_1
    move-exception v0

    :goto_1
    move-object v1, v0

    goto/16 :goto_19

    :catch_2
    move-exception v0

    :goto_2
    move-object v1, v0

    goto/16 :goto_1a

    :catch_3
    move-exception v0

    move-object v9, v0

    move/from16 v20, v1

    :goto_3
    move-object/from16 v23, v6

    :goto_4
    move-object/from16 v6, v16

    move-object/from16 v15, v17

    move-object/from16 v16, v3

    goto/16 :goto_1c

    :cond_3
    move-wide/from16 v4, v21

    :cond_4
    :goto_5
    :try_start_4
    const-string v2, "aws-sdk-retry"

    .line 345
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v23, v6

    add-int/lit8 v6, v1, -0x1

    :try_start_5
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v2, v6}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1e
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v3, :cond_5

    .line 350
    :try_start_6
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/amazonaws/http/ExecutionContext;->getSignerByURI(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;

    move-result-object v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v15, v2

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v9, v0

    move/from16 v20, v1

    move-wide/from16 v21, v4

    goto :goto_4

    :cond_5
    move-object v15, v3

    :goto_6
    if-eqz v15, :cond_6

    if-eqz v14, :cond_6

    .line 353
    :try_start_7
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestSigningTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 355
    :try_start_8
    invoke-interface {v15, v8, v14}, Lcom/amazonaws/auth/Signer;->sign(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 357
    :try_start_9
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestSigningTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    goto :goto_7

    :catchall_2
    move-exception v0

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestSigningTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catch_5
    move-exception v0

    move-object v9, v0

    move/from16 v20, v1

    move-wide/from16 v21, v4

    goto/16 :goto_17

    .line 361
    :cond_6
    :goto_7
    :try_start_a
    sget-object v2, Lcom/amazonaws/http/AmazonHttpClient;->REQUEST_LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v2, :cond_7

    .line 362
    :try_start_b
    sget-object v2, Lcom/amazonaws/http/AmazonHttpClient;->REQUEST_LOG:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending Request: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 365
    :cond_7
    :try_start_c
    iget-object v2, v7, Lcom/amazonaws/http/AmazonHttpClient;->requestFactory:Lcom/amazonaws/http/HttpRequestFactory;

    iget-object v3, v7, Lcom/amazonaws/http/AmazonHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v2, v8, v3, v9}, Lcom/amazonaws/http/HttpRequestFactory;->createHttpRequest(Lcom/amazonaws/Request;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/http/HttpRequest;

    move-result-object v6
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 369
    :try_start_d
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->HttpRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1c
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 371
    :try_start_e
    iget-object v2, v7, Lcom/amazonaws/http/AmazonHttpClient;->httpClient:Lcom/amazonaws/http/HttpClient;

    invoke-interface {v2, v6}, Lcom/amazonaws/http/HttpClient;->execute(Lcom/amazonaws/http/HttpRequest;)Lcom/amazonaws/http/HttpResponse;

    move-result-object v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 373
    :try_start_f
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->HttpRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    .line 376
    invoke-direct {v7, v3}, Lcom/amazonaws/http/AmazonHttpClient;->isRequestSuccessful(Lcom/amazonaws/http/HttpResponse;)Z

    move-result v2
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_19
    .catch Ljava/lang/Error; {:try_start_f .. :try_end_f} :catch_18
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    if-eqz v2, :cond_9

    .line 377
    :try_start_10
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->StatusCode:Lcom/amazonaws/util/AWSRequestMetrics$Field;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_c
    .catch Ljava/lang/Error; {:try_start_10 .. :try_end_10} :catch_b
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move/from16 v24, v1

    :try_start_11
    invoke-virtual {v3}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v2, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 382
    invoke-interface/range {p2 .. p2}, Lcom/amazonaws/http/HttpResponseHandler;->needsConnectionLeftOpen()Z

    move-result v1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_c
    .catch Ljava/lang/Error; {:try_start_11 .. :try_end_11} :catch_b
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    move-object/from16 v2, p2

    move-wide/from16 v25, v4

    .line 383
    :try_start_12
    invoke-virtual {v7, v8, v2, v3, v9}, Lcom/amazonaws/http/AmazonHttpClient;->handleResponse(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v4

    .line 386
    new-instance v5, Lcom/amazonaws/Response;

    invoke-direct {v5, v4, v3}, Lcom/amazonaws/Response;-><init>(Ljava/lang/Object;Lcom/amazonaws/http/HttpResponse;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/lang/Error; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    if-nez v1, :cond_8

    if-eqz v3, :cond_8

    .line 467
    :try_start_13
    invoke-virtual {v3}, Lcom/amazonaws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 468
    invoke-virtual {v3}, Lcom/amazonaws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 471
    sget-object v2, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Cannot close the response content."

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_8
    :goto_8
    return-object v5

    :catchall_3
    move-exception v0

    move/from16 v18, v1

    goto/16 :goto_12

    :catch_7
    move-exception v0

    move/from16 v18, v1

    move-object/from16 v16, v3

    goto/16 :goto_1

    :catch_8
    move-exception v0

    move/from16 v18, v1

    move-object/from16 v16, v3

    goto/16 :goto_2

    :catch_9
    move-exception v0

    move-object v9, v0

    move/from16 v18, v1

    goto :goto_a

    :catch_a
    move-exception v0

    move-object/from16 v2, p2

    move-wide/from16 v25, v4

    :goto_9
    move-object v9, v0

    :goto_a
    move-object/from16 v16, v15

    move/from16 v20, v24

    goto :goto_b

    :catchall_4
    move-exception v0

    goto/16 :goto_12

    :catch_b
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v3

    goto/16 :goto_19

    :catch_c
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v3

    goto/16 :goto_1a

    :catch_d
    move-exception v0

    move-object/from16 v2, p2

    move-wide/from16 v25, v4

    move-object v9, v0

    move/from16 v20, v1

    move-object/from16 v16, v15

    :goto_b
    move-wide/from16 v21, v25

    move-object v15, v6

    move-object v6, v3

    goto/16 :goto_1c

    :cond_9
    move-object/from16 v2, p2

    move/from16 v24, v1

    move-wide/from16 v25, v4

    .line 387
    :try_start_14
    invoke-static {v3}, Lcom/amazonaws/http/AmazonHttpClient;->isTemporaryRedirect(Lcom/amazonaws/http/HttpResponse;)Z

    move-result v1
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_19
    .catch Ljava/lang/Error; {:try_start_14 .. :try_end_14} :catch_18
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    if-eqz v1, :cond_a

    .line 394
    :try_start_15
    invoke-virtual {v3}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v4, "Location"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 395
    sget-object v4, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirecting to: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 397
    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_c
    .catch Ljava/lang/Error; {:try_start_15 .. :try_end_15} :catch_b
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    const/4 v4, 0x0

    .line 398
    :try_start_16
    invoke-interface {v8, v4}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 399
    invoke-interface {v8, v4}, Lcom/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V

    .line 400
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->StatusCode:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 401
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RedirectLocation:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v4, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 402
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const/4 v4, 0x0

    invoke-virtual {v10, v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_c
    .catch Ljava/lang/Error; {:try_start_16 .. :try_end_16} :catch_b
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    move-object v9, v3

    move-object/from16 v17, v6

    move/from16 v16, v18

    move/from16 v20, v24

    move-wide/from16 v21, v25

    const/4 v1, 0x0

    goto/16 :goto_c

    :catch_e
    move-exception v0

    move-object v9, v0

    move-object/from16 v23, v2

    goto/16 :goto_a

    :catch_f
    move-exception v0

    goto/16 :goto_9

    .line 404
    :cond_a
    :try_start_17
    invoke-interface/range {p3 .. p3}, Lcom/amazonaws/http/HttpResponseHandler;->needsConnectionLeftOpen()Z

    move-result v16
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_19
    .catch Ljava/lang/Error; {:try_start_17 .. :try_end_17} :catch_18
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    move-object/from16 v5, p3

    .line 405
    :try_start_18
    invoke-virtual {v7, v8, v5, v3}, Lcom/amazonaws/http/AmazonHttpClient;->handleErrorResponse(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;

    move-result-object v4

    .line 407
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v4}, Lcom/amazonaws/AmazonServiceException;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 408
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSErrorCode:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v4}, Lcom/amazonaws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 409
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->StatusCode:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v4}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 411
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v2

    .line 412
    invoke-virtual {v6}, Lcom/amazonaws/http/HttpRequest;->getContent()Ljava/io/InputStream;

    move-result-object v17

    iget-object v1, v7, Lcom/amazonaws/http/AmazonHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    .line 415
    invoke-virtual {v1}, Lcom/amazonaws/ClientConfiguration;->getRetryPolicy()Lcom/amazonaws/retry/RetryPolicy;

    move-result-object v18
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_15
    .catch Ljava/lang/Error; {:try_start_18 .. :try_end_18} :catch_14
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    move/from16 v20, v24

    move-object v1, v7

    move-object v9, v3

    move-object/from16 v3, v17

    move-object/from16 v27, v4

    move-wide/from16 v21, v25

    move/from16 v5, v20

    move-object/from16 v17, v6

    move-object/from16 v6, v18

    .line 411
    :try_start_19
    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/http/AmazonHttpClient;->shouldRetry(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/io/InputStream;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)Z

    move-result v1

    if-nez v1, :cond_b

    move-object/from16 v1, v27

    .line 416
    throw v1

    :cond_b
    move-object/from16 v1, v27

    .line 426
    invoke-static {v1}, Lcom/amazonaws/retry/RetryUtils;->isClockSkewError(Lcom/amazonaws/AmazonServiceException;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 427
    invoke-virtual {v7, v9, v1}, Lcom/amazonaws/http/AmazonHttpClient;->parseClockSkewOffset(Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/AmazonServiceException;)I

    move-result v2

    .line 428
    invoke-static {v2}, Lcom/amazonaws/SDKGlobalConfiguration;->setGlobalTimeOffset(I)V

    .line 430
    :cond_c
    invoke-virtual {v7, v8, v1}, Lcom/amazonaws/http/AmazonHttpClient;->resetRequestAfterError(Lcom/amazonaws/Request;Ljava/lang/Exception;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_12
    .catch Ljava/lang/Error; {:try_start_19 .. :try_end_19} :catch_11
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    move-object/from16 v2, v23

    :goto_c
    if-nez v16, :cond_d

    if-eqz v9, :cond_d

    .line 467
    :try_start_1a
    invoke-virtual {v9}, Lcom/amazonaws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 468
    invoke-virtual {v9}, Lcom/amazonaws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_10

    goto :goto_d

    :catch_10
    move-exception v0

    move-object v3, v0

    .line 471
    sget-object v4, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Cannot close the response content."

    invoke-interface {v4, v5, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_d
    :goto_d
    move-object v6, v2

    move-object/from16 v28, v10

    move-object v3, v15

    move/from16 v18, v16

    move-wide/from16 v4, v21

    const/16 v24, 0x0

    move-object v2, v1

    move-object/from16 v16, v9

    goto/16 :goto_1f

    :catchall_5
    move-exception v0

    move-object v1, v0

    move-object v3, v9

    goto :goto_e

    :catch_11
    move-exception v0

    goto :goto_f

    :catch_12
    move-exception v0

    goto :goto_10

    :catch_13
    move-exception v0

    goto :goto_11

    :catchall_6
    move-exception v0

    move-object v9, v3

    move-object v1, v0

    :goto_e
    move/from16 v18, v16

    goto/16 :goto_21

    :catch_14
    move-exception v0

    move-object v9, v3

    :goto_f
    move-object v1, v0

    move/from16 v18, v16

    goto :goto_13

    :catch_15
    move-exception v0

    move-object v9, v3

    :goto_10
    move-object v1, v0

    move/from16 v18, v16

    goto :goto_14

    :catch_16
    move-exception v0

    move-object v9, v3

    move-object/from16 v17, v6

    move/from16 v20, v24

    move-wide/from16 v21, v25

    :goto_11
    move-object v6, v9

    move/from16 v18, v16

    move-object v9, v0

    goto/16 :goto_18

    :catch_17
    move-exception v0

    move-object v9, v3

    move-object/from16 v17, v6

    move/from16 v20, v24

    move-wide/from16 v21, v25

    goto :goto_15

    :catchall_7
    move-exception v0

    move-object v9, v3

    :goto_12
    move-object v1, v0

    goto/16 :goto_21

    :catch_18
    move-exception v0

    move-object v9, v3

    move-object v1, v0

    :goto_13
    move-object/from16 v16, v9

    goto :goto_19

    :catch_19
    move-exception v0

    move-object v9, v3

    move-object v1, v0

    :goto_14
    move-object/from16 v16, v9

    goto :goto_1a

    :catch_1a
    move-exception v0

    move/from16 v20, v1

    move-object v9, v3

    move-wide/from16 v21, v4

    move-object/from16 v17, v6

    :goto_15
    move-object v6, v9

    move-object/from16 v16, v15

    move-object/from16 v15, v17

    move-object v9, v0

    goto :goto_1c

    :catchall_8
    move-exception v0

    move/from16 v20, v1

    move-wide/from16 v21, v4

    move-object/from16 v17, v6

    move-object v1, v0

    .line 373
    :try_start_1b
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->HttpRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    throw v1
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_2
    .catch Ljava/lang/Error; {:try_start_1b .. :try_end_1b} :catch_1
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    :catch_1b
    move-exception v0

    goto :goto_16

    :catch_1c
    move-exception v0

    move/from16 v20, v1

    move-wide/from16 v21, v4

    move-object/from16 v17, v6

    goto :goto_16

    :catch_1d
    move-exception v0

    move/from16 v20, v1

    move-wide/from16 v21, v4

    :goto_16
    move-object v9, v0

    :goto_17
    move-object/from16 v6, v16

    :goto_18
    move-object/from16 v16, v15

    move-object/from16 v15, v17

    goto :goto_1c

    :catch_1e
    move-exception v0

    move/from16 v20, v1

    move-wide/from16 v21, v4

    goto :goto_1b

    .line 456
    :goto_19
    :try_start_1c
    invoke-direct {v7, v1, v10}, Lcom/amazonaws/http/AmazonHttpClient;->handleUnexpectedFailure(Ljava/lang/Throwable;Lcom/amazonaws/util/AWSRequestMetrics;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 454
    :goto_1a
    invoke-direct {v7, v1, v10}, Lcom/amazonaws/http/AmazonHttpClient;->handleUnexpectedFailure(Ljava/lang/Throwable;Lcom/amazonaws/util/AWSRequestMetrics;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    :catch_1f
    move-exception v0

    move/from16 v20, v1

    move-wide/from16 v21, v4

    move-object/from16 v23, v6

    :goto_1b
    move-object v9, v0

    goto/16 :goto_4

    .line 433
    :goto_1c
    :try_start_1d
    sget-object v1, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    if-eqz v1, :cond_e

    .line 434
    :try_start_1e
    sget-object v1, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to execute HTTP request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    goto :goto_1d

    :catchall_9
    move-exception v0

    move-object v1, v0

    move-object v3, v6

    goto/16 :goto_21

    .line 436
    :cond_e
    :goto_1d
    :try_start_1f
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->Exception:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->incrementCounter(Lcom/amazonaws/metrics/MetricType;)V

    .line 437
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->Exception:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v1, v9}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 438
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const/4 v5, 0x0

    invoke-virtual {v10, v1, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 440
    new-instance v4, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to execute HTTP request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v9}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 442
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v2

    .line 443
    invoke-virtual {v15}, Lcom/amazonaws/http/HttpRequest;->getContent()Ljava/io/InputStream;

    move-result-object v3

    iget-object v1, v7, Lcom/amazonaws/http/AmazonHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    .line 446
    invoke-virtual {v1}, Lcom/amazonaws/ClientConfiguration;->getRetryPolicy()Lcom/amazonaws/retry/RetryPolicy;

    move-result-object v17
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    move-object v1, v7

    move-object/from16 v19, v4

    move-object/from16 v24, v5

    move/from16 v5, v20

    move-object/from16 v28, v10

    move-object v10, v6

    move-object/from16 v6, v17

    .line 442
    :try_start_20
    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/http/AmazonHttpClient;->shouldRetry(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/io/InputStream;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 447
    throw v19

    .line 452
    :cond_f
    invoke-virtual {v7, v8, v9}, Lcom/amazonaws/http/AmazonHttpClient;->resetRequestAfterError(Lcom/amazonaws/Request;Ljava/lang/Exception;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    if-nez v18, :cond_10

    if-eqz v10, :cond_10

    .line 467
    :try_start_21
    invoke-virtual {v10}, Lcom/amazonaws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 468
    invoke-virtual {v10}, Lcom/amazonaws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_20

    goto :goto_1e

    :catch_20
    move-exception v0

    move-object v1, v0

    .line 471
    sget-object v2, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Cannot close the response content."

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_10
    :goto_1e
    move-object/from16 v17, v15

    move-object/from16 v3, v16

    move-object/from16 v2, v19

    move-wide/from16 v4, v21

    move-object/from16 v6, v23

    move-object/from16 v16, v10

    :goto_1f
    move/from16 v1, v20

    move-object/from16 v10, v28

    move-object/from16 v9, p4

    goto/16 :goto_0

    :catchall_a
    move-exception v0

    goto :goto_20

    :catchall_b
    move-exception v0

    move-object v10, v6

    :goto_20
    move-object v1, v0

    move-object v3, v10

    :goto_21
    if-nez v18, :cond_11

    if-eqz v3, :cond_11

    .line 467
    :try_start_22
    invoke-virtual {v3}, Lcom/amazonaws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 468
    invoke-virtual {v3}, Lcom/amazonaws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_21

    goto :goto_22

    :catch_21
    move-exception v0

    move-object v2, v0

    .line 471
    sget-object v3, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Cannot close the response content."

    invoke-interface {v3, v4, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 472
    :cond_11
    :goto_22
    throw v1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 822
    invoke-virtual {p0}, Lcom/amazonaws/http/AmazonHttpClient;->shutdown()V

    .line 823
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;
    .locals 1

    .line 831
    iget-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->requestMetricCollector:Lcom/amazonaws/metrics/RequestMetricCollector;

    return-object v0
.end method

.method public getResponseMetadataForRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method handleErrorResponse(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazonaws/AmazonServiceException;",
            ">;",
            "Lcom/amazonaws/http/HttpResponse;",
            ")",
            "Lcom/amazonaws/AmazonServiceException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 695
    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v0

    .line 699
    :try_start_0
    invoke-interface {p2, p3}, Lcom/amazonaws/http/HttpResponseHandler;->handle(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazonaws/AmazonServiceException;

    .line 700
    sget-object v1, Lcom/amazonaws/http/AmazonHttpClient;->REQUEST_LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received error response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazonaws/AmazonServiceException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const/16 v1, 0x19d

    if-ne v0, v1, :cond_0

    .line 705
    new-instance p2, Lcom/amazonaws/AmazonServiceException;

    const-string p3, "Request entity too large"

    invoke-direct {p2, p3}, Lcom/amazonaws/AmazonServiceException;-><init>(Ljava/lang/String;)V

    .line 706
    invoke-interface {p1}, Lcom/amazonaws/Request;->getServiceName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/amazonaws/AmazonServiceException;->setServiceName(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p2, v1}, Lcom/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 708
    sget-object p3, Lcom/amazonaws/AmazonServiceException$ErrorType;->Client:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {p2, p3}, Lcom/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    const-string p3, "Request entity too large"

    .line 709
    invoke-virtual {p2, p3}, Lcom/amazonaws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1f7

    if-ne v0, v1, :cond_1

    const-string v2, "Service Unavailable"

    .line 711
    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->getStatusText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 712
    new-instance p2, Lcom/amazonaws/AmazonServiceException;

    const-string p3, "Service unavailable"

    invoke-direct {p2, p3}, Lcom/amazonaws/AmazonServiceException;-><init>(Ljava/lang/String;)V

    .line 713
    invoke-interface {p1}, Lcom/amazonaws/Request;->getServiceName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/amazonaws/AmazonServiceException;->setServiceName(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p2, v1}, Lcom/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 715
    sget-object p3, Lcom/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {p2, p3}, Lcom/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    const-string p3, "Service unavailable"

    .line 716
    invoke-virtual {p2, p3}, Lcom/amazonaws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    .line 727
    :goto_0
    invoke-virtual {p2, v0}, Lcom/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 728
    invoke-interface {p1}, Lcom/amazonaws/Request;->getServiceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazonaws/AmazonServiceException;->setServiceName(Ljava/lang/String;)V

    .line 729
    invoke-virtual {p2}, Lcom/amazonaws/AmazonServiceException;->fillInStackTrace()Ljava/lang/Throwable;

    return-object p2

    .line 717
    :cond_1
    instance-of p1, p2, Ljava/io/IOException;

    if-eqz p1, :cond_2

    .line 718
    check-cast p2, Ljava/io/IOException;

    throw p2

    .line 720
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to unmarshall error response ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "). Response Code: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Response Text: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->getStatusText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 723
    new-instance p3, Lcom/amazonaws/AmazonClientException;

    invoke-direct {p3, p1, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method handleResponse(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazonaws/AmazonWebServiceResponse<",
            "TT;>;>;",
            "Lcom/amazonaws/http/HttpResponse;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 644
    :try_start_0
    invoke-virtual {p4}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object p1

    .line 646
    sget-object p4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ResponseProcessingTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p1, p4}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catch Lcom/amazonaws/internal/CRC32MismatchException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    :try_start_1
    invoke-interface {p2, p3}, Lcom/amazonaws/http/HttpResponseHandler;->handle(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazonaws/AmazonWebServiceResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 650
    :try_start_2
    sget-object p4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ResponseProcessingTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p1, p4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    if-nez p2, :cond_0

    .line 654
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to unmarshall response metadata. Response Code: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", Response Text: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->getStatusText()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 660
    :cond_0
    sget-object p4, Lcom/amazonaws/http/AmazonHttpClient;->REQUEST_LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {p4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 661
    sget-object p4, Lcom/amazonaws/http/AmazonHttpClient;->REQUEST_LOG:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received successful response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", AWS Request ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {p2}, Lcom/amazonaws/AmazonWebServiceResponse;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 661
    invoke-interface {p4, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 664
    :cond_1
    sget-object p4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2}, Lcom/amazonaws/AmazonWebServiceResponse;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 666
    invoke-virtual {p2}, Lcom/amazonaws/AmazonWebServiceResponse;->getResult()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p2

    .line 650
    sget-object p4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ResponseProcessingTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p1, p4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    throw p2
    :try_end_2
    .catch Lcom/amazonaws/internal/CRC32MismatchException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 672
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to unmarshall response ("

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "). Response Code: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", Response Text: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->getStatusText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 675
    new-instance p3, Lcom/amazonaws/AmazonClientException;

    invoke-direct {p3, p2, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_1
    move-exception p1

    .line 670
    throw p1

    :catch_2
    move-exception p1

    .line 668
    throw p1
.end method

.method parseClockSkewOffset(Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/AmazonServiceException;)I
    .locals 3

    .line 794
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 797
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v1, "Date"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 801
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 807
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/amazonaws/util/DateUtils;->parseRFC822Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    move-object v1, p1

    goto :goto_2

    :catch_1
    move-exception p2

    goto :goto_2

    .line 803
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Lcom/amazonaws/AmazonServiceException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazonaws/http/AmazonHttpClient;->getServerDateFromException(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 804
    :try_start_3
    invoke-static {p1}, Lcom/amazonaws/util/DateUtils;->parseCompressedISO8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 816
    :goto_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x3e8

    .line 817
    div-long/2addr v0, p1

    long-to-int p1, v0

    return p1

    .line 810
    :goto_2
    sget-object p1, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse clock skew offset from response: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method requestHandler2s(Lcom/amazonaws/Request;Lcom/amazonaws/http/ExecutionContext;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazonaws/handlers/RequestHandler2;",
            ">;"
        }
    .end annotation

    .line 242
    invoke-virtual {p2}, Lcom/amazonaws/http/ExecutionContext;->getRequestHandler2s()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 244
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 248
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/handlers/RequestHandler2;

    .line 251
    instance-of v3, v2, Lcom/amazonaws/handlers/CredentialsRequestHandler;

    if-eqz v3, :cond_1

    .line 252
    move-object v3, v2

    check-cast v3, Lcom/amazonaws/handlers/CredentialsRequestHandler;

    .line 253
    invoke-virtual {p2}, Lcom/amazonaws/http/ExecutionContext;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazonaws/handlers/CredentialsRequestHandler;->setCredentials(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 255
    :cond_1
    invoke-virtual {v2, p1}, Lcom/amazonaws/handlers/RequestHandler2;->beforeRequest(Lcom/amazonaws/Request;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method resetRequestAfterError(Lcom/amazonaws/Request;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 499
    invoke-interface {p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 502
    :cond_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 503
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Encountered an exception and stream is not resettable"

    invoke-direct {p1, v0, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 507
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 511
    :catch_0
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Encountered an exception and couldn\'t reset the stream to retry"

    invoke-direct {p1, v0, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method setUserAgent(Lcom/amazonaws/Request;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;)V"
        }
    .end annotation

    .line 521
    sget-object v0, Lcom/amazonaws/ClientConfiguration;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 523
    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 525
    invoke-virtual {v1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 527
    sget-object v2, Lcom/amazonaws/RequestClientOptions$Marker;->USER_AGENT:Lcom/amazonaws/RequestClientOptions$Marker;

    invoke-virtual {v1, v2}, Lcom/amazonaws/RequestClientOptions;->getClientMarker(Lcom/amazonaws/RequestClientOptions$Marker;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 529
    invoke-static {v0, v1}, Lcom/amazonaws/http/AmazonHttpClient;->createUserAgentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 534
    :cond_0
    sget-object v1, Lcom/amazonaws/ClientConfiguration;->DEFAULT_USER_AGENT:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/http/AmazonHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v2}, Lcom/amazonaws/ClientConfiguration;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 535
    iget-object v1, p0, Lcom/amazonaws/http/AmazonHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v1}, Lcom/amazonaws/ClientConfiguration;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazonaws/http/AmazonHttpClient;->createUserAgentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "User-Agent"

    .line 537
    invoke-interface {p1, v1, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->httpClient:Lcom/amazonaws/http/HttpClient;

    invoke-interface {v0}, Lcom/amazonaws/http/HttpClient;->shutdown()V

    return-void
.end method
