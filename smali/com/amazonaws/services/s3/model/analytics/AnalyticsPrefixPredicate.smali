.class public final Lcom/amazonaws/services/s3/model/analytics/AnalyticsPrefixPredicate;
.super Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;
.source "AnalyticsPrefixPredicate.java"


# instance fields
.field private final prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsPrefixPredicate;->prefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Lcom/amazonaws/services/s3/model/analytics/AnalyticsPredicateVisitor;)V
    .locals 0

    .line 42
    invoke-interface {p1, p0}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsPredicateVisitor;->visit(Lcom/amazonaws/services/s3/model/analytics/AnalyticsPrefixPredicate;)V

    return-void
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsPrefixPredicate;->prefix:Ljava/lang/String;

    return-object v0
.end method
