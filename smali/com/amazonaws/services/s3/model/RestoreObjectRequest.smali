.class public Lcom/amazonaws/services/s3/model/RestoreObjectRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "RestoreObjectRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private expirationInDays:I

.field private isRequesterPays:Z

.field private key:Ljava/lang/String;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 83
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->bucketName:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->key:Ljava/lang/String;

    .line 102
    iput p3, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->expirationInDays:I

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationInDays()I
    .locals 1

    .line 210
    iget v0, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->expirationInDays:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public isRequesterPays()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->isRequesterPays:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setExpirationInDays(I)V
    .locals 0

    .line 203
    iput p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->expirationInDays:I

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->key:Ljava/lang/String;

    return-void
.end method

.method public setRequesterPays(Z)V
    .locals 0

    .line 260
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->isRequesterPays:Z

    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->versionId:Ljava/lang/String;

    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RestoreObjectRequest;
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public withExpirationInDays(I)Lcom/amazonaws/services/s3/model/RestoreObjectRequest;
    .locals 0

    .line 219
    iput p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->expirationInDays:I

    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RestoreObjectRequest;
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->key:Ljava/lang/String;

    return-object p0
.end method

.method public withRequesterPays(Z)Lcom/amazonaws/services/s3/model/RestoreObjectRequest;
    .locals 0

    .line 284
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->setRequesterPays(Z)V

    return-object p0
.end method

.method public withVersionId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RestoreObjectRequest;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->versionId:Ljava/lang/String;

    return-object p0
.end method
