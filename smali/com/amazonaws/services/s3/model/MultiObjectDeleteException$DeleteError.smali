.class public Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;
.super Ljava/lang/Object;
.source "MultiObjectDeleteException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteError"
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->code:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->key:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->message:Ljava/lang/String;

    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->versionId:Ljava/lang/String;

    return-void
.end method
