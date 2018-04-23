.class public final Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePrefixPredicate;
.super Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;
.source "LifecyclePrefixPredicate.java"


# instance fields
.field private final prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePrefixPredicate;->prefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePredicateVisitor;)V
    .locals 0

    .line 44
    invoke-interface {p1, p0}, Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePredicateVisitor;->visit(Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePrefixPredicate;)V

    return-void
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePrefixPredicate;->prefix:Ljava/lang/String;

    return-object v0
.end method
