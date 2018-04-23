.class public Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;
.super Ljava/lang/Object;
.source "BucketCrossOriginConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/CORSRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/CORSRule;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;->rules:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/CORSRule;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;->rules:Ljava/util/List;

    return-object v0
.end method

.method public setRules(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/CORSRule;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;->rules:Ljava/util/List;

    return-void
.end method

.method public withRules(Ljava/util/List;)Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/CORSRule;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;"
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;->setRules(Ljava/util/List;)V

    return-object p0
.end method

.method public varargs withRules([Lcom/amazonaws/services/s3/model/CORSRule;)Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;
    .locals 0

    .line 60
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;->setRules(Ljava/util/List;)V

    return-object p0
.end method
