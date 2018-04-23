.class public Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;
.super Ljava/lang/Object;
.source "AnalyticsFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private predicate:Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;->predicate:Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;

    return-void
.end method


# virtual methods
.method public getPredicate()Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;->predicate:Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;

    return-object v0
.end method

.method public setPredicate(Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;->predicate:Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;

    return-void
.end method

.method public withPredicate(Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;)Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;->setPredicate(Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;)V

    return-object p0
.end method
