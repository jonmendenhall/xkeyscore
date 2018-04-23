.class public Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetBucketWebsiteConfigurationRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;->bucketName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;->setBucketName(Ljava/lang/String;)V

    return-object p0
.end method
