.class public Lcom/amazonaws/services/s3/model/PutObjectRequest;
.super Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
.source "PutObjectRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private isRequesterPays:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 0

    .line 164
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->clone()Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->clone()Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 1

    .line 174
    invoke-super {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->clone()Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 175
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->copyPutObjectBaseTo(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->clone()Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    return-object v0
.end method

.method public isRequesterPays()Z
    .locals 1

    .line 291
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->isRequesterPays:Z

    return v0
.end method

.method public setRequesterPays(Z)V
    .locals 0

    .line 311
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->isRequesterPays:Z

    return-void
.end method

.method public bridge synthetic withAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public withAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 225
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->withAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public bridge synthetic withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 181
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public bridge synthetic withCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public withCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 218
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->withCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public bridge synthetic withFile(Ljava/io/File;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withFile(Ljava/io/File;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public withFile(Ljava/io/File;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 206
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->withFile(Ljava/io/File;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public bridge synthetic withGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public withGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 271
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->withGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public bridge synthetic withInputStream(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withInputStream(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public withInputStream(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 231
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->withInputStream(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public bridge synthetic withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 187
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public bridge synthetic withMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public withMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 212
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->withMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public bridge synthetic withProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public withProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->withProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public bridge synthetic withRedirectLocation(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withRedirectLocation(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public withRedirectLocation(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 237
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->withRedirectLocation(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public withRequesterPays(Z)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 335
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setRequesterPays(Z)V

    return-object p0
.end method

.method public bridge synthetic withSSEAwsKeyManagementParams(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withSSEAwsKeyManagementParams(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public withSSEAwsKeyManagementParams(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 264
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->withSSEAwsKeyManagementParams(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public bridge synthetic withSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public withSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 243
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->withSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public bridge synthetic withStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withStorageClass(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withStorageClass(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public withStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 200
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->withStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public withStorageClass(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 194
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->withStorageClass(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public bridge synthetic withTagging(Lcom/amazonaws/services/s3/model/ObjectTagging;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withTagging(Lcom/amazonaws/services/s3/model/ObjectTagging;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public withTagging(Lcom/amazonaws/services/s3/model/ObjectTagging;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 248
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setTagging(Lcom/amazonaws/services/s3/model/ObjectTagging;)V

    return-object p0
.end method
