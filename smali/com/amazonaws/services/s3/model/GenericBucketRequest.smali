.class public Lcom/amazonaws/services/s3/model/GenericBucketRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GenericBucketRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bucketName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GenericBucketRequest;->bucketName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBucket()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GenericBucketRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GenericBucketRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GenericBucketRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GenericBucketRequest;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;->setBucketName(Ljava/lang/String;)V

    return-object p0
.end method
