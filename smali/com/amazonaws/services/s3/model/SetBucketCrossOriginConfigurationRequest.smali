.class public Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetBucketCrossOriginConfigurationRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private crossOriginConfiguration:Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;->bucketName:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;->crossOriginConfiguration:Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getCrossOriginConfiguration()Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;->crossOriginConfiguration:Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setCrossOriginConfiguration(Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;->crossOriginConfiguration:Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;

    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;->setBucketName(Ljava/lang/String;)V

    return-object p0
.end method

.method public withCrossOriginConfiguration(Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;)Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;->setCrossOriginConfiguration(Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;)V

    return-object p0
.end method
