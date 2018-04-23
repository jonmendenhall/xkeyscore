.class public abstract Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;
.super Ljava/lang/Object;
.source "LifecycleFilterPredicate.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract accept(Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePredicateVisitor;)V
.end method
