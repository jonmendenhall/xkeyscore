.class public Lcom/amazonaws/services/s3/model/DeleteObjectsResult;
.super Ljava/lang/Object;
.source "DeleteObjectsResult.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/amazonaws/services/s3/internal/S3RequesterChargedResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;
    }
.end annotation


# instance fields
.field private final deletedObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;",
            ">;"
        }
    .end annotation
.end field

.field private isRequesterCharged:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/model/DeleteObjectsResult;-><init>(Ljava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;",
            ">;Z)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult;->deletedObjects:Ljava/util/List;

    .line 47
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult;->deletedObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/DeleteObjectsResult;->setRequesterCharged(Z)V

    return-void
.end method


# virtual methods
.method public getDeletedObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult;->deletedObjects:Ljava/util/List;

    return-object v0
.end method

.method public isRequesterCharged()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult;->isRequesterCharged:Z

    return v0
.end method

.method public setRequesterCharged(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult;->isRequesterCharged:Z

    return-void
.end method
