.class public final Lcom/amazonaws/services/s3/model/metrics/MetricsTagPredicate;
.super Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;
.source "MetricsTagPredicate.java"


# instance fields
.field private final tag:Lcom/amazonaws/services/s3/model/Tag;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/Tag;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/metrics/MetricsTagPredicate;->tag:Lcom/amazonaws/services/s3/model/Tag;

    return-void
.end method


# virtual methods
.method public accept(Lcom/amazonaws/services/s3/model/metrics/MetricsPredicateVisitor;)V
    .locals 0

    .line 41
    invoke-interface {p1, p0}, Lcom/amazonaws/services/s3/model/metrics/MetricsPredicateVisitor;->visit(Lcom/amazonaws/services/s3/model/metrics/MetricsTagPredicate;)V

    return-void
.end method

.method public getTag()Lcom/amazonaws/services/s3/model/Tag;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/metrics/MetricsTagPredicate;->tag:Lcom/amazonaws/services/s3/model/Tag;

    return-object v0
.end method
