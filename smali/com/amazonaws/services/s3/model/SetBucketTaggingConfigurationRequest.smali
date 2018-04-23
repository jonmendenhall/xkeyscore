.class public Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetBucketTaggingConfigurationRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private taggingConfiguration:Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;->bucketName:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;->taggingConfiguration:Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getTaggingConfiguration()Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;->taggingConfiguration:Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setTaggingConfiguration(Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;->taggingConfiguration:Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;

    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;->setBucketName(Ljava/lang/String;)V

    return-object p0
.end method

.method public withTaggingConfiguration(Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;)Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;->setTaggingConfiguration(Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;)V

    return-object p0
.end method
