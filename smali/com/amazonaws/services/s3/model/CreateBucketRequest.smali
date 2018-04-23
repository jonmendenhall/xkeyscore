.class public Lcom/amazonaws/services/s3/model/CreateBucketRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CreateBucketRequest.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/S3AccelerateUnsupported;


# instance fields
.field private accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

.field private bucketName:Ljava/lang/String;

.field private cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field private region:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 56
    sget-object v0, Lcom/amazonaws/services/s3/model/Region;->US_Standard:Lcom/amazonaws/services/s3/model/Region;

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/Region;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/Region;)V
    .locals 0

    .line 69
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/Region;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 82
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->setBucketName(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->setRegion(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->region:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->region:Ljava/lang/String;

    return-void
.end method

.method public withAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/CreateBucketRequest;
    .locals 0

    .line 187
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->setAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)V

    return-object p0
.end method

.method public withCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/CreateBucketRequest;
    .locals 0

    .line 157
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->setCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V

    return-object p0
.end method
