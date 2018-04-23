.class public Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;
.super Lcom/amazonaws/services/s3/model/AmazonS3Exception;
.source "MultiObjectDeleteException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1bd0659b6702d912L


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

.field private final errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;",
            ">;)V"
        }
    .end annotation

    const-string v0, "One or more objects could not be deleted"

    .line 38
    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;-><init>(Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;->errors:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;->deletedObjects:Ljava/util/List;

    .line 39
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;->deletedObjects:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;->errors:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

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

    .line 60
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;->deletedObjects:Ljava/util/List;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getErrorCode()Ljava/lang/String;

    move-result-object v0

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

    .line 67
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;->errors:Ljava/util/List;

    return-object v0
.end method
