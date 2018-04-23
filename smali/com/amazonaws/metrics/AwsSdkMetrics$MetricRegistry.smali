.class Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;
.super Ljava/lang/Object;
.source "AwsSdkMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/metrics/AwsSdkMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MetricRegistry"
.end annotation


# instance fields
.field private final metricTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazonaws/metrics/MetricType;",
            ">;"
        }
    .end annotation
.end field

.field private volatile readOnly:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazonaws/metrics/MetricType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    .line 759
    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 760
    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->Exception:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 761
    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->HttpClientRetryCount:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 762
    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->HttpRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 763
    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestCount:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 766
    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RetryCount:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 767
    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->HttpClientSendRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 768
    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->HttpClientReceiveResponseTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 769
    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->HttpClientPoolAvailableCount:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 770
    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->HttpClientPoolLeasedCount:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 771
    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->HttpClientPoolPendingCount:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 772
    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    sget-object v1, Lcom/amazonaws/util/AWSServiceMetrics;->HttpClientGetConnectionTime:Lcom/amazonaws/util/AWSServiceMetrics;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 773
    invoke-direct {p0}, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->syncReadOnly()V

    return-void
.end method

.method private syncReadOnly()V
    .locals 2

    .line 777
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->readOnly:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addMetricType(Lcom/amazonaws/metrics/MetricType;)Z
    .locals 2

    .line 781
    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    monitor-enter v0

    .line 782
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 784
    invoke-direct {p0}, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->syncReadOnly()V

    .line 785
    :cond_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 786
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addMetricTypes(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/amazonaws/metrics/MetricType;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)Z"
        }
    .end annotation

    .line 790
    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    monitor-enter v0

    .line 791
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 793
    invoke-direct {p0}, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->syncReadOnly()V

    .line 794
    :cond_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 795
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public predefinedMetrics()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazonaws/metrics/MetricType;",
            ">;"
        }
    .end annotation

    .line 823
    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->readOnly:Ljava/util/Set;

    return-object v0
.end method

.method public removeMetricType(Lcom/amazonaws/metrics/MetricType;)Z
    .locals 2

    .line 814
    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    monitor-enter v0

    .line 815
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 817
    invoke-direct {p0}, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->syncReadOnly()V

    .line 818
    :cond_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 819
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMetricTypes(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/amazonaws/metrics/MetricType;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 799
    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 800
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 801
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 802
    monitor-exit v0

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 804
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 806
    :cond_2
    iget-object v1, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 807
    invoke-virtual {p0, p1}, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->addMetricTypes(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 808
    invoke-direct {p0}, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->syncReadOnly()V

    .line 810
    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
