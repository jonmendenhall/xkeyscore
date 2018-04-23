.class public Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;
.super Ljava/lang/Object;
.source "BucketConfigurationXmlFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$MetricsPredicateVisitorImpl;,
        Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$AnalyticsPredicateVisitorImpl;,
        Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$LifecyclePredicateVisitorImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->writePrefix(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/Tag;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->writeTag(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/Tag;)V

    return-void
.end method

.method private addEventsAndFilterCriteria(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/NotificationConfiguration;)V
    .locals 3

    .line 216
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->getEvents()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Event"

    .line 217
    invoke-virtual {p1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->getFilter()Lcom/amazonaws/services/s3/model/Filter;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 222
    invoke-direct {p0, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->validateFilter(Lcom/amazonaws/services/s3/model/Filter;)V

    const-string v0, "Filter"

    .line 223
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 224
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/Filter;->getS3KeyFilter()Lcom/amazonaws/services/s3/model/S3KeyFilter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 225
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/Filter;->getS3KeyFilter()Lcom/amazonaws/services/s3/model/S3KeyFilter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->validateS3KeyFilter(Lcom/amazonaws/services/s3/model/S3KeyFilter;)V

    const-string v0, "S3Key"

    .line 226
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 227
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/Filter;->getS3KeyFilter()Lcom/amazonaws/services/s3/model/S3KeyFilter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/S3KeyFilter;->getFilterRules()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/FilterRule;

    const-string v1, "FilterRule"

    .line 228
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v1, "Name"

    .line 229
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/FilterRule;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v1, "Value"

    .line 230
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/FilterRule;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 231
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_1

    .line 233
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 235
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    :cond_3
    return-void
.end method

.method private addInventoryOptionalFields(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/internal/XmlWriter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 767
    invoke-direct {p0, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "OptionalFields"

    .line 771
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 772
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Field"

    .line 773
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_0

    .line 775
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method

.method private addInventorySchedule(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "Schedule"

    .line 761
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v0, "Frequency"

    .line 762
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;->getFrequency()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->addParameterIfNotNull(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method

.method private addNoncurrentTransitions(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/internal/XmlWriter;",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_4

    .line 500
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 504
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    if-eqz v0, :cond_1

    const-string v1, "NoncurrentVersionTransition"

    .line 506
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 507
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->getDays()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const-string v1, "NoncurrentDays"

    .line 508
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 509
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->getDays()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 510
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    :cond_2
    const-string v1, "StorageClass"

    .line 513
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 514
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->getStorageClass()Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 515
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 516
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private addParameterIfNotNull(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 993
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    :cond_0
    return-void
.end method

.method private addTransitions(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/internal/XmlWriter;",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 472
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 476
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    if-eqz v0, :cond_1

    const-string v1, "Transition"

    .line 478
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 479
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->getDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "Date"

    .line 480
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 481
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->formatIso8601Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 482
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 484
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->getDays()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const-string v1, "Days"

    .line 485
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 486
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->getDays()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 487
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    :cond_3
    const-string v1, "StorageClass"

    .line 490
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 491
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->getStorageClass()Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 492
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 493
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method private hasCurrentExpirationPolicy(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;)Z
    .locals 2

    .line 570
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getExpirationInDays()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getExpirationDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    .line 571
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->isExpiredObjectDeleteMarker()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private hasTags(Lcom/amazonaws/services/s3/model/TagSet;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 790
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/TagSet;->getAllTags()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/TagSet;->getAllTags()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isNullOrEmpty(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1023
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private validateFilter(Lcom/amazonaws/services/s3/model/Filter;)V
    .locals 1

    .line 240
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/Filter;->getS3KeyFilter()Lcom/amazonaws/services/s3/model/S3KeyFilter;

    move-result-object p1

    if-nez p1, :cond_0

    .line 241
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Cannot have a Filter without any criteria"

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method

.method private validateS3KeyFilter(Lcom/amazonaws/services/s3/model/S3KeyFilter;)V
    .locals 1

    .line 249
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/S3KeyFilter;->getFilterRules()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 250
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Cannot have an S3KeyFilter without any filter rules"

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method

.method private writeAnalyticsExportDestination(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "Destination"

    .line 873
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 875
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;->getS3BucketDestination()Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "S3BucketDestination"

    .line 876
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 878
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;->getS3BucketDestination()Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

    move-result-object p2

    const-string v0, "Format"

    .line 879
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->addParameterIfNotNull(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BucketAccountId"

    .line 880
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->getBucketAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->addParameterIfNotNull(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Bucket"

    .line 881
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->getBucketArn()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->addParameterIfNotNull(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Prefix"

    .line 882
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->getPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->addParameterIfNotNull(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 886
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method

.method private writeAnalyticsFilter(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "Filter"

    .line 833
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 834
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;->getPredicate()Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->writeAnalyticsFilterPredicate(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;)V

    .line 835
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method

.method private writeAnalyticsFilterPredicate(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 843
    :cond_0
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$AnalyticsPredicateVisitorImpl;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$AnalyticsPredicateVisitorImpl;-><init>(Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;Lcom/amazonaws/services/s3/internal/XmlWriter;)V

    invoke-virtual {p2, v0}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;->accept(Lcom/amazonaws/services/s3/model/analytics/AnalyticsPredicateVisitor;)V

    return-void
.end method

.method private writeInventoryDestination(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "Destination"

    .line 722
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 724
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;->getS3BucketDestination()Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "S3BucketDestination"

    .line 726
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v0, "AccountId"

    .line 727
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->addParameterIfNotNull(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Bucket"

    .line 728
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->getBucketArn()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->addParameterIfNotNull(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Prefix"

    .line 729
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->addParameterIfNotNull(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Format"

    .line 730
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->getFormat()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->addParameterIfNotNull(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 733
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method

.method private writeInventoryFilter(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "Filter"

    .line 741
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 742
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;->getPredicate()Lcom/amazonaws/services/s3/model/inventory/InventoryFilterPredicate;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->writeInventoryFilterPredicate(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/inventory/InventoryFilterPredicate;)V

    .line 743
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method

.method private writeInventoryFilterPredicate(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/inventory/InventoryFilterPredicate;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 751
    :cond_0
    instance-of v0, p2, Lcom/amazonaws/services/s3/model/inventory/InventoryPrefixPredicate;

    if-eqz v0, :cond_1

    .line 752
    check-cast p2, Lcom/amazonaws/services/s3/model/inventory/InventoryPrefixPredicate;

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryPrefixPredicate;->getPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->writePrefix(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private writeLifecycleFilter(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "Filter"

    .line 526
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 527
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;->getPredicate()Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->writeLifecycleFilterPredicate(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;)V

    .line 528
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method

.method private writeLifecycleFilterPredicate(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 535
    :cond_0
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$LifecyclePredicateVisitorImpl;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$LifecyclePredicateVisitorImpl;-><init>(Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;Lcom/amazonaws/services/s3/internal/XmlWriter;)V

    invoke-virtual {p2, v0}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;->accept(Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePredicateVisitor;)V

    return-void
.end method

.method private writeMetricsFilter(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "Filter"

    .line 951
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 952
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;->getPredicate()Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->writeMetricsFilterPredicate(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;)V

    .line 953
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method

.method private writeMetricsFilterPredicate(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 961
    :cond_0
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$MetricsPredicateVisitorImpl;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$MetricsPredicateVisitorImpl;-><init>(Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;Lcom/amazonaws/services/s3/internal/XmlWriter;)V

    invoke-virtual {p2, v0}, Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;->accept(Lcom/amazonaws/services/s3/model/metrics/MetricsPredicateVisitor;)V

    return-void
.end method

.method private writePrefix(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;)V
    .locals 1

    .line 1000
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getFilter()Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Prefix"

    .line 1001
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getPrefix()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_1

    .line 1002
    :cond_1
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getPrefix()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1003
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Prefix cannot be used with Filter. Use LifecyclePrefixPredicate to create a LifecycleFilter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method private writePrefix(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Prefix"

    .line 1009
    invoke-direct {p0, p1, v0, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->addParameterIfNotNull(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private writeRule(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;)V
    .locals 4

    const-string v0, "Rule"

    .line 422
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 423
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "ID"

    .line 424
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 426
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->writePrefix(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;)V

    const-string v0, "Status"

    .line 427
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 428
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getFilter()Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->writeLifecycleFilter(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;)V

    .line 430
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getTransitions()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->addTransitions(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/util/List;)V

    .line 431
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getNoncurrentVersionTransitions()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->addNoncurrentTransitions(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/util/List;)V

    .line 433
    invoke-direct {p0, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->hasCurrentExpirationPolicy(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    const-string v0, "Expiration"

    .line 437
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 438
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getExpirationInDays()I

    move-result v0

    if-eq v0, v1, :cond_1

    const-string v0, "Days"

    .line 439
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getExpirationInDays()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 441
    :cond_1
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getExpirationDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "Date"

    .line 442
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getExpirationDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->formatIso8601Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 445
    :cond_2
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->isExpiredObjectDeleteMarker()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const-string v0, "ExpiredObjectDeleteMarker"

    .line 446
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 448
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 451
    :cond_4
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getNoncurrentVersionExpirationInDays()I

    move-result v0

    if-eq v0, v1, :cond_5

    const-string v0, "NoncurrentVersionExpiration"

    .line 452
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v0, "NoncurrentDays"

    .line 453
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    .line 455
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getNoncurrentVersionExpirationInDays()I

    move-result v1

    .line 454
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    .line 456
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 457
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 460
    :cond_5
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getAbortIncompleteMultipartUpload()Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "AbortIncompleteMultipartUpload"

    .line 461
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v0, "DaysAfterInitiation"

    .line 462
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    .line 463
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getAbortIncompleteMultipartUpload()Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;->getDaysAfterInitiation()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 462
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p2

    .line 464
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 465
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 468
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method

.method private writeRule(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/CORSRule;)V
    .locals 3

    const-string v0, "CORSRule"

    .line 575
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 576
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "ID"

    .line 577
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 579
    :cond_0
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->getAllowedOrigins()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 580
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->getAllowedOrigins()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "AllowedOrigin"

    .line 581
    invoke-virtual {p1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_0

    .line 584
    :cond_1
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->getAllowedMethods()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 585
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->getAllowedMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    const-string v2, "AllowedMethod"

    .line 586
    invoke-virtual {p1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_1

    .line 589
    :cond_2
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->getMaxAgeSeconds()I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "MaxAgeSeconds"

    .line 590
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->getMaxAgeSeconds()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 592
    :cond_3
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->getExposedHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 593
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->getExposedHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "ExposeHeader"

    .line 594
    invoke-virtual {p1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_2

    .line 597
    :cond_4
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->getAllowedHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 598
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->getAllowedHeaders()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "AllowedHeader"

    .line 599
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_3

    .line 602
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method

.method private writeRule(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/RoutingRule;)V
    .locals 2

    const-string v0, "RoutingRule"

    .line 606
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 607
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RoutingRule;->getCondition()Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Condition"

    .line 609
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v1, "KeyPrefixEquals"

    .line 610
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 611
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;->getKeyPrefixEquals()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 612
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;->getKeyPrefixEquals()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 614
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 616
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;->getHttpErrorCodeReturnedEquals()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "HttpErrorCodeReturnedEquals "

    .line 617
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    .line 618
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;->getHttpErrorCodeReturnedEquals()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 621
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    :cond_2
    const-string v0, "Redirect"

    .line 624
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 625
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RoutingRule;->getRedirect()Lcom/amazonaws/services/s3/model/RedirectRule;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 627
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RedirectRule;->getprotocol()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "Protocol"

    .line 628
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RedirectRule;->getprotocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 631
    :cond_3
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RedirectRule;->getHostName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "HostName"

    .line 632
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RedirectRule;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 635
    :cond_4
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RedirectRule;->getReplaceKeyPrefixWith()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "ReplaceKeyPrefixWith"

    .line 636
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RedirectRule;->getReplaceKeyPrefixWith()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 639
    :cond_5
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RedirectRule;->getReplaceKeyWith()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "ReplaceKeyWith"

    .line 640
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RedirectRule;->getReplaceKeyWith()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 643
    :cond_6
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RedirectRule;->getHttpRedirectCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "HttpRedirectCode"

    .line 644
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RedirectRule;->getHttpRedirectCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 647
    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 648
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method

.method private writeRule(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/TagSet;)V
    .locals 3

    const-string v0, "TagSet"

    .line 779
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 780
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/TagSet;->getAllTags()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Tag"

    .line 781
    invoke-virtual {p1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v2, "Key"

    .line 782
    invoke-virtual {p1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v2, "Value"

    .line 783
    invoke-virtual {p1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {p2, v1}, Lcom/amazonaws/services/s3/model/TagSet;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 784
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_0

    .line 786
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method

.method private writeStorageClassAnalysis(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "StorageClassAnalysis"

    .line 852
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 853
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;->getDataExport()Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 854
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;->getDataExport()Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;

    move-result-object p2

    const-string v0, "DataExport"

    .line 856
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v0, "OutputSchemaVersion"

    .line 858
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;->getOutputSchemaVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->addParameterIfNotNull(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;->getDestination()Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->writeAnalyticsExportDestination(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;)V

    .line 861
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 864
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method

.method private writeTag(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/Tag;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "Tag"

    .line 1016
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v0, "Key"

    .line 1017
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/Tag;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v0, "Value"

    .line 1018
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/Tag;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 1019
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method


# virtual methods
.method public convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;)[B
    .locals 4

    .line 123
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "AccelerateConfiguration"

    const-string v2, "xmlns"

    const-string v3, "http://s3.amazonaws.com/doc/2006-03-01/"

    .line 124
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v1, "Status"

    .line 125
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 126
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 127
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 409
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "CORSConfiguration"

    const-string v2, "xmlns"

    const-string v3, "http://s3.amazonaws.com/doc/2006-03-01/"

    .line 410
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 412
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;->getRules()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/CORSRule;

    .line 413
    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->writeRule(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/CORSRule;)V

    goto :goto_0

    .line 416
    :cond_0
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 418
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 381
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "LifecycleConfiguration"

    .line 382
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 384
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;->getRules()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 385
    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->writeRule(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;)V

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 390
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;)[B
    .locals 4

    .line 138
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->getLogFilePrefix()Ljava/lang/String;

    move-result-object v0

    .line 143
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "BucketLoggingStatus"

    const-string v2, "xmlns"

    const-string v3, "http://s3.amazonaws.com/doc/2006-03-01/"

    .line 144
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 145
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LoggingEnabled"

    .line 146
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v1, "TargetBucket"

    .line 147
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v1, "TargetPrefix"

    .line 148
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->getLogFilePrefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 149
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 151
    :cond_0
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 153
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;)[B
    .locals 5

    .line 164
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "NotificationConfiguration"

    const-string v2, "xmlns"

    const-string v3, "http://s3.amazonaws.com/doc/2006-03-01/"

    .line 165
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 167
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->getConfigurations()Ljava/util/Map;

    move-result-object p1

    .line 170
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 169
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 171
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 172
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/NotificationConfiguration;

    .line 173
    instance-of v3, v1, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;

    if-eqz v3, :cond_1

    const-string v3, "TopicConfiguration"

    .line 174
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v3, "Id"

    .line 175
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v2, "Topic"

    .line 176
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;

    .line 177
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;->getTopicARN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    .line 178
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 179
    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->addEventsAndFilterCriteria(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/NotificationConfiguration;)V

    .line 180
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_0

    .line 181
    :cond_1
    instance-of v3, v1, Lcom/amazonaws/services/s3/model/QueueConfiguration;

    if-eqz v3, :cond_2

    const-string v3, "QueueConfiguration"

    .line 182
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v3, "Id"

    .line 183
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v2, "Queue"

    .line 184
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/amazonaws/services/s3/model/QueueConfiguration;

    .line 185
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/QueueConfiguration;->getQueueARN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    .line 186
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 187
    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->addEventsAndFilterCriteria(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/NotificationConfiguration;)V

    .line 188
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_0

    .line 189
    :cond_2
    instance-of v3, v1, Lcom/amazonaws/services/s3/model/CloudFunctionConfiguration;

    if-eqz v3, :cond_3

    const-string v3, "CloudFunctionConfiguration"

    .line 190
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v3, "Id"

    .line 191
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v2, "InvocationRole"

    .line 192
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/amazonaws/services/s3/model/CloudFunctionConfiguration;

    .line 194
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CloudFunctionConfiguration;->getInvocationRoleARN()Ljava/lang/String;

    move-result-object v4

    .line 193
    invoke-virtual {v2, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    .line 195
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v2, "CloudFunction"

    .line 196
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    .line 197
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CloudFunctionConfiguration;->getCloudFunctionARN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    .line 198
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 199
    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->addEventsAndFilterCriteria(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/NotificationConfiguration;)V

    .line 200
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto/16 :goto_0

    .line 201
    :cond_3
    instance-of v3, v1, Lcom/amazonaws/services/s3/model/LambdaConfiguration;

    if-eqz v3, :cond_0

    const-string v3, "CloudFunctionConfiguration"

    .line 202
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v3, "Id"

    .line 203
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v2, "CloudFunction"

    .line 204
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/amazonaws/services/s3/model/LambdaConfiguration;

    .line 205
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/LambdaConfiguration;->getFunctionARN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    .line 206
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 207
    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->addEventsAndFilterCriteria(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/NotificationConfiguration;)V

    .line 208
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto/16 :goto_0

    .line 211
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 212
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;)[B
    .locals 4

    .line 255
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "ReplicationConfiguration"

    .line 256
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 258
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->getRules()Ljava/util/Map;

    move-result-object v1

    .line 260
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->getRoleARN()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Role"

    .line 261
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 263
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 262
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 264
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 265
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/ReplicationRule;

    const-string v3, "Rule"

    .line 267
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v3, "ID"

    .line 268
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v2, "Prefix"

    .line 269
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ReplicationRule;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v2, "Status"

    .line 270
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ReplicationRule;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 272
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ReplicationRule;->getDestinationConfig()Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;

    move-result-object v1

    const-string v2, "Destination"

    .line 273
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v2, "Bucket"

    .line 274
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->getBucketARN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 275
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->getStorageClass()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "StorageClass"

    .line 276
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->getStorageClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 278
    :cond_0
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 280
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto/16 :goto_0

    .line 282
    :cond_1
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 283
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 665
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "Tagging"

    .line 666
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 668
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;->getAllTagSets()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/TagSet;

    .line 669
    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->writeRule(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/TagSet;)V

    goto :goto_0

    .line 672
    :cond_0
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 674
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;)[B
    .locals 4

    .line 98
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "VersioningConfiguration"

    const-string v2, "xmlns"

    const-string v3, "http://s3.amazonaws.com/doc/2006-03-01/"

    .line 99
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v1, "Status"

    .line 100
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 102
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->isMfaDeleteEnabled()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "MfaDelete"

    .line 105
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p1

    const-string v1, "Enabled"

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_0

    :cond_0
    const-string p1, "MfaDelete"

    .line 107
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p1

    const-string v1, "Disabled"

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 111
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 113
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;)[B
    .locals 5

    .line 298
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "WebsiteConfiguration"

    const-string v2, "xmlns"

    const-string v3, "http://s3.amazonaws.com/doc/2006-03-01/"

    .line 299
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 301
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->getIndexDocumentSuffix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "IndexDocument"

    .line 302
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    const-string v2, "Suffix"

    .line 303
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    .line 304
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->getIndexDocumentSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 305
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 308
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->getErrorDocument()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "ErrorDocument"

    .line 309
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    const-string v2, "Key"

    .line 310
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->getErrorDocument()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 311
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 314
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->getRedirectAllRequestsTo()Lcom/amazonaws/services/s3/model/RedirectRule;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v2, "RedirectAllRequestsTo"

    .line 316
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    .line 317
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/RedirectRule;->getprotocol()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "Protocol"

    .line 318
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/RedirectRule;->getprotocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 321
    :cond_2
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/RedirectRule;->getHostName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, "HostName"

    .line 322
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/RedirectRule;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 325
    :cond_3
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/RedirectRule;->getReplaceKeyPrefixWith()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v3, "ReplaceKeyPrefixWith"

    .line 326
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    .line 327
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/RedirectRule;->getReplaceKeyPrefixWith()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 330
    :cond_4
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/RedirectRule;->getReplaceKeyWith()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v3, "ReplaceKeyWith"

    .line 331
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/RedirectRule;->getReplaceKeyWith()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 333
    :cond_5
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 336
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->getRoutingRules()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 337
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->getRoutingRules()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    const-string v1, "RoutingRules"

    .line 339
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    .line 340
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->getRoutingRules()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/s3/model/RoutingRule;

    .line 341
    invoke-direct {p0, v1, v2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->writeRule(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/RoutingRule;)V

    goto :goto_0

    .line 344
    :cond_7
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 347
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 348
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public convertToXmlByteArray(Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 815
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "AnalyticsConfiguration"

    const-string v2, "xmlns"

    const-string v3, "http://s3.amazonaws.com/doc/2006-03-01/"

    .line 817
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v1, "Id"

    .line 819
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->addParameterIfNotNull(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->getFilter()Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->writeAnalyticsFilter(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;)V

    .line 821
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->getStorageClassAnalysis()Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->writeStorageClassAnalysis(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;)V

    .line 823
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 825
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public convertToXmlByteArray(Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 700
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "InventoryConfiguration"

    const-string v2, "xmlns"

    const-string v3, "http://s3.amazonaws.com/doc/2006-03-01/"

    .line 701
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v1, "Id"

    .line 703
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v1, "IsEnabled"

    .line 704
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->isEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v1, "IncludedObjectVersions"

    .line 705
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->getIncludedObjectVersions()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 707
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->getDestination()Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->writeInventoryDestination(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;)V

    .line 708
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->getInventoryFilter()Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->writeInventoryFilter(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;)V

    .line 709
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->getSchedule()Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->addInventorySchedule(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;)V

    .line 710
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->getOptionalFields()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->addInventoryOptionalFields(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/util/List;)V

    .line 712
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 714
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public convertToXmlByteArray(Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 934
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "MetricsConfiguration"

    const-string v2, "xmlns"

    const-string v3, "http://s3.amazonaws.com/doc/2006-03-01/"

    .line 936
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v1, "Id"

    .line 938
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->addParameterIfNotNull(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;->getFilter()Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->writeMetricsFilter(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;)V

    .line 941
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 943
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->getBytes()[B

    move-result-object p1

    return-object p1
.end method
