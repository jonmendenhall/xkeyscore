.class public Lcom/amazonaws/services/s3/model/DeleteObjectRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DeleteObjectRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bucketName:Ljava/lang/String;

.field private isRequesterPays:Z

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 68
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->setBucketName(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->setKey(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public isRequesterPays()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->isRequesterPays:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->key:Ljava/lang/String;

    return-void
.end method

.method public setRequesterPays(Z)V
    .locals 0

    .line 191
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->isRequesterPays:Z

    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteObjectRequest;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->setBucketName(Ljava/lang/String;)V

    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteObjectRequest;
    .locals 0

    .line 150
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->setKey(Ljava/lang/String;)V

    return-object p0
.end method

.method public withRequesterPays(Z)Lcom/amazonaws/services/s3/model/DeleteObjectRequest;
    .locals 0

    .line 215
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->setRequesterPays(Z)V

    return-object p0
.end method
