.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBucketMetricsConfigurationsHandler"
.end annotation


# instance fields
.field private andOperandsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;",
            ">;"
        }
    .end annotation
.end field

.field private currentConfiguration:Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

.field private currentFilter:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

.field private currentTagKey:Ljava/lang/String;

.field private currentTagValue:Ljava/lang/String;

.field private final result:Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2983
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    .line 2984
    new-instance v0, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->result:Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;

    return-void
.end method


# virtual methods
.method protected doEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string p1, "ListMetricsConfigurationsResult"

    .line 3018
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_4

    const-string p1, "MetricsConfiguration"

    .line 3019
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3020
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->result:Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->getMetricsConfigurationList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3021
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->result:Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->setMetricsConfigurationList(Ljava/util/List;)V

    .line 3023
    :cond_0
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->result:Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->getMetricsConfigurationList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->currentConfiguration:Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3024
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->currentConfiguration:Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

    goto/16 :goto_0

    :cond_1
    const-string p1, "IsTruncated"

    .line 3025
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3026
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->result:Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;

    const-string p2, "true"

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->setTruncated(Z)V

    goto/16 :goto_0

    :cond_2
    const-string p1, "ContinuationToken"

    .line 3027
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3028
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->result:Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->setContinuationToken(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string p1, "NextContinuationToken"

    .line 3029
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 3030
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->result:Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->setNextContinuationToken(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string p1, "ListMetricsConfigurationsResult"

    const-string v0, "MetricsConfiguration"

    .line 3032
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "Id"

    .line 3033
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3034
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->currentConfiguration:Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;->setId(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string p1, "Filter"

    .line 3035
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 3036
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->currentConfiguration:Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->currentFilter:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;->setFilter(Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;)V

    .line 3037
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->currentFilter:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    goto/16 :goto_0

    :cond_6
    const-string p1, "ListMetricsConfigurationsResult"

    const-string v0, "MetricsConfiguration"

    const-string v1, "Filter"

    .line 3039
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "Prefix"

    .line 3040
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 3041
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->currentFilter:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    new-instance p2, Lcom/amazonaws/services/s3/model/metrics/MetricsPrefixPredicate;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/metrics/MetricsPrefixPredicate;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;->setPredicate(Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;)V

    goto/16 :goto_0

    :cond_7
    const-string p1, "Tag"

    .line 3042
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 3043
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->currentFilter:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    new-instance p2, Lcom/amazonaws/services/s3/model/metrics/MetricsTagPredicate;

    new-instance v0, Lcom/amazonaws/services/s3/model/Tag;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->currentTagKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->currentTagValue:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/amazonaws/services/s3/model/metrics/MetricsTagPredicate;-><init>(Lcom/amazonaws/services/s3/model/Tag;)V

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;->setPredicate(Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;)V

    .line 3045
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->currentTagKey:Ljava/lang/String;

    .line 3046
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->currentTagValue:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const-string p1, "And"

    .line 3047
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 3048
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->currentFilter:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    new-instance p2, Lcom/amazonaws/services/s3/model/metrics/MetricsAndOperator;

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->andOperandsList:Ljava/util/List;

    invoke-direct {p2, v0}, Lcom/amazonaws/services/s3/model/metrics/MetricsAndOperator;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;->setPredicate(Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;)V

    .line 3049
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->andOperandsList:Ljava/util/List;

    goto/16 :goto_0

    :cond_9
    const-string p1, "ListMetricsConfigurationsResult"

    const-string v0, "MetricsConfiguration"

    const-string v1, "Filter"

    const-string v2, "Tag"

    .line 3051
    filled-new-array {p1, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "Key"

    .line 3053
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 3054
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->currentTagKey:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const-string p1, "Value"

    .line 3055
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 3056
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->currentTagValue:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const-string p1, "ListMetricsConfigurationsResult"

    const-string v0, "MetricsConfiguration"

    const-string v1, "Filter"

    const-string v2, "And"

    .line 3058
    filled-new-array {p1, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "Prefix"

    .line 3060
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 3061
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->andOperandsList:Ljava/util/List;

    new-instance p2, Lcom/amazonaws/services/s3/model/metrics/MetricsPrefixPredicate;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/metrics/MetricsPrefixPredicate;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_c
    const-string p1, "Tag"

    .line 3062
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 3063
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->andOperandsList:Ljava/util/List;

    new-instance p2, Lcom/amazonaws/services/s3/model/metrics/MetricsTagPredicate;

    new-instance v0, Lcom/amazonaws/services/s3/model/Tag;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->currentTagKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->currentTagValue:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/amazonaws/services/s3/model/metrics/MetricsTagPredicate;-><init>(Lcom/amazonaws/services/s3/model/Tag;)V

    .line 3064
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3065
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->currentTagKey:Ljava/lang/String;

    .line 3066
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->currentTagValue:Ljava/lang/String;

    goto :goto_0

    :cond_d
    const-string p1, "ListMetricsConfigurationsResult"

    const-string p3, "MetricsConfiguration"

    const-string v0, "Filter"

    const-string v1, "And"

    const-string v2, "Tag"

    .line 3068
    filled-new-array {p1, p3, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "Key"

    .line 3070
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 3071
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->currentTagKey:Ljava/lang/String;

    goto :goto_0

    :cond_e
    const-string p1, "Value"

    .line 3072
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 3073
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->currentTagValue:Ljava/lang/String;

    :cond_f
    :goto_0
    return-void
.end method

.method protected doStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    const-string p1, "ListMetricsConfigurationsResult"

    .line 3001
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "MetricsConfiguration"

    .line 3002
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3003
    new-instance p1, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->currentConfiguration:Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

    goto :goto_0

    :cond_0
    const-string p1, "ListMetricsConfigurationsResult"

    const-string p3, "MetricsConfiguration"

    .line 3005
    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Filter"

    .line 3006
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3007
    new-instance p1, Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->currentFilter:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    goto :goto_0

    :cond_1
    const-string p1, "ListMetricsConfigurationsResult"

    const-string p3, "MetricsConfiguration"

    const-string p4, "Filter"

    .line 3009
    filled-new-array {p1, p3, p4}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "And"

    .line 3010
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3011
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->andOperandsList:Ljava/util/List;

    :cond_2
    :goto_0
    return-void
.end method

.method public getResult()Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;
    .locals 1

    .line 2992
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->result:Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;

    return-object v0
.end method
