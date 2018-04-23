.class public Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;
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
    name = "Transition"
.end annotation


# instance fields
.field private date:Ljava/util/Date;

.field private days:I

.field private storageClass:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 591
    iput v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->days:I

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getDays()I
    .locals 1

    .line 613
    iget v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->days:I

    return v0
.end method

.method public getStorageClass()Lcom/amazonaws/services/s3/model/StorageClass;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 655
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->storageClass:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazonaws/services/s3/model/StorageClass;->fromValue(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStorageClassAsString()Ljava/lang/String;
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->storageClass:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0

    .line 690
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->date:Ljava/util/Date;

    return-void
.end method

.method public setDays(I)V
    .locals 0

    .line 606
    iput p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->days:I

    return-void
.end method

.method public setStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 633
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->setStorageClass(Ljava/lang/String;)V

    goto :goto_0

    .line 635
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->setStorageClass(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .locals 0

    .line 643
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->storageClass:Ljava/lang/String;

    return-void
.end method

.method public withDate(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;
    .locals 0

    .line 705
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->date:Ljava/util/Date;

    return-object p0
.end method

.method public withDays(I)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;
    .locals 0

    .line 624
    iput p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->days:I

    return-object p0
.end method

.method public withStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;
    .locals 0

    .line 673
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->setStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)V

    return-object p0
.end method

.method public withStorageClass(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;
    .locals 0

    .line 682
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->setStorageClass(Ljava/lang/String;)V

    return-object p0
.end method
