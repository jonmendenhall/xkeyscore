.class public Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetBucketAccelerateConfigurationRequest.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/S3AccelerateUnsupported;


# instance fields
.field private accelerateConfiguration:Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;

.field private bucketName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;->bucketName:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;->accelerateConfiguration:Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;

    return-void
.end method


# virtual methods
.method public getAccelerateConfiguration()Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;->accelerateConfiguration:Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public setAccelerateConfiguration(Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;->accelerateConfiguration:Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;

    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public withAccelerateConfiguration(Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;)Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;->setAccelerateConfiguration(Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;)V

    return-object p0
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;->setBucketName(Ljava/lang/String;)V

    return-object p0
.end method
