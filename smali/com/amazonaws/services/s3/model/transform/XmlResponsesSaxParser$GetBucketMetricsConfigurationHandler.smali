.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetBucketMetricsConfigurationHandler"
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

.field private final configuration:Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

.field private currentTagKey:Ljava/lang/String;

.field private currentTagValue:Ljava/lang/String;

.field private filter:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2891
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    .line 2892
    new-instance v0, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

    return-void
.end method


# virtual methods
.method protected doEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string p1, "MetricsConfiguration"

    .line 2922
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    const-string p1, "Id"

    .line 2923
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2924
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;->setId(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string p1, "Filter"

    .line 2925
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 2926
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->filter:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;->setFilter(Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;)V

    .line 2927
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->filter:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    goto/16 :goto_0

    :cond_1
    const-string p1, "MetricsConfiguration"

    const-string v0, "Filter"

    .line 2929
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Prefix"

    .line 2930
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2931
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->filter:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    new-instance p2, Lcom/amazonaws/services/s3/model/metrics/MetricsPrefixPredicate;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/metrics/MetricsPrefixPredicate;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;->setPredicate(Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;)V

    goto/16 :goto_0

    :cond_2
    const-string p1, "Tag"

    .line 2932
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2933
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->filter:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    new-instance p2, Lcom/amazonaws/services/s3/model/metrics/MetricsTagPredicate;

    new-instance v0, Lcom/amazonaws/services/s3/model/Tag;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->currentTagKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->currentTagValue:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/amazonaws/services/s3/model/metrics/MetricsTagPredicate;-><init>(Lcom/amazonaws/services/s3/model/Tag;)V

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;->setPredicate(Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;)V

    .line 2935
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->currentTagKey:Ljava/lang/String;

    .line 2936
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->currentTagValue:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    const-string p1, "And"

    .line 2937
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 2938
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->filter:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    new-instance p2, Lcom/amazonaws/services/s3/model/metrics/MetricsAndOperator;

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->andOperandsList:Ljava/util/List;

    invoke-direct {p2, v0}, Lcom/amazonaws/services/s3/model/metrics/MetricsAndOperator;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;->setPredicate(Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;)V

    .line 2939
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->andOperandsList:Ljava/util/List;

    goto/16 :goto_0

    :cond_4
    const-string p1, "MetricsConfiguration"

    const-string v0, "Filter"

    const-string v1, "Tag"

    .line 2941
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "Key"

    .line 2942
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2943
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->currentTagKey:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    const-string p1, "Value"

    .line 2944
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 2945
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->currentTagValue:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    const-string p1, "MetricsConfiguration"

    const-string v0, "Filter"

    const-string v1, "And"

    .line 2947
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "Prefix"

    .line 2948
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2949
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->andOperandsList:Ljava/util/List;

    new-instance p2, Lcom/amazonaws/services/s3/model/metrics/MetricsPrefixPredicate;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/metrics/MetricsPrefixPredicate;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    const-string p1, "Tag"

    .line 2950
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 2951
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->andOperandsList:Ljava/util/List;

    new-instance p2, Lcom/amazonaws/services/s3/model/metrics/MetricsTagPredicate;

    new-instance v0, Lcom/amazonaws/services/s3/model/Tag;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->currentTagKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->currentTagValue:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/amazonaws/services/s3/model/metrics/MetricsTagPredicate;-><init>(Lcom/amazonaws/services/s3/model/Tag;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2953
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->currentTagKey:Ljava/lang/String;

    .line 2954
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->currentTagValue:Ljava/lang/String;

    goto :goto_0

    :cond_8
    const-string p1, "MetricsConfiguration"

    const-string p3, "Filter"

    const-string v0, "And"

    const-string v1, "Tag"

    .line 2956
    filled-new-array {p1, p3, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "Key"

    .line 2957
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2958
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->currentTagKey:Ljava/lang/String;

    goto :goto_0

    :cond_9
    const-string p1, "Value"

    .line 2959
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 2960
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->currentTagValue:Ljava/lang/String;

    :cond_a
    :goto_0
    return-void
.end method

.method protected doStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    const-string p1, "MetricsConfiguration"

    .line 2909
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Filter"

    .line 2910
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2911
    new-instance p1, Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->filter:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    goto :goto_0

    :cond_0
    const-string p1, "MetricsConfiguration"

    const-string p3, "Filter"

    .line 2913
    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "And"

    .line 2914
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2915
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->andOperandsList:Ljava/util/List;

    :cond_1
    :goto_0
    return-void
.end method

.method public getResult()Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationResult;
    .locals 2

    .line 2899
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationResult;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationResult;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

    .line 2900
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationResult;->withMetricsConfiguration(Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;)Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationResult;

    move-result-object v0

    return-object v0
.end method
