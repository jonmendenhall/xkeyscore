.class public Lcom/amazonaws/services/s3/model/HeadBucketRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "HeadBucketRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/HeadBucketRequest;->bucketName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/HeadBucketRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/HeadBucketRequest;->bucketName:Ljava/lang/String;

    return-void
.end method
