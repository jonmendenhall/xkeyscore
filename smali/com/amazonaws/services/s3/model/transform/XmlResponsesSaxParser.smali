.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.super Ljava/lang/Object;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketCrossOriginConfigurationHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetObjectTaggingHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$InitiateMultipartUploadHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketAccelerateConfigurationHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketVersioningConfigurationHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$RequestPaymentConfigurationHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLocationHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLoggingConfigurationHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListAllMyBucketsHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;
    }
.end annotation


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final sanitizeXmlDocument:Z

.field private xr:Lorg/xml/sax/XMLReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 142
    const-class v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->sanitizeXmlDocument:Z

    .line 156
    :try_start_0
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "org.xml.sax.driver"

    const-string v2, "org.xmlpull.v1.sax2.Driver"

    .line 158
    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    :try_start_1
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    .line 163
    :catch_1
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    const-string v2, "Couldn\'t initialize a sax driver for the XMLReader"

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$000()Lorg/apache/commons/logging/Log;
    .locals 1

    .line 141
    sget-object v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 141
    invoke-static {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->checkForEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 141
    invoke-static {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->decodeIfSpecified(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Ljava/lang/String;)I
    .locals 0

    .line 141
    invoke-static {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Ljava/lang/String;)J
    .locals 2

    .line 141
    invoke-static {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;
    .locals 0

    .line 141
    invoke-static {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->findAttributeValue(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static checkForEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 285
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    return-object p0
.end method

.method private static decodeIfSpecified(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 352
    invoke-static {p0}, Lcom/amazonaws/services/s3/internal/S3HttpUtils;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static findAttributeValue(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;
    .locals 4

    .line 333
    invoke-static {p0}, Lcom/amazonaws/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 337
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 338
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    .line 339
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 340
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    return-object v1
.end method

.method private static parseInt(Ljava/lang/String;)I
    .locals 4

    .line 303
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 305
    sget-object v1, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse integer value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method private static parseLong(Ljava/lang/String;)J
    .locals 4

    .line 322
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 324
    sget-object v1, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse long value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method


# virtual methods
.method public parseAccelerateConfigurationResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketAccelerateConfigurationHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketAccelerateConfigurationHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketAccelerateConfigurationHandler;-><init>()V

    .line 508
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public parseAccessControlListResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;-><init>()V

    .line 430
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public parseBucketCrossOriginConfigurationResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketCrossOriginConfigurationHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketCrossOriginConfigurationHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketCrossOriginConfigurationHandler;-><init>()V

    .line 462
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public parseBucketLifecycleConfigurationResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 453
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;-><init>()V

    .line 454
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public parseBucketListInventoryConfigurationsResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 606
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;-><init>()V

    .line 607
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public parseBucketLocationResponse(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLocationHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLocationHandler;-><init>()V

    .line 469
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 470
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLocationHandler;->getLocation()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parseCompleteMultipartUploadResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 529
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;-><init>()V

    .line 530
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public parseCopyObjectResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;-><init>()V

    .line 522
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public parseDeletedObjectsResult(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 514
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;-><init>()V

    .line 515
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public parseGetBucketAnalyticsConfigurationResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 582
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;-><init>()V

    .line 583
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public parseGetBucketInventoryConfigurationResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 598
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;-><init>()V

    .line 599
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public parseGetBucketMetricsConfigurationResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 566
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;-><init>()V

    .line 567
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public parseInitiateMultipartUploadResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$InitiateMultipartUploadHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$InitiateMultipartUploadHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$InitiateMultipartUploadHandler;-><init>()V

    .line 538
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public parseListBucketAnalyticsConfigurationResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 590
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;-><init>()V

    .line 591
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public parseListBucketMetricsConfigurationsResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 574
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;-><init>()V

    .line 575
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public parseListBucketObjectsResponse(Ljava/io/InputStream;Z)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;

    invoke-direct {v0, p2}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;-><init>(Z)V

    .line 367
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->sanitizeXmlDocument(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public parseListMultipartUploadsResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;-><init>()V

    .line 545
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public parseListMyBucketsResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListAllMyBucketsHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListAllMyBucketsHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListAllMyBucketsHandler;-><init>()V

    .line 414
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->sanitizeXmlDocument(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public parseListObjectsV2Response(Ljava/io/InputStream;Z)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;

    invoke-direct {v0, p2}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;-><init>(Z)V

    .line 383
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->sanitizeXmlDocument(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public parseListPartsResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;-><init>()V

    .line 552
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public parseListVersionsResponse(Ljava/io/InputStream;Z)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;

    invoke-direct {v0, p2}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;-><init>(Z)V

    .line 399
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->sanitizeXmlDocument(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public parseLoggingStatusResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLoggingConfigurationHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLoggingConfigurationHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLoggingConfigurationHandler;-><init>()V

    .line 446
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public parseObjectTaggingResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetObjectTaggingHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 558
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetObjectTaggingHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetObjectTaggingHandler;-><init>()V

    .line 559
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public parseReplicationConfigurationResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;-><init>()V

    .line 492
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public parseRequestPaymentConfigurationResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$RequestPaymentConfigurationHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 620
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$RequestPaymentConfigurationHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$RequestPaymentConfigurationHandler;-><init>()V

    .line 621
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public parseTaggingConfigurationResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;-><init>()V

    .line 500
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public parseVersioningConfigurationResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketVersioningConfigurationHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketVersioningConfigurationHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketVersioningConfigurationHandler;-><init>()V

    .line 477
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public parseWebsiteConfigurationResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 484
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;-><init>()V

    .line 485
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    :try_start_0
    sget-object v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing XML response document with handler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 186
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p2, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 188
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    invoke-interface {v1, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 189
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    invoke-interface {v1, p1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 190
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 197
    :try_start_1
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 199
    sget-object v1, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    sget-object v1, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Unable to close response InputStream up after XML parse failure"

    invoke-interface {v1, v2, p2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 203
    :cond_1
    :goto_0
    new-instance p2, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse XML document with handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 193
    throw p1
.end method

.method protected sanitizeXmlDocument(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    sget-object v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    sget-object v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sanitizing XML document destined for handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 229
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, p2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 v2, 0x2000

    .line 233
    new-array v2, v2, [C

    .line 235
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x0

    .line 236
    invoke-virtual {v0, v2, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r"

    const-string v2, "&#013;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    .line 249
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 256
    :try_start_1
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 258
    sget-object v1, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 259
    sget-object v1, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Unable to close response InputStream after failure sanitizing XML document"

    invoke-interface {v1, v2, p2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 264
    :cond_2
    :goto_1
    new-instance p2, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to sanitize XML document destined for handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 252
    throw p1
.end method
