.class public Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;
.super Ljava/lang/Object;
.source "RequestPaymentConfigurationXmlFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertToXmlByteArray(Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;)[B
    .locals 4

    .line 40
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "RequestPaymentConfiguration"

    const-string v2, "xmlns"

    const-string v3, "http://s3.amazonaws.com/doc/2006-03-01/"

    .line 41
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 44
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;->getPayer()Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "Payer"

    .line 46
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    .line 47
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 48
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 50
    :cond_0
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 51
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->getBytes()[B

    move-result-object p1

    return-object p1
.end method
