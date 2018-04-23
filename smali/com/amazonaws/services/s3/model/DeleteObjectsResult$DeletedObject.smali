.class public Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;
.super Ljava/lang/Object;
.source "DeleteObjectsResult.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/DeleteObjectsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeletedObject"
.end annotation


# instance fields
.field private deleteMarker:Z

.field private deleteMarkerVersionId:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeleteMarkerVersionId()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->deleteMarkerVersionId:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public isDeleteMarker()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->deleteMarker:Z

    return v0
.end method

.method public setDeleteMarker(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->deleteMarker:Z

    return-void
.end method

.method public setDeleteMarkerVersionId(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->deleteMarkerVersionId:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->key:Ljava/lang/String;

    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->versionId:Ljava/lang/String;

    return-void
.end method
