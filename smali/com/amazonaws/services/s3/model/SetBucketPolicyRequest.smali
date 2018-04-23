.class public Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetBucketPolicyRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private policyText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->bucketName:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->policyText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyText()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->policyText:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setPolicyText(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->policyText:Ljava/lang/String;

    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->setBucketName(Ljava/lang/String;)V

    return-object p0
.end method

.method public withPolicyText(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->setPolicyText(Ljava/lang/String;)V

    return-object p0
.end method
