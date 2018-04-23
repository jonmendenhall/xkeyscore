.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;
.source "XmlResponsesSaxParser.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;
.implements Lcom/amazonaws/services/s3/internal/S3VersionResult;
.implements Lcom/amazonaws/services/s3/internal/S3RequesterChargedResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompleteMultipartUploadHandler"
.end annotation


# instance fields
.field private ase:Lcom/amazonaws/services/s3/model/AmazonS3Exception;

.field private errorCode:Ljava/lang/String;

.field private hostId:Ljava/lang/String;

.field private requestId:Ljava/lang/String;

.field private result:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1727
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected doEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1833
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->atTopLevel()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Error"

    .line 1834
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1835
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->ase:Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    if-eqz p1, :cond_8

    .line 1836
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->ase:Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->errorCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setErrorCode(Ljava/lang/String;)V

    .line 1837
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->ase:Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->requestId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setRequestId(Ljava/lang/String;)V

    .line 1838
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->ase:Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->hostId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setExtendedRequestId(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string p1, "CompleteMultipartUploadResult"

    .line 1843
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Location"

    .line 1844
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1845
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->setLocation(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string p1, "Bucket"

    .line 1846
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1847
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->setBucketName(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string p1, "Key"

    .line 1848
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1849
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->setKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "ETag"

    .line 1850
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1851
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->removeQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->setETag(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, "Error"

    .line 1855
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "Code"

    .line 1856
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1857
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->errorCode:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string p1, "Message"

    .line 1858
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1859
    new-instance p1, Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->ase:Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    goto :goto_0

    :cond_6
    const-string p1, "RequestId"

    .line 1860
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1861
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->requestId:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string p1, "HostId"

    .line 1862
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1863
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->hostId:Ljava/lang/String;

    :cond_8
    :goto_0
    return-void
.end method

.method protected doStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    .line 1824
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->atTopLevel()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CompleteMultipartUploadResult"

    .line 1825
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1826
    new-instance p1, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    :cond_0
    return-void
.end method

.method public getAmazonS3Exception()Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    .locals 1

    .line 1814
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->ase:Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    return-object v0
.end method

.method public getCompleteMultipartUploadResult()Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    .locals 1

    .line 1810
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    return-object v0
.end method

.method public getExpirationTime()Ljava/util/Date;
    .locals 1

    .line 1748
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->getExpirationTime()Ljava/util/Date;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getExpirationTimeRuleId()Ljava/lang/String;
    .locals 1

    .line 1766
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->getExpirationTimeRuleId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .line 1788
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->getVersionId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isRequesterCharged()Z
    .locals 1

    .line 1796
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->isRequesterCharged()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public setExpirationTime(Ljava/util/Date;)V
    .locals 1

    .line 1756
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    if-eqz v0, :cond_0

    .line 1757
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->setExpirationTime(Ljava/util/Date;)V

    :cond_0
    return-void
.end method

.method public setExpirationTimeRuleId(Ljava/lang/String;)V
    .locals 1

    .line 1774
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    if-eqz v0, :cond_0

    .line 1775
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->setExpirationTimeRuleId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setRequesterCharged(Z)V
    .locals 1

    .line 1804
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    if-eqz v0, :cond_0

    .line 1805
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->setRequesterCharged(Z)V

    :cond_0
    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 1

    .line 1781
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    if-eqz v0, :cond_0

    .line 1782
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->setVersionId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected sseResult()Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;
    .locals 1

    .line 1740
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    return-object v0
.end method
