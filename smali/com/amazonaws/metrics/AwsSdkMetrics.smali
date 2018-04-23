.class public final enum Lcom/amazonaws/metrics/AwsSdkMetrics;
.super Ljava/lang/Enum;
.source "AwsSdkMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/metrics/AwsSdkMetrics;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/metrics/AwsSdkMetrics;

.field public static final AWS_CREDENTAIL_PROPERTIES_FILE:Ljava/lang/String; = "credentialFile"

.field public static final CLOUDWATCH_REGION:Ljava/lang/String; = "cloudwatchRegion"

.field private static final DEFAULT_METRICS_ENABLED:Z

.field private static final DEFAULT_METRIC_COLLECTOR_FACTORY:Ljava/lang/String; = "com.amazonaws.metrics.internal.cloudwatch.DefaultMetricCollectorFactory"

.field public static final DEFAULT_METRIC_NAMESPACE:Ljava/lang/String; = "AWSSDK/Java"

.field public static final EXCLUDE_MACHINE_METRICS:Ljava/lang/String; = "excludeMachineMetrics"

.field public static final HOST_METRIC_NAME:Ljava/lang/String; = "hostMetricName"

.field public static final INCLUDE_PER_HOST_METRICS:Ljava/lang/String; = "includePerHostMetrics"

.field public static final JVM_METRIC_NAME:Ljava/lang/String; = "jvmMetricName"

.field private static final MBEAN_OBJECT_NAME:Ljava/lang/String;

.field public static final METRIC_NAME_SPACE:Ljava/lang/String; = "metricNameSpace"

.field public static final METRIC_QUEUE_SIZE:Ljava/lang/String; = "metricQueueSize"

.field public static final QUEUE_POLL_TIMEOUT_MILLI:Ljava/lang/String; = "getQueuePollTimeoutMilli"

.field private static final QUEUE_POLL_TIMEOUT_MILLI_MINUMUM:I = 0x3e8

.field private static final REGISTRY:Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;

.field public static final USE_SINGLE_METRIC_NAMESPACE:Ljava/lang/String; = "useSingleMetricNamespace"

.field private static volatile credentialFile:Ljava/lang/String; = null

.field private static volatile credentialProvider:Lcom/amazonaws/auth/AWSCredentialsProvider; = null

.field private static dirtyEnabling:Z = false

.field private static volatile hostMetricName:Ljava/lang/String; = null

.field private static volatile jvmMetricName:Ljava/lang/String; = null

.field private static volatile machineMetricsExcluded:Z = false

.field private static volatile mc:Lcom/amazonaws/metrics/MetricCollector; = null

.field private static volatile metricNameSpace:Ljava/lang/String; = "AWSSDK/Java"

.field private static volatile metricQueueSize:Ljava/lang/Integer;

.field private static volatile perHostMetricsIncluded:Z

.field private static volatile queuePollTimeoutMilli:Ljava/lang/Long;

.field private static volatile region:Lcom/amazonaws/regions/Regions;

