.class public Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetRequestPaymentConfigurationRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private configuration:Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;->setBucketName(Ljava/lang/String;)V

    .line 35
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;->configuration:Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getConfiguration()Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;->configuration:Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setConfiguration(Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;->configuration:Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;

    return-void
.end method
