.class public Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
.super Ljava/lang/Object;
.source "BucketLifecycleConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rule"
.end annotation


# instance fields
.field private abortIncompleteMultipartUpload:Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

.field private expirationDate:Ljava/util/Date;

.field private expirationInDays:I

.field private expiredObjectDeleteMarker:Z

.field private filter:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

.field private id:Ljava/lang/String;

.field private noncurrentVersionExpirationInDays:I

.field private noncurrentVersionTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;",
            ">;"
        }
    .end annotation
.end field

.field private prefix:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private transitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 105
    iput v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->expirationInDays:I

    const/4 v1, 0x0

    .line 107
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->expiredObjectDeleteMarker:Z

    .line 113
    iput v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->noncurrentVersionExpirationInDays:I

    return-void
.end method


# virtual methods
.method public addNoncurrentVersionTransition(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .locals 1

    if-nez p1, :cond_0

    .line 476
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "NoncurrentVersionTransition cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->noncurrentVersionTransitions:Ljava/util/List;

    if-nez v0, :cond_1

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->noncurrentVersionTransitions:Ljava/util/List;

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->noncurrentVersionTransitions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTransition(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .locals 1

    if-nez p1, :cond_0

    .line 432
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Transition cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->transitions:Ljava/util/List;

    if-nez v0, :cond_1

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->transitions:Ljava/util/List;

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->transitions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getAbortIncompleteMultipartUpload()Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->abortIncompleteMultipartUpload:Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

    return-object v0
.end method

.method public getExpirationDate()Ljava/util/Date;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->expirationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getExpirationInDays()I
    .locals 1

    .line 222
    iget v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->expirationInDays:I

    return v0
.end method

.method public getFilter()Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->filter:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNoncurrentVersionExpirationInDays()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->noncurrentVersionExpirationInDays:I

    return v0
.end method

.method public getNoncurrentVersionTransition()Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 378
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getNoncurrentVersionTransitions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 380
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNoncurrentVersionTransitions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;",
            ">;"
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->noncurrentVersionTransitions:Ljava/util/List;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTransition()Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 333
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getTransitions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 335
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTransitions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;",
            ">;"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->transitions:Ljava/util/List;

    return-object v0
.end method

.method public isExpiredObjectDeleteMarker()Z
    .locals 1

    .line 520
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->expiredObjectDeleteMarker:Z

    return v0
.end method

.method public setAbortIncompleteMultipartUpload(Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->abortIncompleteMultipartUpload:Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

    return-void
.end method

.method public setExpirationDate(Ljava/util/Date;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->expirationDate:Ljava/util/Date;

    return-void
.end method

.method public setExpirationInDays(I)V
    .locals 0

    .line 162
    iput p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->expirationInDays:I

    return-void
.end method

.method public setExpiredObjectDeleteMarker(Z)V
    .locals 0

    .line 532
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->expiredObjectDeleteMarker:Z

    return-void
.end method

.method public setFilter(Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->filter:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->id:Ljava/lang/String;

    return-void
.end method

.method public setNoncurrentVersionExpirationInDays(I)V
    .locals 0

    .line 170
    iput p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->noncurrentVersionExpirationInDays:I

    return-void
.end method

.method public setNoncurrentVersionTransition(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 365
    new-array v0, v0, [Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 366
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 365
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setNoncurrentVersionTransitions(Ljava/util/List;)V

    return-void
.end method

.method public setNoncurrentVersionTransitions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;",
            ">;)V"
        }
    .end annotation

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->noncurrentVersionTransitions:Ljava/util/List;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->status:Ljava/lang/String;

    return-void
.end method

.method public setTransition(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 321
    new-array v0, v0, [Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setTransitions(Ljava/util/List;)V

    return-void
.end method

.method public setTransitions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->transitions:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public withAbortIncompleteMultipartUpload(Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .locals 0

    .line 498
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setAbortIncompleteMultipartUpload(Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;)V

    return-object p0
.end method

.method public withExpirationDate(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->expirationDate:Ljava/util/Date;

    return-object p0
.end method

.method public withExpirationInDays(I)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .locals 0

    .line 233
    iput p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->expirationInDays:I

    return-object p0
.end method

.method public withExpiredObjectDeleteMarker(Z)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .locals 0

    .line 543
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->expiredObjectDeleteMarker:Z

    return-object p0
.end method

.method public withFilter(Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .locals 0

    .line 575
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setFilter(Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;)V

    return-object p0
.end method

.method public withId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->id:Ljava/lang/String;

    return-object p0
.end method

.method public withNoncurrentVersionExpirationInDays(I)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .locals 0

    .line 252
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setNoncurrentVersionExpirationInDays(I)V

    return-object p0
.end method

.method public withNoncurrentVersionTransition(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 396
    new-array v0, v0, [Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 397
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 396
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setNoncurrentVersionTransitions(Ljava/util/List;)V

    return-object p0
.end method

.method public withNoncurrentVersionTransitions(Ljava/util/List;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;"
        }
    .end annotation

    .line 466
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setNoncurrentVersionTransitions(Ljava/util/List;)V

    return-object p0
.end method

.method public withPrefix(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method public withStatus(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .locals 0

    .line 285
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setStatus(Ljava/lang/String;)V

    return-object p0
.end method

.method public withTransition(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 349
    new-array v0, v0, [Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setTransitions(Ljava/util/List;)V

    return-object p0
.end method

.method public withTransitions(Ljava/util/List;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;"
        }
    .end annotation

    .line 423
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setTransitions(Ljava/util/List;)V

    return-object p0
.end method
