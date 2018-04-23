.class public Lcom/amazonaws/services/s3/model/transform/MultiObjectDeleteXmlFactory;
.super Ljava/lang/Object;
.source "MultiObjectDeleteXmlFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private writeKeyVersion(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;)V
    .locals 2

    const-string v0, "Object"

    .line 53
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v0, "Key"

    .line 54
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 55
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "VersionId"

    .line 56
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;->getVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 58
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method


# virtual methods
.method public convertToXmlByteArray(Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "Delete"

    .line 38
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 39
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->getQuiet()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Quiet"

    .line 40
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;

    .line 44
    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/model/transform/MultiObjectDeleteXmlFactory;->writeKeyVersion(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;)V

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 49
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->getBytes()[B

    move-result-object p1

    return-object p1
.end method
