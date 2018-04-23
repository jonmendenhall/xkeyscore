.class public Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;
.super Lcom/amazonaws/metrics/SimpleMetricType;
.source "S3ServiceMetric.java"

# interfaces
.implements Lcom/amazonaws/metrics/ServiceMetricType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;
    }
.end annotation


# static fields
.field public static final S3_DOWLOAD_THROUGHPUT:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

.field public static final S3_DOWNLOAD_BYTE_COUNT:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

.field public static final S3_UPLOAD_BYTE_COUNT:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

.field public static final S3_UPLOAD_THROUGHPUT:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

.field static final SERVICE_NAME_PREFIX:Ljava/lang/String; = "S3"

.field private static final VALUES:[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    new-instance v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$1;

    const-string v1, "DownloadThroughput"

    .line 45
    invoke-static {v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->metricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->S3_DOWLOAD_THROUGHPUT:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

    .line 55
    new-instance v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    const-string v1, "DownloadByteCount"

    .line 56
    invoke-static {v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->metricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->S3_DOWNLOAD_BYTE_COUNT:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    .line 61
    new-instance v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$2;

    const-string v1, "UploadThroughput"

    .line 62
    invoke-static {v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->metricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->S3_UPLOAD_THROUGHPUT:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

    .line 72
    new-instance v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    const-string v1, "UploadByteCount"

    .line 73
    invoke-static {v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->metricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->S3_UPLOAD_BYTE_COUNT:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    const/4 v0, 0x4

    .line 75
    new-array v0, v0, [Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    sget-object v1, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->S3_DOWLOAD_THROUGHPUT:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->S3_DOWNLOAD_BYTE_COUNT:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->S3_UPLOAD_THROUGHPUT:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->S3_UPLOAD_BYTE_COUNT:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->VALUES:[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/amazonaws/metrics/SimpleMetricType;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->name:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static final metricName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;
    .locals 5

    .line 117
    invoke-static {}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->values()[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 118
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No S3ServiceMetric defined for the name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static values()[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;
    .locals 1

    .line 109
    sget-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->VALUES:[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    return-object v0
.end method


# virtual methods
.method public getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "Amazon S3"

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->name:Ljava/lang/String;

    return-object v0
.end method
