.class abstract Lcom/amazonaws/services/s3/model/lifecycle/LifecycleNAryOperator;
.super Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;
.source "LifecycleNAryOperator.java"


# instance fields
.field private final operands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleNAryOperator;->operands:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getOperands()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleNAryOperator;->operands:Ljava/util/List;

    return-object v0
.end method
