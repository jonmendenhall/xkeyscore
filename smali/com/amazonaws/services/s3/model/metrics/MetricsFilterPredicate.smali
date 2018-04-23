.class public abstract Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;
.super Ljava/lang/Object;
.source "MetricsFilterPredicate.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract accept(Lcom/amazonaws/services/s3/model/metrics/MetricsPredicateVisitor;)V
.end method
