.class public Lcom/amazonaws/services/s3/model/analytics/AnalyticsAndOperator;
.super Lcom/amazonaws/services/s3/model/analytics/AnalyticsNAryOperator;
.source "AnalyticsAndOperator.java"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsNAryOperator;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/amazonaws/services/s3/model/analytics/AnalyticsPredicateVisitor;)V
    .locals 0

    .line 37
    invoke-interface {p1, p0}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsPredicateVisitor;->visit(Lcom/amazonaws/services/s3/model/analytics/AnalyticsAndOperator;)V

    return-void
.end method

.method public bridge synthetic getOperands()Ljava/util/List;
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsNAryOperator;->getOperands()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
