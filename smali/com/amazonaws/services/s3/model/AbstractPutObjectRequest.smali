.class public abstract Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "AbstractPutObjectRequest.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/SSECustomerKeyProvider;
.implements Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParamsProvider;
.implements Lcom/amazonaws/services/s3/model/S3DataSource;
.implements Ljava/io/Serializable;


# instance fields
.field private accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

.field private bucketName:Ljava/lang/String;

.field private cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field private file:Ljava/io/File;

.field private transient inputStream:Ljava/io/InputStream;

.field private key:Ljava/lang/String;

.field private metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

.field private redirectLocation:Ljava/lang/String;

.field private sseAwsKeyManagementParams:Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

.field private sseCustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

.field private storageClass:Ljava/lang/String;

.field private tagging:Lcom/amazonaws/services/s3/model/ObjectTagging;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->bucketName:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->key:Ljava/lang/String;

    .line 117
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->file:Ljava/io/File;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->bucketName:Ljava/lang/String;

    .line 161
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->key:Ljava/lang/String;

    .line 162
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->inputStream:Ljava/io/InputStream;

    .line 163
    iput-object p4, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->bucketName:Ljava/lang/String;

    .line 133
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->key:Ljava/lang/String;

    .line 134
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->redirectLocation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->clone()Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 1

    .line 809
    invoke-super {p0}, Lcom/amazonaws/AmazonWebServiceRequest;->clone()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->clone()Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object v0

    return-object v0
.end method

.method protected final copyPutObjectBaseTo(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 814
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->copyBaseTo(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 815
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    .line 816
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->withAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    .line 817
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->withCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    .line 818
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->withInputStream(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 819
    :cond_0
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->clone()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->withMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    .line 820
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->withRedirectLocation(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    .line 821
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getStorageClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->withStorageClass(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    .line 822
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getSSEAwsKeyManagementParams()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->withSSEAwsKeyManagementParams(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    .line 823
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->withSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->file:Ljava/io/File;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-object v0
.end method

.method public getProgressListener()Lcom/amazonaws/services/s3/model/ProgressListener;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 744
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getGeneralProgressListener()Lcom/amazonaws/event/ProgressListener;

    move-result-object v0

    .line 745
    instance-of v1, v0, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;

    if-eqz v1, :cond_0

    .line 746
    check-cast v0, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;->unwrap()Lcom/amazonaws/services/s3/model/ProgressListener;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRedirectLocation()Ljava/lang/String;
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->redirectLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getSSEAwsKeyManagementParams()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->sseAwsKeyManagementParams:Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    return-object v0
.end method

.method public getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->sseCustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-object v0
.end method

.method public getStorageClass()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->storageClass:Ljava/lang/String;

    return-object v0
.end method

.method public getTagging()Lcom/amazonaws/services/s3/model/ObjectTagging;
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->tagging:Lcom/amazonaws/services/s3/model/ObjectTagging;

    return-object v0
.end method

.method public setAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .locals 0

    .line 516
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->file:Ljava/io/File;

    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->key:Ljava/lang/String;

    return-void
.end method

.method public setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-void
.end method

.method public setProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 731
    new-instance v0, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;-><init>(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)V

    return-void
.end method

.method public setRedirectLocation(Ljava/lang/String;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->redirectLocation:Ljava/lang/String;

    return-void
.end method

.method public setSSEAwsKeyManagementParams(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 786
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->sseCustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    if-eqz v0, :cond_0

    .line 787
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Either SSECustomerKey or SSEAwsKeyManagementParams must not be set at the same time."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 790
    :cond_0
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->sseAwsKeyManagementParams:Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    return-void
.end method

.method public setSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 679
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->sseAwsKeyManagementParams:Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    if-eqz v0, :cond_0

    .line 680
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Either SSECustomerKey or SSEAwsKeyManagementParams must not be set at the same time."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 683
    :cond_0
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->sseCustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-void
.end method

.method public setStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)V
    .locals 0

    .line 337
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->storageClass:Ljava/lang/String;

    return-void
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->storageClass:Ljava/lang/String;

    return-void
.end method

.method public setTagging(Lcom/amazonaws/services/s3/model/ObjectTagging;)V
    .locals 0

    .line 709
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->tagging:Lcom/amazonaws/services/s3/model/ObjectTagging;

    return-void
.end method

.method public withAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Lcom/amazonaws/services/s3/model/AccessControlList;",
            ")TT;"
        }
    .end annotation

    .line 566
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)V

    return-object p0
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 213
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setBucketName(Ljava/lang/String;)V

    return-object p0
.end method

.method public withCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Lcom/amazonaws/services/s3/model/CannedAccessControlList;",
            ")TT;"
        }
    .end annotation

    .line 533
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V

    return-object p0
.end method

.method public withFile(Ljava/io/File;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .line 417
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setFile(Ljava/io/File;)V

    return-object p0
.end method

.method public withInputStream(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .line 629
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setInputStream(Ljava/io/InputStream;)V

    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 252
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setKey(Ljava/lang/String;)V

    return-object p0
.end method

.method public withMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Lcom/amazonaws/services/s3/model/ObjectMetadata;",
            ")TT;"
        }
    .end annotation

    .line 487
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    return-object p0
.end method

.method public withProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Lcom/amazonaws/services/s3/model/ProgressListener;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 766
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    return-object p0
.end method

.method public withRedirectLocation(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 660
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->redirectLocation:Ljava/lang/String;

    return-object p0
.end method

.method public withSSEAwsKeyManagementParams(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;",
            ")TT;"
        }
    .end annotation

    .line 801
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setSSEAwsKeyManagementParams(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V

    return-object p0
.end method

.method public withSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Lcom/amazonaws/services/s3/model/SSECustomerKey;",
            ")TT;"
        }
    .end annotation

    .line 698
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    return-object p0
.end method

.method public withStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Lcom/amazonaws/services/s3/model/StorageClass;",
            ")TT;"
        }
    .end annotation

    .line 360
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)V

    return-object p0
.end method

.method public withStorageClass(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 317
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setStorageClass(Ljava/lang/String;)V

    return-object p0
.end method

.method public withTagging(Lcom/amazonaws/services/s3/model/ObjectTagging;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Lcom/amazonaws/services/s3/model/ObjectTagging;",
            ")TT;"
        }
    .end annotation

    .line 713
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setTagging(Lcom/amazonaws/services/s3/model/ObjectTagging;)V

    return-object p0
.end method
