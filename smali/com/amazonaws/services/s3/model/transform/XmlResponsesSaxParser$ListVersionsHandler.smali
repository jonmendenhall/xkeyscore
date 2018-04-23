.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListVersionsHandler"
.end annotation


# instance fields
.field private currentOwner:Lcom/amazonaws/services/s3/model/Owner;

.field private currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

.field private final shouldSDKDecodeResponse:Z

.field private final versionListing:Lcom/amazonaws/services/s3/model/VersionListing;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1388
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    .line 1382
    new-instance v0, Lcom/amazonaws/services/s3/model/VersionListing;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/VersionListing;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    .line 1389
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->shouldSDKDecodeResponse:Z

    return-void
.end method


# virtual methods
.method protected doEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string p1, "ListVersionsResult"

    .line 1431
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_c

    const-string p1, "Name"

    .line 1432
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1433
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/VersionListing;->setBucketName(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    const-string p1, "Prefix"

    .line 1435
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1436
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-boolean p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->shouldSDKDecodeResponse:Z

    invoke-static {p2, p3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$200(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/VersionListing;->setPrefix(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    const-string p1, "KeyMarker"

    .line 1439
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1440
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-boolean p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->shouldSDKDecodeResponse:Z

    invoke-static {p2, p3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$200(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/VersionListing;->setKeyMarker(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    const-string p1, "VersionIdMarker"

    .line 1443
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1444
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    .line 1445
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    .line 1444
    invoke-static {p2}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/VersionListing;->setVersionIdMarker(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    const-string p1, "MaxKeys"

    .line 1447
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1448
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/VersionListing;->setMaxKeys(I)V

    goto/16 :goto_2

    :cond_4
    const-string p1, "Delimiter"

    .line 1450
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1451
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-boolean p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->shouldSDKDecodeResponse:Z

    invoke-static {p2, p3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$200(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/VersionListing;->setDelimiter(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    const-string p1, "EncodingType"

    .line 1454
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1455
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    iget-boolean p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->shouldSDKDecodeResponse:Z

    if-eqz p2, :cond_6

    goto :goto_0

    .line 1456
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1455
    :goto_0
    invoke-virtual {p1, p3}, Lcom/amazonaws/services/s3/model/VersionListing;->setEncodingType(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    const-string p1, "NextKeyMarker"

    .line 1458
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1459
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    .line 1460
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-boolean p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->shouldSDKDecodeResponse:Z

    .line 1459
    invoke-static {p2, p3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$200(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/VersionListing;->setNextKeyMarker(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    const-string p1, "NextVersionIdMarker"

    .line 1462
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1463
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/VersionListing;->setNextVersionIdMarker(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    const-string p1, "IsTruncated"

    .line 1465
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1466
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    const-string p2, "true"

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/VersionListing;->setTruncated(Z)V

    goto/16 :goto_2

    :cond_a
    const-string p1, "Version"

    .line 1468
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    const-string p1, "DeleteMarker"

    .line 1469
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 1471
    :cond_b
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/VersionListing;->getVersionSummaries()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    .line 1472
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1474
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    goto/16 :goto_2

    :cond_c
    const-string p1, "ListVersionsResult"

    const-string v0, "CommonPrefixes"

    .line 1478
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "Prefix"

    .line 1479
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 1480
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1481
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/VersionListing;->getCommonPrefixes()Ljava/util/List;

    move-result-object p2

    iget-boolean p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->shouldSDKDecodeResponse:Z

    if-eqz p3, :cond_d

    .line 1482
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/S3HttpUtils;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1481
    :cond_d
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_e
    const-string p1, "ListVersionsResult"

    const-string v0, "Version"

    .line 1486
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_12

    const-string p1, "ListVersionsResult"

    const-string v0, "DeleteMarker"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    .line 1487
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_1

    :cond_f
    const-string p1, "ListVersionsResult"

    const-string p3, "Version"

    const-string v0, "Owner"

    .line 1520
    filled-new-array {p1, p3, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    const-string p1, "ListVersionsResult"

    const-string p3, "DeleteMarker"

    const-string v0, "Owner"

    filled-new-array {p1, p3, v0}, [Ljava/lang/String;

    move-result-object p1

    .line 1521
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    :cond_10
    const-string p1, "ID"

    .line 1523
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1524
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentOwner:Lcom/amazonaws/services/s3/model/Owner;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/Owner;->setId(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_11
    const-string p1, "DisplayName"

    .line 1525
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 1526
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentOwner:Lcom/amazonaws/services/s3/model/Owner;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/Owner;->setDisplayName(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_12
    :goto_1
    const-string p1, "Key"

    .line 1489
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1490
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->getText()Ljava/lang/String;

    move-result-object p1

    .line 1491
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    iget-boolean p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->shouldSDKDecodeResponse:Z

    .line 1492
    invoke-static {p1, p3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$200(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->setKey(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_13
    const-string p1, "VersionId"

    .line 1494
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 1495
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->setVersionId(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_14
    const-string p1, "IsLatest"

    .line 1497
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 1498
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    const-string p2, "true"

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->setIsLatest(Z)V

    goto :goto_2

    :cond_15
    const-string p1, "LastModified"

    .line 1500
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 1501
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    .line 1502
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    .line 1501
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->setLastModified(Ljava/util/Date;)V

    goto :goto_2

    :cond_16
    const-string p1, "ETag"

    .line 1504
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 1505
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    .line 1506
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->removeQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1505
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->setETag(Ljava/lang/String;)V

    goto :goto_2

    :cond_17
    const-string p1, "Size"

    .line 1508
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 1509
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->setSize(J)V

    goto :goto_2

    :cond_18
    const-string p1, "Owner"

    .line 1511
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 1512
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentOwner:Lcom/amazonaws/services/s3/model/Owner;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->setOwner(Lcom/amazonaws/services/s3/model/Owner;)V

    .line 1513
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentOwner:Lcom/amazonaws/services/s3/model/Owner;

    goto :goto_2

    :cond_19
    const-string p1, "StorageClass"

    .line 1515
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 1516
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->setStorageClass(Ljava/lang/String;)V

    :cond_1a
    :goto_2
    return-void
.end method

.method protected doStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    const-string p1, "ListVersionsResult"

    .line 1403
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Version"

    .line 1404
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1405
    new-instance p1, Lcom/amazonaws/services/s3/model/S3VersionSummary;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/S3VersionSummary;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    .line 1406
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    .line 1407
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/VersionListing;->getBucketName()Ljava/lang/String;

    move-result-object p2

    .line 1406
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->setBucketName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "DeleteMarker"

    .line 1409
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1410
    new-instance p1, Lcom/amazonaws/services/s3/model/S3VersionSummary;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/S3VersionSummary;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    .line 1411
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    .line 1412
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/VersionListing;->getBucketName()Ljava/lang/String;

    move-result-object p2

    .line 1411
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->setBucketName(Ljava/lang/String;)V

    .line 1413
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->setIsDeleteMarker(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "ListVersionsResult"

    const-string p3, "Version"

    .line 1417
    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "ListVersionsResult"

    const-string p3, "DeleteMarker"

    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    .line 1418
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const-string p1, "Owner"

    .line 1419
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1420
    new-instance p1, Lcom/amazonaws/services/s3/model/Owner;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/Owner;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentOwner:Lcom/amazonaws/services/s3/model/Owner;

    :cond_3
    :goto_0
    return-void
.end method

.method public getListing()Lcom/amazonaws/services/s3/model/VersionListing;
    .locals 1

    .line 1393
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    return-object v0
.end method
