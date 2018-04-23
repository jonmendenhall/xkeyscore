.class public Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;
.super Ljava/lang/Object;
.source "MetricsFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private predicate:Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;->predicate:Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;

    return-void
.end method


# virtual methods
.method public getPredicate()Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;->predicate:Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;

    return-object v0
.end method

.method public setPredicate(Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;->predicate:Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;

    return-void
.end method

.method public withPredicate(Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;)Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;->setPredicate(Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;)V

    return-object p0
.end method
