.class public Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;
.super Ljava/lang/Object;
.source "DeleteObjectsResponse.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/S3RequesterChargedResult;


# instance fields
.field private deletedObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;",
            ">;"
        }
    .end annotation
.end field

.field private errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;",
            ">;"
        }
    .end annotation
.end field

.field private isRequesterCharged:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->deletedObjects:Ljava/util/List;

    .line 61
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->errors:Ljava/util/List;

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

    .line 65
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->deletedObjects:Ljava/util/List;

    return-object v0
.end method

.method public getErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->errors:Ljava/util/List;

    return-object v0
.end method

.method public isRequesterCharged()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->isRequesterCharged:Z

    return v0
.end method

.method public setDeletedObjects(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;",
            ">;)V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->deletedObjects:Ljava/util/List;

    return-void
.end method

.method public setErrors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;",
            ">;)V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->errors:Ljava/util/List;

    return-void
.end method

.method public setRequesterCharged(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->isRequesterCharged:Z

    return-void
.end method
