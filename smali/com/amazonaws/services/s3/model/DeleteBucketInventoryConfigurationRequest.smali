.class public Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DeleteBucketInventoryConfigurationRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bucketName:Ljava/lang/String;

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;->bucketName:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;->id:Ljava/lang/String;

    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;->setBucketName(Ljava/lang/String;)V

    return-object p0
.end method

.method public withId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;->setId(Ljava/lang/String;)V

    return-object p0
.end method