.field private static volatile singleMetricNamespace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x0

    .line 70
    new-array v1, v0, [Lcom/amazonaws/metrics/AwsSdkMetrics;

    sput-object v1, Lcom/amazonaws/metrics/AwsSdkMetrics;->$VALUES:[Lcom/amazonaws/metrics/AwsSdkMetrics;

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.amazonaws.management:type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/amazonaws/metrics/AwsSdkMetrics;

    .line 80
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazonaws/metrics/AwsSdkMetrics;->MBEAN_OBJECT_NAME:Ljava/lang/String;

    const-string v1, "com.amazonaws.sdk.enableDefaultMetrics"

    .line 243
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    .line 244
    :goto_0
    sput-boolean v3, Lcom/amazonaws/metrics/AwsSdkMetrics;->DEFAULT_METRICS_ENABLED:Z

    .line 245
    sget-boolean v3, Lcom/amazonaws/metrics/AwsSdkMetrics;->DEFAULT_METRICS_ENABLED:Z

    if-eqz v3, :cond_f

    const-string v3, ","

    .line 246
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 250
    array-length v3, v1

    move v4, v0

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_1
    if-ge v4, v3, :cond_e

    aget-object v8, v1, v4

    .line 251
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    if-nez v5, :cond_1

    const-string v9, "excludeMachineMetrics"

    .line 252
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v5, v2

    goto/16 :goto_2

    :cond_1
    if-nez v6, :cond_2

    const-string v9, "includePerHostMetrics"

    .line 254
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v6, v2

    goto/16 :goto_2

    :cond_2
    if-nez v7, :cond_3

    const-string v9, "useSingleMetricNamespace"

    .line 256
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v7, v2

    goto/16 :goto_2

    :cond_3
    const-string v9, "="

    .line 259
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 260
    array-length v10, v9

    const/4 v11, 0x2

    if-ne v10, v11, :cond_d

    .line 261
    aget-object v10, v9, v0

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 262
    aget-object v9, v9, v2

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    :try_start_0
    const-string v11, "credentialFile"

    .line 264
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 265
    invoke-static {v9}, Lcom/amazonaws/metrics/AwsSdkMetrics;->setCredentialFile0(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    const-string v11, "cloudwatchRegion"

    .line 266
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 267
    invoke-static {v9}, Lcom/amazonaws/regions/Regions;->fromName(Ljava/lang/String;)Lcom/amazonaws/regions/Regions;

    move-result-object v8

    sput-object v8, Lcom/amazonaws/metrics/AwsSdkMetrics;->region:Lcom/amazonaws/regions/Regions;

    goto/16 :goto_2

    :cond_5
    const-string v11, "metricQueueSize"

    .line 268
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 269
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ge v9, v2, :cond_6

    .line 271
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "metricQueueSize must be at least 1"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 273
    :cond_6
    sput-object v8, Lcom/amazonaws/metrics/AwsSdkMetrics;->metricQueueSize:Ljava/lang/Integer;

    goto :goto_2

    :cond_7
    const-string v11, "getQueuePollTimeoutMilli"

    .line 274
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 275
    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, v9}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v8}, Ljava/lang/Long;->intValue()I

    move-result v9

    const/16 v10, 0x3e8

    if-ge v9, v10, :cond_8

    .line 277
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "getQueuePollTimeoutMilli must be at least 1000"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 279
    :cond_8
    sput-object v8, Lcom/amazonaws/metrics/AwsSdkMetrics;->queuePollTimeoutMilli:Ljava/lang/Long;

    goto :goto_2

    :cond_9
    const-string v11, "metricNameSpace"

    .line 280
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 281
    sput-object v9, Lcom/amazonaws/metrics/AwsSdkMetrics;->metricNameSpace:Ljava/lang/String;

    goto :goto_2

    :cond_a
    const-string v11, "jvmMetricName"

    .line 282
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 283
    sput-object v9, Lcom/amazonaws/metrics/AwsSdkMetrics;->jvmMetricName:Ljava/lang/String;

    goto :goto_2

    :cond_b
    const-string v11, "hostMetricName"

    .line 284
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 285
    sput-object v9, Lcom/amazonaws/metrics/AwsSdkMetrics;->hostMetricName:Ljava/lang/String;

    goto :goto_2

    .line 287
    :cond_c
    const-class v9, Lcom/amazonaws/metrics/AwsSdkMetrics;

    invoke-static {v9}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring unrecognized parameter: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v8

    .line 291
    const-class v9, Lcom/amazonaws/metrics/AwsSdkMetrics;

    invoke-static {v9}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v9

    const-string v10, "Ignoring failure"

    invoke-interface {v9, v10, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_d
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 296
    :cond_e
    sput-boolean v5, Lcom/amazonaws/metrics/AwsSdkMetrics;->machineMetricsExcluded:Z

    .line 297
    sput-boolean v6, Lcom/amazonaws/metrics/AwsSdkMetrics;->perHostMetricsIncluded:Z

    .line 298
    sput-boolean v7, Lcom/amazonaws/metrics/AwsSdkMetrics;->singleMetricNamespace:Z

    .line 302
    :cond_f
    new-instance v0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;

    invoke-direct {v0}, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;-><init>()V

    sput-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->REGISTRY:Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static add(Lcom/amazonaws/metrics/MetricType;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 520
    :cond_0
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->REGISTRY:Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;

    invoke-virtual {v0, p0}, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->addMetricType(Lcom/amazonaws/metrics/MetricType;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/amazonaws/metrics/MetricType;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 532
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->REGISTRY:Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;

    .line 534
    invoke-virtual {v0, p0}, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->addMetricTypes(Ljava/util/Collection;)Z

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static disableMetrics()V
    .locals 1

    .line 509
    sget-object v0, Lcom/amazonaws/metrics/MetricCollector;->NONE:Lcom/amazonaws/metrics/MetricCollector;

    invoke-static {v0}, Lcom/amazonaws/metrics/AwsSdkMetrics;->setMetricCollector(Lcom/amazonaws/metrics/MetricCollector;)V

    return-void
.end method

.method public static declared-synchronized enableDefaultMetrics()Z
    .locals 5

    const-class v0, Lcom/amazonaws/metrics/AwsSdkMetrics;

    monitor-enter v0

    .line 482
    :try_start_0
    sget-object v1, Lcom/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazonaws/metrics/MetricCollector;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazonaws/metrics/MetricCollector;

    invoke-virtual {v1}, Lcom/amazonaws/metrics/MetricCollector;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 483
    :cond_0
    sget-boolean v1, Lcom/amazonaws/metrics/AwsSdkMetrics;->dirtyEnabling:Z

    if-eqz v1, :cond_1

    .line 484
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Reentrancy is not allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v1, 0x1

    .line 486
    sput-boolean v1, Lcom/amazonaws/metrics/AwsSdkMetrics;->dirtyEnabling:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "com.amazonaws.metrics.internal.cloudwatch.DefaultMetricCollectorFactory"

    .line 488
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 489
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/metrics/MetricCollector$Factory;

    .line 490
    invoke-interface {v3}, Lcom/amazonaws/metrics/MetricCollector$Factory;->getInstance()Lcom/amazonaws/metrics/MetricCollector;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 492
    invoke-static {v3}, Lcom/amazonaws/metrics/AwsSdkMetrics;->setMetricCollector(Lcom/amazonaws/metrics/MetricCollector;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    :try_start_2
    sput-boolean v2, Lcom/amazonaws/metrics/AwsSdkMetrics;->dirtyEnabling:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 493
    monitor-exit v0

    return v1

    .line 499
    :cond_2
    :goto_0
    :try_start_3
    sput-boolean v2, Lcom/amazonaws/metrics/AwsSdkMetrics;->dirtyEnabling:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 496
    :try_start_4
    const-class v3, Lcom/amazonaws/metrics/AwsSdkMetrics;

    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v3

    const-string v4, "Failed to enable the default metrics"

    .line 497
    invoke-interface {v3, v4, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 502
    :cond_3
    :goto_1
    monitor-exit v0

    return v2

    .line 499
    :goto_2
    :try_start_5
    sput-boolean v2, Lcom/amazonaws/metrics/AwsSdkMetrics;->dirtyEnabling:Z

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    .line 481
    monitor-exit v0

    throw v1
.end method

.method public static getCredentailFile()Ljava/lang/String;
    .locals 1

    .line 619
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->credentialFile:Ljava/lang/String;

    return-object v0
.end method

.method public static getCredentialProvider()Lcom/amazonaws/auth/AWSCredentialsProvider;
    .locals 4

    .line 574
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    .line 575
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 576
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.amazonaws.metrics.internal.cloudwatch.DefaultMetricCollectorFactory"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 577
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->credentialProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 580
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    .line 581
    const-class v1, Lcom/amazonaws/metrics/AwsSdkMetrics;

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    const-string v2, "Illegal attempt to access the credential provider"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 583
    throw v0
.end method

.method public static getHostMetricName()Ljava/lang/String;
    .locals 1

    .line 736
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->hostMetricName:Ljava/lang/String;

    return-object v0
.end method

.method static getInternalMetricCollector()Lcom/amazonaws/metrics/MetricCollector;
    .locals 1

    .line 348
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazonaws/metrics/MetricCollector;

    return-object v0
.end method

.method public static getJvmMetricName()Ljava/lang/String;
    .locals 1

    .line 716
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->jvmMetricName:Ljava/lang/String;

    return-object v0
.end method

.method public static getMetricCollector()Lcom/amazonaws/metrics/MetricCollector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/metrics/MetricCollector;",
            ">()TT;"
        }
    .end annotation

    .line 356
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazonaws/metrics/MetricCollector;

    if-nez v0, :cond_0

    .line 357
    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->isDefaultMetricsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->enableDefaultMetrics()Z

    .line 361
    :cond_0
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazonaws/metrics/MetricCollector;

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazonaws/metrics/MetricCollector;->NONE:Lcom/amazonaws/metrics/MetricCollector;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazonaws/metrics/MetricCollector;

    :goto_0
    return-object v0
.end method

.method public static getMetricNameSpace()Ljava/lang/String;
    .locals 1

    .line 694
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->metricNameSpace:Ljava/lang/String;

    return-object v0
.end method

.method public static getMetricQueueSize()Ljava/lang/Integer;
    .locals 1

    .line 660
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->metricQueueSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public static getPredefinedMetrics()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazonaws/metrics/MetricType;",
            ">;"
        }
    .end annotation

    .line 562
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->REGISTRY:Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;

    invoke-virtual {v0}, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->predefinedMetrics()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getQueuePollTimeoutMilli()Ljava/lang/Long;
    .locals 1

    .line 678
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->queuePollTimeoutMilli:Ljava/lang/Long;

    return-object v0
.end method

.method public static getRegion()Lcom/amazonaws/regions/Regions;
    .locals 1

    .line 603
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->region:Lcom/amazonaws/regions/Regions;

    return-object v0
.end method

.method public static getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/metrics/RequestMetricCollector;",
            ">()TT;"
        }
    .end annotation

    .line 320
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazonaws/metrics/MetricCollector;

    if-nez v0, :cond_0

    .line 321
    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->isDefaultMetricsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->enableDefaultMetrics()Z

    .line 325
    :cond_0
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazonaws/metrics/MetricCollector;

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazonaws/metrics/RequestMetricCollector;->NONE:Lcom/amazonaws/metrics/RequestMetricCollector;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazonaws/metrics/MetricCollector;

    invoke-virtual {v0}, Lcom/amazonaws/metrics/MetricCollector;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getServiceMetricCollector()Lcom/amazonaws/metrics/ServiceMetricCollector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/metrics/ServiceMetricCollector;",
            ">()TT;"
        }
    .end annotation

    .line 334
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazonaws/metrics/MetricCollector;

    if-nez v0, :cond_0

    .line 335
    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->isDefaultMetricsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->enableDefaultMetrics()Z

    .line 339
    :cond_0
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazonaws/metrics/MetricCollector;

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazonaws/metrics/ServiceMetricCollector;->NONE:Lcom/amazonaws/metrics/ServiceMetricCollector;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazonaws/metrics/MetricCollector;

    invoke-virtual {v0}, Lcom/amazonaws/metrics/MetricCollector;->getServiceMetricCollector()Lcom/amazonaws/metrics/ServiceMetricCollector;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static isDefaultMetricsEnabled()Z
    .locals 1

    .line 415
    sget-boolean v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->DEFAULT_METRICS_ENABLED:Z

    return v0
.end method

.method public static isMachineMetricExcluded()Z
    .locals 1

    .line 453
    sget-boolean v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->machineMetricsExcluded:Z

    return v0
.end method

.method public static isMetricsEnabled()Z
    .locals 1

    .line 445
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazonaws/metrics/MetricCollector;

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {v0}, Lcom/amazonaws/metrics/MetricCollector;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPerHostMetricEnabled()Z
    .locals 2

    .line 467
    sget-boolean v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->perHostMetricsIncluded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 469
    :cond_0
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->hostMetricName:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 470
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 471
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static isPerHostMetricIncluded()Z
    .locals 1

    .line 460
    sget-boolean v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->perHostMetricsIncluded:Z

    return v0
.end method

.method public static isSingleMetricNamespace()Z
    .locals 1

    .line 424
    sget-boolean v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->singleMetricNamespace:Z

    return v0
.end method

.method public static remove(Lcom/amazonaws/metrics/MetricType;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 555
    :cond_0
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->REGISTRY:Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;

    invoke-virtual {v0, p0}, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->removeMetricType(Lcom/amazonaws/metrics/MetricType;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static set(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/amazonaws/metrics/MetricType;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 544
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->REGISTRY:Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;

    invoke-virtual {v0, p0}, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->setMetricTypes(Ljava/util/Collection;)V

    return-void
.end method

.method public static setCredentialFile(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 630
    invoke-static {p0}, Lcom/amazonaws/metrics/AwsSdkMetrics;->setCredentialFile0(Ljava/lang/String;)V

    return-void
.end method

.method private static setCredentialFile0(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 638
    new-instance v0, Lcom/amazonaws/auth/PropertiesCredentials;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/amazonaws/auth/PropertiesCredentials;-><init>(Ljava/io/File;)V

    .line 640
    const-class v1, Lcom/amazonaws/metrics/AwsSdkMetrics;

    monitor-enter v1

    .line 641
    :try_start_0
    new-instance v2, Lcom/amazonaws/metrics/AwsSdkMetrics$1;

    invoke-direct {v2, v0}, Lcom/amazonaws/metrics/AwsSdkMetrics$1;-><init>(Lcom/amazonaws/auth/PropertiesCredentials;)V

    sput-object v2, Lcom/amazonaws/metrics/AwsSdkMetrics;->credentialProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 651
    sput-object p0, Lcom/amazonaws/metrics/AwsSdkMetrics;->credentialFile:Ljava/lang/String;

    .line 652
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static declared-synchronized setCredentialProvider(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1

    const-class v0, Lcom/amazonaws/metrics/AwsSdkMetrics;

    monitor-enter v0

    .line 595
    :try_start_0
    sput-object p0, Lcom/amazonaws/metrics/AwsSdkMetrics;->credentialProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 594
    monitor-exit v0

    throw p0
.end method

.method public static setHostMetricName(Ljava/lang/String;)V
    .locals 0

    .line 747
    sput-object p0, Lcom/amazonaws/metrics/AwsSdkMetrics;->hostMetricName:Ljava/lang/String;

    return-void
.end method

.method public static setJvmMetricName(Ljava/lang/String;)V
    .locals 0

    .line 727
    sput-object p0, Lcom/amazonaws/metrics/AwsSdkMetrics;->jvmMetricName:Ljava/lang/String;

    return-void
.end method

.method public static setMachineMetricsExcluded(Z)V
    .locals 0

    .line 396
    sput-boolean p0, Lcom/amazonaws/metrics/AwsSdkMetrics;->machineMetricsExcluded:Z

    return-void
.end method

.method public static declared-synchronized setMetricCollector(Lcom/amazonaws/metrics/MetricCollector;)V
    .locals 2

    const-class v0, Lcom/amazonaws/metrics/AwsSdkMetrics;

    monitor-enter v0

    .line 382
    :try_start_0
    sget-object v1, Lcom/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazonaws/metrics/MetricCollector;

    .line 383
    sput-object p0, Lcom/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazonaws/metrics/MetricCollector;

    if-eqz v1, :cond_0

    .line 385
    invoke-virtual {v1}, Lcom/amazonaws/metrics/MetricCollector;->stop()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 381
    monitor-exit v0

    throw p0
.end method

.method public static setMetricNameSpace(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 706
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 708
    :cond_0
    sput-object p0, Lcom/amazonaws/metrics/AwsSdkMetrics;->metricNameSpace:Ljava/lang/String;

    return-void

    .line 707
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static setMetricQueueSize(Ljava/lang/Integer;)V
    .locals 0

    .line 669
    sput-object p0, Lcom/amazonaws/metrics/AwsSdkMetrics;->metricQueueSize:Ljava/lang/Integer;

    return-void
.end method

.method public static setPerHostMetricsIncluded(Z)V
    .locals 0

    .line 406
    sput-boolean p0, Lcom/amazonaws/metrics/AwsSdkMetrics;->perHostMetricsIncluded:Z

    return-void
.end method

.method public static setQueuePollTimeoutMilli(Ljava/lang/Long;)V
    .locals 0

    .line 687
    sput-object p0, Lcom/amazonaws/metrics/AwsSdkMetrics;->queuePollTimeoutMilli:Ljava/lang/Long;

    return-void
.end method

.method public static setRegion(Lcom/amazonaws/regions/Regions;)V
    .locals 0

    .line 612
    sput-object p0, Lcom/amazonaws/metrics/AwsSdkMetrics;->region:Lcom/amazonaws/regions/Regions;

    return-void
.end method

.method public static setSingleMetricNamespace(Z)V
    .locals 0

    .line 436
    sput-boolean p0, Lcom/amazonaws/metrics/AwsSdkMetrics;->singleMetricNamespace:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/metrics/AwsSdkMetrics;
    .locals 1

    .line 70
    const-class v0, Lcom/amazonaws/metrics/AwsSdkMetrics;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/metrics/AwsSdkMetrics;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/metrics/AwsSdkMetrics;
    .locals 1

    .line 70
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->$VALUES:[Lcom/amazonaws/metrics/AwsSdkMetrics;

    invoke-virtual {v0}, [Lcom/amazonaws/metrics/AwsSdkMetrics;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/metrics/AwsSdkMetrics;

    return-object v0
.end method
