.class public Lcom/amazonaws/metrics/MetricInputStreamEntity;
.super Lorg/apache/http/entity/InputStreamEntity;
.source "MetricInputStreamEntity.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field private final helper:Lcom/amazonaws/metrics/ByteThroughputHelper;


# direct methods
.method public constructor <init>(Lcom/amazonaws/metrics/ThroughputMetricType;Ljava/io/InputStream;J)V
    .locals 0

    .line 44
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 45
    new-instance p2, Lcom/amazonaws/metrics/ByteThroughputHelper;

    invoke-direct {p2, p1}, Lcom/amazonaws/metrics/ByteThroughputHelper;-><init>(Lcom/amazonaws/metrics/ThroughputMetricType;)V

    iput-object p2, p0, Lcom/amazonaws/metrics/MetricInputStreamEntity;->helper:Lcom/amazonaws/metrics/ByteThroughputHelper;

    return-void
.end method

.method private writeToWithMetrics(Ljava/io/OutputStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 70
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Output stream may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/metrics/MetricInputStreamEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/amazonaws/metrics/MetricInputStreamEntity;->getContentLength()J

    move-result-wide v1

    const/16 v3, 0x800

    .line 76
    :try_start_0
    new-array v3, v3, [B

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-gez v6, :cond_1

    .line 80
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-eq v1, v7, :cond_3

    .line 81
    iget-object v2, p0, Lcom/amazonaws/metrics/MetricInputStreamEntity;->helper:Lcom/amazonaws/metrics/ByteThroughputHelper;

    invoke-virtual {v2}, Lcom/amazonaws/metrics/ByteThroughputHelper;->startTiming()J

    move-result-wide v4

    .line 82
    invoke-virtual {p1, v3, v8, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 83
    iget-object v2, p0, Lcom/amazonaws/metrics/MetricInputStreamEntity;->helper:Lcom/amazonaws/metrics/ByteThroughputHelper;

    invoke-virtual {v2, v1, v4, v5}, Lcom/amazonaws/metrics/ByteThroughputHelper;->increment(IJ)V

    goto :goto_0

    :cond_1
    :goto_1
    cmp-long v6, v1, v4

    if-lez v6, :cond_3

    const-wide/16 v9, 0x800

    .line 89
    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v6, v9

    invoke-virtual {v0, v3, v8, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-ne v6, v7, :cond_2

    goto :goto_2

    .line 93
    :cond_2
    iget-object v9, p0, Lcom/amazonaws/metrics/MetricInputStreamEntity;->helper:Lcom/amazonaws/metrics/ByteThroughputHelper;

    invoke-virtual {v9}, Lcom/amazonaws/metrics/ByteThroughputHelper;->startTiming()J

    move-result-wide v9

    .line 94
    invoke-virtual {p1, v3, v8, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 95
    iget-object v11, p0, Lcom/amazonaws/metrics/MetricInputStreamEntity;->helper:Lcom/amazonaws/metrics/ByteThroughputHelper;

    invoke-virtual {v11, v6, v9, v10}, Lcom/amazonaws/metrics/ByteThroughputHelper;->increment(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v9, v6

    sub-long/2addr v1, v9

    goto :goto_1

    .line 100
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/amazonaws/metrics/MetricInputStreamEntity;->helper:Lcom/amazonaws/metrics/ByteThroughputHelper;

    invoke-virtual {p1}, Lcom/amazonaws/metrics/ByteThroughputHelper;->reportMetrics()V

    .line 101
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 100
    iget-object v1, p0, Lcom/amazonaws/metrics/MetricInputStreamEntity;->helper:Lcom/amazonaws/metrics/ByteThroughputHelper;

    invoke-virtual {v1}, Lcom/amazonaws/metrics/ByteThroughputHelper;->reportMetrics()V

    .line 101
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p1
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    instance-of v0, p1, Lcom/amazonaws/internal/MetricAware;

    if-eqz v0, :cond_0

    .line 54
    move-object v0, p1

    check-cast v0, Lcom/amazonaws/internal/MetricAware;

    .line 55
    invoke-interface {v0}, Lcom/amazonaws/internal/MetricAware;->isMetricActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-super {p0, p1}, Lorg/apache/http/entity/InputStreamEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void

    .line 61
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazonaws/metrics/MetricInputStreamEntity;->writeToWithMetrics(Ljava/io/OutputStream;)V

    return-void
.end method
