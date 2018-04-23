.class public abstract Lcom/amazonaws/AmazonWebServiceClient;
.super Ljava/lang/Object;
.source "AmazonWebServiceClient.java"


# static fields
.field private static final AMAZON:Ljava/lang/String; = "Amazon"

.field private static final AWS:Ljava/lang/String; = "AWS"

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field public static final LOGGING_AWS_REQUEST_METRIC:Z = true


# instance fields
.field protected client:Lcom/amazonaws/http/AmazonHttpClient;

.field protected clientConfiguration:Lcom/amazonaws/ClientConfiguration;

.field protected volatile endpoint:Ljava/net/URI;

.field protected volatile endpointPrefix:Ljava/lang/String;

.field protected final requestHandler2s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/handlers/RequestHandler2;",
            ">;"
        }
    .end annotation
.end field

.field private volatile serviceName:Ljava/lang/String;

.field private volatile signer:Lcom/amazonaws/auth/Signer;

.field private volatile signerRegionOverride:Ljava/lang/String;

.field protected timeOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-class v0, Lcom/amazonaws/AmazonWebServiceClient;

    .line 65
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/AmazonWebServiceClient;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method protected constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 119
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p1}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    return-void
.end method

.method protected constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .locals 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->clientConfiguration:Lcom/amazonaws/ClientConfiguration;

    .line 148
    new-instance v0, Lcom/amazonaws/http/AmazonHttpClient;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/http/AmazonHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    .line 149
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->clientConfiguration:Lcom/amazonaws/ClientConfiguration;

    .line 167
    new-instance v0, Lcom/amazonaws/http/AmazonHttpClient;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazonaws/http/AmazonHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    .line 171
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    new-instance p2, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {p2, p1}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    return-void
.end method

