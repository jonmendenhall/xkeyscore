.class public Lcom/amazonaws/services/s3/model/DeleteBucketRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DeleteBucketRequest.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/amazonaws/services/s3/model/S3AccelerateUnsupported;


# instance fields
.field private bucketName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketRequest;->setBucketName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteBucketRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteBucketRequest;->bucketName:Ljava/lang/String;

    return-void
.end method
