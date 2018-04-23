.class public Lcom/amazonaws/services/s3/model/SetObjectTaggingResult;
.super Ljava/lang/Object;
.source "SetObjectTaggingResult.java"


# instance fields
.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVersionId()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetObjectTaggingResult;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetObjectTaggingResult;->versionId:Ljava/lang/String;

    return-void
.end method

.method public withVersionId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SetObjectTaggingResult;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetObjectTaggingResult;->setVersionId(Ljava/lang/String;)V

    return-object p0
.end method
