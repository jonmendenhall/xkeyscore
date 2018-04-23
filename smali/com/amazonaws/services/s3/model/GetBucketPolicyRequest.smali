.class public Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetBucketPolicyRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bucketName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;->bucketName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;->setBucketName(Ljava/lang/String;)V

    return-object p0
.end method
