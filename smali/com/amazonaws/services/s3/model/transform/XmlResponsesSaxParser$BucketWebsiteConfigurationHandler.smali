.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketWebsiteConfigurationHandler"
.end annotation


# instance fields
.field private final configuration:Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

.field private currentCondition:Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

.field private currentRedirectRule:Lcom/amazonaws/services/s3/model/RedirectRule;

.field private currentRoutingRule:Lcom/amazonaws/services/s3/model/RoutingRule;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1532
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    .line 1534
    new-instance v0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    .line 1537
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentCondition:Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    .line 1538
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentRedirectRule:Lcom/amazonaws/services/s3/model/RedirectRule;

    .line 1539
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentRoutingRule:Lcom/amazonaws/services/s3/model/RoutingRule;

    return-void
.end method


# virtual methods
.method protected doEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p1, "WebsiteConfiguration"

    .line 1575
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    const-string p1, "RedirectAllRequestsTo"

    .line 1576
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1577
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentRedirectRule:Lcom/amazonaws/services/s3/model/RedirectRule;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->setRedirectAllRequestsTo(Lcom/amazonaws/services/s3/model/RedirectRule;)V

    .line 1578
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentRedirectRule:Lcom/amazonaws/services/s3/model/RedirectRule;

    goto/16 :goto_0

    :cond_0
    const-string p1, "WebsiteConfiguration"

    const-string v0, "IndexDocument"

    .line 1582
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Suffix"

    .line 1583
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1584
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->setIndexDocumentSuffix(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string p1, "WebsiteConfiguration"

    const-string v0, "ErrorDocument"

    .line 1588
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Key"

    .line 1589
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1590
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->setErrorDocument(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string p1, "WebsiteConfiguration"

    const-string v0, "RoutingRules"

    .line 1594
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "RoutingRule"

    .line 1595
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1596
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->getRoutingRules()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentRoutingRule:Lcom/amazonaws/services/s3/model/RoutingRule;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1597
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentRoutingRule:Lcom/amazonaws/services/s3/model/RoutingRule;

    goto/16 :goto_0

    :cond_3
    const-string p1, "WebsiteConfiguration"

    const-string v0, "RoutingRules"

    const-string v1, "RoutingRule"

    .line 1601
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "Condition"

    .line 1602
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1603
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentRoutingRule:Lcom/amazonaws/services/s3/model/RoutingRule;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentCondition:Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/RoutingRule;->setCondition(Lcom/amazonaws/services/s3/model/RoutingRuleCondition;)V

    .line 1604
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentCondition:Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    goto/16 :goto_0

    :cond_4
    const-string p1, "Redirect"

    .line 1605
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1606
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentRoutingRule:Lcom/amazonaws/services/s3/model/RoutingRule;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentRedirectRule:Lcom/amazonaws/services/s3/model/RedirectRule;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/RoutingRule;->setRedirect(Lcom/amazonaws/services/s3/model/RedirectRule;)V

    .line 1607
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentRedirectRule:Lcom/amazonaws/services/s3/model/RedirectRule;

    goto/16 :goto_0

    :cond_5
    const-string p1, "WebsiteConfiguration"

    const-string p3, "RoutingRules"

    const-string v0, "RoutingRule"

    const-string v1, "Condition"

    .line 1611
    filled-new-array {p1, p3, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "KeyPrefixEquals"

    .line 1612
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1613
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentCondition:Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;->setKeyPrefixEquals(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string p1, "HttpErrorCodeReturnedEquals"

    .line 1614
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1615
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentCondition:Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;->setHttpErrorCodeReturnedEquals(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string p1, "WebsiteConfiguration"

    const-string p3, "RedirectAllRequestsTo"

    .line 1619
    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "WebsiteConfiguration"

    const-string p3, "RoutingRules"

    const-string v0, "RoutingRule"

    const-string v1, "Redirect"

    filled-new-array {p1, p3, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    .line 1620
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_8
    const-string p1, "Protocol"

    .line 1622
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1623
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentRedirectRule:Lcom/amazonaws/services/s3/model/RedirectRule;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/RedirectRule;->setProtocol(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string p1, "HostName"

    .line 1625
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1626
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentRedirectRule:Lcom/amazonaws/services/s3/model/RedirectRule;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/RedirectRule;->setHostName(Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    const-string p1, "ReplaceKeyPrefixWith"

    .line 1628
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1629
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentRedirectRule:Lcom/amazonaws/services/s3/model/RedirectRule;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/RedirectRule;->setReplaceKeyPrefixWith(Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    const-string p1, "ReplaceKeyWith"

    .line 1631
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1632
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentRedirectRule:Lcom/amazonaws/services/s3/model/RedirectRule;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/RedirectRule;->setReplaceKeyWith(Ljava/lang/String;)V

    goto :goto_0

    :cond_c
    const-string p1, "HttpRedirectCode"

    .line 1634
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1635
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentRedirectRule:Lcom/amazonaws/services/s3/model/RedirectRule;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/RedirectRule;->setHttpRedirectCode(Ljava/lang/String;)V

    :cond_d
    :goto_0
    return-void
.end method

.method protected doStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    const-string p1, "WebsiteConfiguration"

    .line 1552
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "RedirectAllRequestsTo"

    .line 1553
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1554
    new-instance p1, Lcom/amazonaws/services/s3/model/RedirectRule;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/RedirectRule;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentRedirectRule:Lcom/amazonaws/services/s3/model/RedirectRule;

    goto :goto_0

    :cond_0
    const-string p1, "WebsiteConfiguration"

    const-string p3, "RoutingRules"

    .line 1558
    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "RoutingRule"

    .line 1559
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1560
    new-instance p1, Lcom/amazonaws/services/s3/model/RoutingRule;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/RoutingRule;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentRoutingRule:Lcom/amazonaws/services/s3/model/RoutingRule;

    goto :goto_0

    :cond_1
    const-string p1, "WebsiteConfiguration"

    const-string p3, "RoutingRules"

    const-string p4, "RoutingRule"

    .line 1564
    filled-new-array {p1, p3, p4}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Condition"

    .line 1565
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1566
    new-instance p1, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentCondition:Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    goto :goto_0

    :cond_2
    const-string p1, "Redirect"

    .line 1567
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1568
    new-instance p1, Lcom/amazonaws/services/s3/model/RedirectRule;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/RedirectRule;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentRedirectRule:Lcom/amazonaws/services/s3/model/RedirectRule;

    :cond_3
    :goto_0
    return-void
.end method

.method public getConfiguration()Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
    .locals 1

    .line 1542
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    return-object v0
.end method
