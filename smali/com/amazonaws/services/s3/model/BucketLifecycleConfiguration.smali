.class public Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
.super Ljava/lang/Object;
.source "BucketLifecycleConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;,
        Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;,
        Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    }
.end annotation


# static fields
.field public static final DISABLED:Ljava/lang/String; = "Disabled"

.field public static final ENABLED:Ljava/lang/String; = "Enabled"


# instance fields
.field private rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;->rules:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;->rules:Ljava/util/List;

    return-object v0
.end method

.method public setRules(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;",
            ">;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;->rules:Ljava/util/List;

    return-void
.end method

.method public withRules(Ljava/util/List;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;"
        }
    .end annotation

    .line 66
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;->setRules(Ljava/util/List;)V

    return-object p0
.end method

.method public varargs withRules([Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
    .locals 0

    .line 75
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;->setRules(Ljava/util/List;)V

    return-object p0
.end method
