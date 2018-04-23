.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$RequestPaymentConfigurationHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestPaymentConfigurationHandler"
.end annotation


# instance fields
.field private payer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1350
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    const/4 v0, 0x0

    .line 1352
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$RequestPaymentConfigurationHandler;->payer:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "RequestPaymentConfiguration"

    .line 1369
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$RequestPaymentConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Payer"

    .line 1370
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1371
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$RequestPaymentConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$RequestPaymentConfigurationHandler;->payer:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected doStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    return-void
.end method

.method public getConfiguration()Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;
    .locals 2

    .line 1355
    new-instance v0, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$RequestPaymentConfigurationHandler;->payer:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;->valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;-><init>(Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;)V

    return-object v0
.end method
