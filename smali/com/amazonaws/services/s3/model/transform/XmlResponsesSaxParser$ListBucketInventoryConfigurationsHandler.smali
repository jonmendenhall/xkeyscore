.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBucketInventoryConfigurationsHandler"
.end annotation


# instance fields
.field private currentConfiguration:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

.field private currentDestination:Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

.field private currentFilter:Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

.field private currentOptionalFieldsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentS3BucketDestination:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

.field private currentSchedule:Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

.field private final result:Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3547
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    .line 3548
    new-instance v0, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->result:Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;

    return-void
.end method


# virtual methods
.method protected doEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p1, "ListInventoryConfigurationsResult"

    .line 3590
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_4

    const-string p1, "InventoryConfiguration"

    .line 3591
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3592
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->result:Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;->getInventoryConfigurationList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3593
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->result:Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;->setInventoryConfigurationList(Ljava/util/List;)V

    .line 3596
    :cond_0
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->result:Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;->getInventoryConfigurationList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentConfiguration:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3597
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentConfiguration:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    goto/16 :goto_0

    :cond_1
    const-string p1, "IsTruncated"

    .line 3598
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3599
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->result:Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;

    const-string p2, "true"

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;->setTruncated(Z)V

    goto/16 :goto_0

    :cond_2
    const-string p1, "ContinuationToken"

    .line 3600
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3601
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->result:Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;->setContinuationToken(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string p1, "NextContinuationToken"

    .line 3602
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3603
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->result:Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;->setNextContinuationToken(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string p1, "ListInventoryConfigurationsResult"

    const-string v0, "InventoryConfiguration"

    .line 3605
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "Id"

    .line 3606
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3607
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentConfiguration:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->setId(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string p1, "Destination"

    .line 3608
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3609
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentConfiguration:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentDestination:Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->setDestination(Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;)V

    .line 3610
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentDestination:Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

    goto/16 :goto_0

    :cond_6
    const-string p1, "IsEnabled"

    .line 3611
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 3612
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentConfiguration:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    const-string p2, "true"

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->setEnabled(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_7
    const-string p1, "Filter"

    .line 3613
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 3614
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentConfiguration:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentFilter:Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->setInventoryFilter(Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;)V

    .line 3615
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentFilter:Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

    goto/16 :goto_0

    :cond_8
    const-string p1, "IncludedObjectVersions"

    .line 3616
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 3617
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentConfiguration:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->setIncludedObjectVersions(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string p1, "Schedule"

    .line 3618
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 3619
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentConfiguration:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentSchedule:Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->setSchedule(Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;)V

    .line 3620
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentSchedule:Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

    goto/16 :goto_0

    :cond_a
    const-string p1, "OptionalFields"

    .line 3621
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3622
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentConfiguration:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentOptionalFieldsList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->setOptionalFields(Ljava/util/List;)V

    .line 3623
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentOptionalFieldsList:Ljava/util/List;

    goto/16 :goto_0

    :cond_b
    const-string p1, "ListInventoryConfigurationsResult"

    const-string v0, "InventoryConfiguration"

    const-string v1, "Destination"

    .line 3625
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "S3BucketDestination"

    .line 3627
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3628
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentDestination:Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentS3BucketDestination:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;->setS3BucketDestination(Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;)V

    .line 3629
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentS3BucketDestination:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    goto/16 :goto_0

    :cond_c
    const-string p1, "ListInventoryConfigurationsResult"

    const-string p3, "InventoryConfiguration"

    const-string v0, "Destination"

    const-string v1, "S3BucketDestination"

    .line 3631
    filled-new-array {p1, p3, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    const-string p1, "AccountId"

    .line 3633
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 3634
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentS3BucketDestination:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->setAccountId(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string p1, "Bucket"

    .line 3635
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 3636
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentS3BucketDestination:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->setBucketArn(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const-string p1, "Format"

    .line 3637
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 3638
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentS3BucketDestination:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string p1, "Prefix"

    .line 3639
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3640
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentS3BucketDestination:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->setPrefix(Ljava/lang/String;)V

    goto :goto_0

    :cond_10
    const-string p1, "ListInventoryConfigurationsResult"

    const-string p3, "InventoryConfiguration"

    const-string v0, "Filter"

    .line 3642
    filled-new-array {p1, p3, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "Prefix"

    .line 3644
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3645
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentFilter:Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

    new-instance p2, Lcom/amazonaws/services/s3/model/inventory/InventoryPrefixPredicate;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/inventory/InventoryPrefixPredicate;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;->setPredicate(Lcom/amazonaws/services/s3/model/inventory/InventoryFilterPredicate;)V

    goto :goto_0

    :cond_11
    const-string p1, "ListInventoryConfigurationsResult"

    const-string p3, "InventoryConfiguration"

    const-string v0, "Schedule"

    .line 3647
    filled-new-array {p1, p3, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, "Frequency"

    .line 3649
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3650
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentSchedule:Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;->setFrequency(Ljava/lang/String;)V

    goto :goto_0

    :cond_12
    const-string p1, "ListInventoryConfigurationsResult"

    const-string p3, "InventoryConfiguration"

    const-string v0, "OptionalFields"

    .line 3652
    filled-new-array {p1, p3, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    const-string p1, "Field"

    .line 3654
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3655
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentOptionalFieldsList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_0
    return-void
.end method

.method protected doStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    const-string p1, "ListInventoryConfigurationsResult"

    .line 3566
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "InventoryConfiguration"

    .line 3567
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3568
    new-instance p1, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentConfiguration:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    goto :goto_0

    :cond_0
    const-string p1, "ListInventoryConfigurationsResult"

    const-string p3, "InventoryConfiguration"

    .line 3570
    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Destination"

    .line 3571
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3572
    new-instance p1, Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentDestination:Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

    goto :goto_0

    :cond_1
    const-string p1, "Filter"

    .line 3573
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3574
    new-instance p1, Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentFilter:Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

    goto :goto_0

    :cond_2
    const-string p1, "Schedule"

    .line 3575
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3576
    new-instance p1, Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentSchedule:Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

    goto :goto_0

    :cond_3
    const-string p1, "OptionalFields"

    .line 3577
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3578
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentOptionalFieldsList:Ljava/util/List;

    goto :goto_0

    :cond_4
    const-string p1, "ListInventoryConfigurationsResult"

    const-string p3, "InventoryConfiguration"

    const-string p4, "Destination"

    .line 3580
    filled-new-array {p1, p3, p4}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "S3BucketDestination"

    .line 3582
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3583
    new-instance p1, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->currentS3BucketDestination:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    :cond_5
    :goto_0
    return-void
.end method

.method public getResult()Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;
    .locals 1

    .line 3557
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->result:Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;

    return-object v0
.end method
