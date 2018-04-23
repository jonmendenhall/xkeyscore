.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetBucketAnalyticsConfigurationHandler"
.end annotation


# instance fields
.field private andOperandsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;",
            ">;"
        }
    .end annotation
.end field

.field private final configuration:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

.field private currentTagKey:Ljava/lang/String;

.field private currentTagValue:Ljava/lang/String;

.field private dataExport:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;

.field private destination:Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;

.field private filter:Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

.field private s3BucketDestination:Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

.field private storageClassAnalysis:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3114
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    .line 3115
    new-instance v0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    return-void
.end method


# virtual methods
.method protected doEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string p1, "AnalyticsConfiguration"

    .line 3164
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Id"

    .line 3165
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3166
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->setId(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string p1, "Filter"

    .line 3167
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3168
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->filter:Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->setFilter(Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;)V

    goto/16 :goto_0

    :cond_1
    const-string p1, "StorageClassAnalysis"

    .line 3169
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3170
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->storageClassAnalysis:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->setStorageClassAnalysis(Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;)V

    goto/16 :goto_0

    :cond_2
    const-string p1, "AnalyticsConfiguration"

    const-string p3, "Filter"

    .line 3172
    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_5

    const-string p1, "Prefix"

    .line 3173
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3174
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->filter:Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

    new-instance p2, Lcom/amazonaws/services/s3/model/analytics/AnalyticsPrefixPredicate;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsPrefixPredicate;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;->setPredicate(Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;)V

    goto/16 :goto_0

    :cond_3
    const-string p1, "Tag"

    .line 3175
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3176
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->filter:Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

    new-instance p2, Lcom/amazonaws/services/s3/model/analytics/AnalyticsTagPredicate;

    new-instance v0, Lcom/amazonaws/services/s3/model/Tag;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->currentTagKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->currentTagValue:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsTagPredicate;-><init>(Lcom/amazonaws/services/s3/model/Tag;)V

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;->setPredicate(Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;)V

    .line 3178
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->currentTagKey:Ljava/lang/String;

    .line 3179
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->currentTagValue:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    const-string p1, "And"

    .line 3180
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3181
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->filter:Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

    new-instance p2, Lcom/amazonaws/services/s3/model/analytics/AnalyticsAndOperator;

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->andOperandsList:Ljava/util/List;

    invoke-direct {p2, v0}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsAndOperator;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;->setPredicate(Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;)V

    .line 3182
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->andOperandsList:Ljava/util/List;

    goto/16 :goto_0

    :cond_5
    const-string p1, "AnalyticsConfiguration"

    const-string v0, "Filter"

    const-string v1, "Tag"

    .line 3184
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "Key"

    .line 3185
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3186
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->currentTagKey:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    const-string p1, "Value"

    .line 3187
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3188
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->currentTagValue:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const-string p1, "AnalyticsConfiguration"

    const-string v0, "Filter"

    const-string v1, "And"

    .line 3190
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "Prefix"

    .line 3191
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 3192
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->andOperandsList:Ljava/util/List;

    new-instance p2, Lcom/amazonaws/services/s3/model/analytics/AnalyticsPrefixPredicate;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsPrefixPredicate;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    const-string p1, "Tag"

    .line 3193
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3194
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->andOperandsList:Ljava/util/List;

    new-instance p2, Lcom/amazonaws/services/s3/model/analytics/AnalyticsTagPredicate;

    new-instance v0, Lcom/amazonaws/services/s3/model/Tag;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->currentTagKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->currentTagValue:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsTagPredicate;-><init>(Lcom/amazonaws/services/s3/model/Tag;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3196
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->currentTagKey:Ljava/lang/String;

    .line 3197
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->currentTagValue:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    const-string p1, "AnalyticsConfiguration"

    const-string p3, "Filter"

    const-string v0, "And"

    const-string v1, "Tag"

    .line 3199
    filled-new-array {p1, p3, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "Key"

    .line 3200
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 3201
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->currentTagKey:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const-string p1, "Value"

    .line 3202
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3203
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->currentTagValue:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const-string p1, "AnalyticsConfiguration"

    const-string p3, "StorageClassAnalysis"

    .line 3205
    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "DataExport"

    .line 3206
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3207
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->storageClassAnalysis:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->dataExport:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;->setDataExport(Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;)V

    goto/16 :goto_0

    :cond_c
    const-string p1, "AnalyticsConfiguration"

    const-string p3, "StorageClassAnalysis"

    const-string v0, "DataExport"

    .line 3209
    filled-new-array {p1, p3, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "OutputSchemaVersion"

    .line 3210
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 3211
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->dataExport:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;->setOutputSchemaVersion(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string p1, "Destination"

    .line 3212
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3213
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->dataExport:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->destination:Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;->setDestination(Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;)V

    goto/16 :goto_0

    :cond_e
    const-string p1, "AnalyticsConfiguration"

    const-string p3, "StorageClassAnalysis"

    const-string v0, "DataExport"

    const-string v1, "Destination"

    .line 3215
    filled-new-array {p1, p3, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "S3BucketDestination"

    .line 3217
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3218
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->destination:Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->s3BucketDestination:Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;->setS3BucketDestination(Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;)V

    goto :goto_0

    :cond_f
    const-string p1, "AnalyticsConfiguration"

    const-string p3, "StorageClassAnalysis"

    const-string v0, "DataExport"

    const-string v1, "Destination"

    const-string v2, "S3BucketDestination"

    .line 3220
    filled-new-array {p1, p3, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    const-string p1, "Format"

    .line 3222
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 3223
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->s3BucketDestination:Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->setFormat(Ljava/lang/String;)V

    goto :goto_0

    :cond_10
    const-string p1, "BucketAccountId"

    .line 3224
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 3225
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->s3BucketDestination:Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->setBucketAccountId(Ljava/lang/String;)V

    goto :goto_0

    :cond_11
    const-string p1, "Bucket"

    .line 3226
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 3227
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->s3BucketDestination:Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->setBucketArn(Ljava/lang/String;)V

    goto :goto_0

    :cond_12
    const-string p1, "Prefix"

    .line 3228
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3229
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->s3BucketDestination:Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->setPrefix(Ljava/lang/String;)V

    :cond_13
    :goto_0
    return-void
.end method

.method protected doStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    const-string p1, "AnalyticsConfiguration"

    .line 3136
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Filter"

    .line 3137
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3138
    new-instance p1, Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->filter:Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

    goto/16 :goto_0

    :cond_0
    const-string p1, "StorageClassAnalysis"

    .line 3139
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3140
    new-instance p1, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->storageClassAnalysis:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;

    goto/16 :goto_0

    :cond_1
    const-string p1, "AnalyticsConfiguration"

    const-string p3, "Filter"

    .line 3142
    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "And"

    .line 3143
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3144
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->andOperandsList:Ljava/util/List;

    goto :goto_0

    :cond_2
    const-string p1, "AnalyticsConfiguration"

    const-string p3, "StorageClassAnalysis"

    .line 3146
    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "DataExport"

    .line 3147
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3148
    new-instance p1, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->dataExport:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;

    goto :goto_0

    :cond_3
    const-string p1, "AnalyticsConfiguration"

    const-string p3, "StorageClassAnalysis"

    const-string p4, "DataExport"

    .line 3150
    filled-new-array {p1, p3, p4}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Destination"

    .line 3151
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3152
    new-instance p1, Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->destination:Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;

    goto :goto_0

    :cond_4
    const-string p1, "AnalyticsConfiguration"

    const-string p3, "StorageClassAnalysis"

    const-string p4, "DataExport"

    const-string v0, "Destination"

    .line 3154
    filled-new-array {p1, p3, p4, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "S3BucketDestination"

    .line 3156
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3157
    new-instance p1, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->s3BucketDestination:Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

    :cond_5
    :goto_0
    return-void
.end method

.method public getResult()Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationResult;
    .locals 2

    .line 3126
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationResult;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationResult;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    .line 3127
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationResult;->withAnalyticsConfiguration(Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;)Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationResult;

    move-result-object v0

    return-object v0
.end method
