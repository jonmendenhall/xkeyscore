.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketAccelerateConfigurationHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketAccelerateConfigurationHandler"
.end annotation


# instance fields
.field private final configuration:Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1680
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    .line 1682
    new-instance v0, Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketAccelerateConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;

    return-void
.end method


# virtual methods
.method protected doEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "AccelerateConfiguration"

    .line 1700
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketAccelerateConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Status"

    .line 1701
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1702
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketAccelerateConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketAccelerateConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;->setStatus(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected doStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    return-void
.end method

.method public getConfiguration()Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;
    .locals 1

    .line 1686
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketAccelerateConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;

    return-object v0
.end method
