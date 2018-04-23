.class public Lcom/amazonaws/services/s3/model/S3KeyFilter;
.super Ljava/lang/Object;
.source "S3KeyFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;
    }
.end annotation


# instance fields
.field private filterRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/FilterRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/S3KeyFilter;->filterRules:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addFilterRule(Lcom/amazonaws/services/s3/model/FilterRule;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3KeyFilter;->filterRules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getFilterRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/FilterRule;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3KeyFilter;->filterRules:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setFilterRules(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/FilterRule;",
            ">;)V"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/S3KeyFilter;->filterRules:Ljava/util/List;

    return-void
.end method

.method public withFilterRules(Ljava/util/List;)Lcom/amazonaws/services/s3/model/S3KeyFilter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/FilterRule;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/S3KeyFilter;"
        }
    .end annotation

    .line 97
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/S3KeyFilter;->setFilterRules(Ljava/util/List;)V

    return-object p0
.end method

.method public varargs withFilterRules([Lcom/amazonaws/services/s3/model/FilterRule;)Lcom/amazonaws/services/s3/model/S3KeyFilter;
    .locals 0

    .line 110
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/S3KeyFilter;->setFilterRules(Ljava/util/List;)V

    return-object p0
.end method