.method private computeServiceName()Ljava/lang/String;
    .locals 4

    .line 788
    const-class v0, Lcom/amazonaws/AmazonWebServiceClient;

    invoke-static {v0, p0}, Lcom/amazonaws/util/Classes;->childClassOf(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 790
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 791
    invoke-static {v0}, Lcom/amazonaws/ServiceNameFactory;->getServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const-string v1, "JavaClient"

    .line 796
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const-string v1, "Client"

    .line 798
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 800
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized suffix for the AWS http client class name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v3, "Amazon"

    .line 805
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_3

    const-string v3, "AWS"

    .line 808
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 810
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized prefix for the AWS http client class name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v2, "AWS"

    .line 814
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    :cond_3
    const-string v2, "Amazon"

    .line 816
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    if-lt v3, v1, :cond_4

    .line 819
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized AWS http client class name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    add-int/2addr v3, v2

    .line 822
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 823
    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private computeSignerByServiceRegion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->clientConfiguration:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v0}, Lcom/amazonaws/ClientConfiguration;->getSignerOverride()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 401
    invoke-static {p1, p2}, Lcom/amazonaws/auth/SignerFactory;->getSigner(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;

    move-result-object p1

    goto :goto_0

    .line 402
    :cond_0
    invoke-static {v0, p1}, Lcom/amazonaws/auth/SignerFactory;->getSignerByTypeAndService(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;

    move-result-object p1

    .line 403
    :goto_0
    instance-of v0, p1, Lcom/amazonaws/auth/RegionAwareSigner;

    if-eqz v0, :cond_2

    .line 405
    move-object v0, p1

    check-cast v0, Lcom/amazonaws/auth/RegionAwareSigner;

    if-eqz p3, :cond_1

    .line 410
    invoke-interface {v0, p3}, Lcom/amazonaws/auth/RegionAwareSigner;->setRegionName(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    if-eqz p4, :cond_2

    .line 412
    invoke-interface {v0, p2}, Lcom/amazonaws/auth/RegionAwareSigner;->setRegionName(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object p1
.end method

.method private computeSignerByURI(Ljava/net/URI;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;
    .locals 1

    if-nez p1, :cond_0

    .line 368
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Endpoint is not set. Use setEndpoint to set an endpoint before performing any request."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->getServiceNameIntern()Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/amazonaws/util/AwsHostNameUtils;->parseRegionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 373
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;->computeSignerByServiceRegion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    move-result-object p1

    return-object p1
.end method

.method protected static isProfilingEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "com.amazonaws.sdk.enableRuntimeProfiling"

    .line 580
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRMCEnabledAtClientOrSdkLevel()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 608
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->requestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {v0}, Lcom/amazonaws/metrics/RequestMetricCollector;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private toURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 2

    const-string v0, "://"

    .line 255
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->clientConfiguration:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v1}, Lcom/amazonaws/ClientConfiguration;->getProtocol()Lcom/amazonaws/Protocol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 260
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public addRequestHandler(Lcom/amazonaws/handlers/RequestHandler2;)V
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRequestHandler(Lcom/amazonaws/handlers/RequestHandler;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 515
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    invoke-static {p1}, Lcom/amazonaws/handlers/RequestHandler2;->adapt(Lcom/amazonaws/handlers/RequestHandler;)Lcom/amazonaws/handlers/RequestHandler2;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected configSigner(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected configSigner(Ljava/net/URI;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected final createExecutionContext()Lcom/amazonaws/http/ExecutionContext;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 573
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceClient;->isRMCEnabledAtClientOrSdkLevel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazonaws/AmazonWebServiceClient;->isProfilingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 574
    :goto_1
    new-instance v1, Lcom/amazonaws/http/ExecutionContext;

    iget-object v2, p0, Lcom/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    invoke-direct {v1, v2, v0, p0}, Lcom/amazonaws/http/ExecutionContext;-><init>(Ljava/util/List;ZLcom/amazonaws/AmazonWebServiceClient;)V

    return-object v1
.end method

.method protected createExecutionContext(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;
    .locals 2

    .line 553
    invoke-virtual {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->isRequestMetricsEnabled(Lcom/amazonaws/AmazonWebServiceRequest;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/amazonaws/AmazonWebServiceClient;->isProfilingEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 554
    :goto_1
    new-instance v0, Lcom/amazonaws/http/ExecutionContext;

    iget-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    invoke-direct {v0, v1, p1, p0}, Lcom/amazonaws/http/ExecutionContext;-><init>(Ljava/util/List;ZLcom/amazonaws/AmazonWebServiceClient;)V

    return-object v0
.end method

.method protected final createExecutionContext(Lcom/amazonaws/Request;)Lcom/amazonaws/http/ExecutionContext;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;)",
            "Lcom/amazonaws/http/ExecutionContext;"
        }
    .end annotation

    .line 558
    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object p1

    return-object p1
.end method

.method protected final endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/util/AWSRequestMetrics;",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/Response<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 704
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void
.end method

.method protected final endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/util/AWSRequestMetrics;",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/Response<",
            "*>;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_0

    .line 723
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    .line 724
    invoke-virtual {p1}, Lcom/amazonaws/util/AWSRequestMetrics;->getTimingInfo()Lcom/amazonaws/util/TimingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/util/TimingInfo;->endTiming()Lcom/amazonaws/util/TimingInfo;

    .line 725
    invoke-virtual {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;->findRequestMetricCollector(Lcom/amazonaws/Request;)Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    .line 726
    invoke-virtual {v0, p2, p3}, Lcom/amazonaws/metrics/RequestMetricCollector;->collectMetrics(Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 729
    invoke-virtual {p1}, Lcom/amazonaws/util/AWSRequestMetrics;->log()V

    :cond_1
    return-void
.end method

.method protected final findRequestMetricCollector(Lcom/amazonaws/Request;)Lcom/amazonaws/metrics/RequestMetricCollector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;)",
            "Lcom/amazonaws/metrics/RequestMetricCollector;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 684
    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object p1

    .line 685
    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 689
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->getRequestMetricsCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object p1

    if-nez p1, :cond_1

    .line 690
    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public getEndpoint()Ljava/lang/String;
    .locals 1

    .line 230
    monitor-enter p0

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->endpoint:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 232
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEndpointPrefix()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->endpointPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMetricsCollector()Lcom/amazonaws/metrics/RequestMetricCollector;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 661
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0}, Lcom/amazonaws/http/AmazonHttpClient;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceAbbreviation()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 738
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->getServiceNameIntern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 747
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->getServiceNameIntern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceNameIntern()Ljava/lang/String;
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->serviceName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 758
    monitor-enter p0

    .line 759
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->serviceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 760
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceClient;->computeServiceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->serviceName:Ljava/lang/String;

    .line 761
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->serviceName:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 763
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 765
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method protected getSigner()Lcom/amazonaws/auth/Signer;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->signer:Lcom/amazonaws/auth/Signer;

    return-object v0
.end method

.method public getSignerByURI(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->signerRegionOverride:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazonaws/AmazonWebServiceClient;->computeSignerByURI(Ljava/net/URI;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    move-result-object p1

    return-object p1
.end method

.method public final getSignerRegionOverride()Ljava/lang/String;
    .locals 1

    .line 832
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->signerRegionOverride:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeOffset()I
    .locals 1

    .line 650
    iget v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->timeOffset:I

    return v0
.end method

.method protected final isRequestMetricsEnabled(Lcom/amazonaws/AmazonWebServiceRequest;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 591
    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 594
    invoke-virtual {p1}, Lcom/amazonaws/metrics/RequestMetricCollector;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 597
    :cond_0
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceClient;->isRMCEnabledAtClientOrSdkLevel()Z

    move-result p1

    return p1
.end method

.method public removeRequestHandler(Lcom/amazonaws/handlers/RequestHandler2;)V
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeRequestHandler(Lcom/amazonaws/handlers/RequestHandler;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    invoke-static {p1}, Lcom/amazonaws/handlers/RequestHandler2;->adapt(Lcom/amazonaws/handlers/RequestHandler;)Lcom/amazonaws/handlers/RequestHandler2;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected requestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 672
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0}, Lcom/amazonaws/http/AmazonHttpClient;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    if-nez v0, :cond_0

    .line 673
    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public setConfiguration(Lcom/amazonaws/ClientConfiguration;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 485
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {v0}, Lcom/amazonaws/http/AmazonHttpClient;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v1

    .line 489
    invoke-virtual {v0}, Lcom/amazonaws/http/AmazonHttpClient;->shutdown()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 491
    :goto_0
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->clientConfiguration:Lcom/amazonaws/ClientConfiguration;

    .line 492
    new-instance v0, Lcom/amazonaws/http/AmazonHttpClient;

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/http/AmazonHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    return-void
.end method

.method public setEndpoint(Ljava/lang/String;)V
    .locals 2

    .line 214
    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->toURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    .line 217
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->signerRegionOverride:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/amazonaws/AmazonWebServiceClient;->computeSignerByURI(Ljava/net/URI;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    move-result-object v0

    .line 218
    monitor-enter p0

    .line 219
    :try_start_0
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->endpoint:Ljava/net/URI;

    .line 220
    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->signer:Lcom/amazonaws/auth/Signer;

    .line 221
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setEndpoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 305
    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->toURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    const/4 v0, 0x1

    .line 306
    invoke-direct {p0, p2, p3, p3, v0}, Lcom/amazonaws/AmazonWebServiceClient;->computeSignerByServiceRegion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    move-result-object p2

    .line 308
    monitor-enter p0

    .line 309
    :try_start_0
    iput-object p2, p0, Lcom/amazonaws/AmazonWebServiceClient;->signer:Lcom/amazonaws/auth/Signer;

    .line 310
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->endpoint:Ljava/net/URI;

    .line 311
    iput-object p3, p0, Lcom/amazonaws/AmazonWebServiceClient;->signerRegionOverride:Ljava/lang/String;

    .line 312
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setRegion(Lcom/amazonaws/regions/Region;)V
    .locals 6

    if-nez p1, :cond_0

    .line 445
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No region provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 448
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->getServiceNameIntern()Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-virtual {p1, v0}, Lcom/amazonaws/regions/Region;->isServiceSupported(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 452
    invoke-virtual {p1, v0}, Lcom/amazonaws/regions/Region;->getServiceEndpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "://"

    .line 453
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    const-string v4, "://"

    .line 456
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "%s.%s.%s"

    const/4 v3, 0x3

    .line 459
    new-array v3, v3, [Ljava/lang/Object;

    .line 460
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->getEndpointPrefix()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v4, 0x1

    .line 461
    invoke-virtual {p1}, Lcom/amazonaws/regions/Region;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 462
    invoke-virtual {p1}, Lcom/amazonaws/regions/Region;->getDomain()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 459
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 466
    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lcom/amazonaws/AmazonWebServiceClient;->toURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 468
    invoke-virtual {p1}, Lcom/amazonaws/regions/Region;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/amazonaws/AmazonWebServiceClient;->signerRegionOverride:Ljava/lang/String;

    .line 467
    invoke-direct {p0, v0, p1, v3, v2}, Lcom/amazonaws/AmazonWebServiceClient;->computeSignerByServiceRegion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    move-result-object p1

    .line 469
    monitor-enter p0

    .line 470
    :try_start_0
    iput-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->endpoint:Ljava/net/URI;

    .line 471
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->signer:Lcom/amazonaws/auth/Signer;

    .line 472
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setServiceNameIntern(Ljava/lang/String;)V
    .locals 0

    .line 776
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->serviceName:Ljava/lang/String;

    return-void
.end method

.method public final setSignerRegionOverride(Ljava/lang/String;)V
    .locals 2

    .line 843
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->endpoint:Ljava/net/URI;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/amazonaws/AmazonWebServiceClient;->computeSignerByURI(Ljava/net/URI;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    move-result-object v0

    .line 844
    monitor-enter p0

    .line 845
    :try_start_0
    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->signer:Lcom/amazonaws/auth/Signer;

    .line 846
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->signerRegionOverride:Ljava/lang/String;

    .line 847
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setTimeOffset(I)V
    .locals 0

    .line 622
    iput p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->timeOffset:I

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0}, Lcom/amazonaws/http/AmazonHttpClient;->shutdown()V

    return-void
.end method

.method public withTimeOffset(I)Lcom/amazonaws/AmazonWebServiceClient;
    .locals 0

    .line 637
    invoke-virtual {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->setTimeOffset(I)V

    return-object p0
.end method
