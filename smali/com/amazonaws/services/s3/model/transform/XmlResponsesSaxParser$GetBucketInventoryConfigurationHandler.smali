.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetBucketInventoryConfigurationHandler"
.end annotation


# instance fields
.field private final configuration:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

.field private filter:Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

.field private inventoryDestination:Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

.field private inventorySchedule:Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

.field private optionalFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final result:Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;

.field private s3BucketDestination:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3438
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    .line 3439
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->result:Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;

    .line 3440
    new-instance v0, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    return-void
.end method


# virtual methods
.method protected doEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string p1, "InventoryConfiguration"

    .line 3476
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_6

    const-string p1, "Id"

    .line 3477
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3478
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->setId(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string p1, "Destination"

    .line 3479
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3480
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->inventoryDestination:Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->setDestination(Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;)V

    .line 3481
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->inventoryDestination:Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

    goto/16 :goto_0

    :cond_1
    const-string p1, "IsEnabled"

    .line 3482
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3483
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    const-string p2, "true"

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->setEnabled(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_2
    const-string p1, "Filter"

    .line 3484
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3485
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->filter:Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->setInventoryFilter(Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;)V

    .line 3486
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->filter:Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

    goto/16 :goto_0

    :cond_3
    const-string p1, "IncludedObjectVersions"

    .line 3487
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3488
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->setIncludedObjectVersions(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string p1, "Schedule"

    .line 3489
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3490
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->inventorySchedule:Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->setSchedule(Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;)V

    .line 3491
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->inventorySchedule:Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

    goto/16 :goto_0

    :cond_5
    const-string p1, "OptionalFields"

    .line 3492
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 3493
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->optionalFields:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->setOptionalFields(Ljava/util/List;)V

    .line 3494
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->optionalFields:Ljava/util/List;

    goto/16 :goto_0

    :cond_6
    const-string p1, "InventoryConfiguration"

    const-string v0, "Destination"

    .line 3496
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "S3BucketDestination"

    .line 3497
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 3498
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->inventoryDestination:Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->s3BucketDestination:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;->setS3BucketDestination(Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;)V

    .line 3499
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->s3BucketDestination:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    goto/16 :goto_0

    :cond_7
    const-string p1, "InventoryConfiguration"

    const-string p3, "Destination"

    const-string v0, "S3BucketDestination"

    .line 3501
    filled-new-array {p1, p3, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "AccountId"

    .line 3502
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 3503
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->s3BucketDestination:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->setAccountId(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string p1, "Bucket"

    .line 3504
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 3505
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->s3BucketDestination:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->setBucketArn(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string p1, "Format"

    .line 3506
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 3507
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->s3BucketDestination:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string p1, "Prefix"

    .line 3508
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 3509
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->s3BucketDestination:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->setPrefix(Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    const-string p1, "InventoryConfiguration"

    const-string p3, "Filter"

    .line 3511
    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "Prefix"

    .line 3512
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 3513
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->filter:Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

    new-instance p2, Lcom/amazonaws/services/s3/model/inventory/InventoryPrefixPredicate;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/inventory/InventoryPrefixPredicate;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;->setPredicate(Lcom/amazonaws/services/s3/model/inventory/InventoryFilterPredicate;)V

    goto :goto_0

    :cond_c
    const-string p1, "InventoryConfiguration"

    const-string p3, "Schedule"

    .line 3515
    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "Frequency"

    .line 3516
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 3517
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->inventorySchedule:Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;->setFrequency(Ljava/lang/String;)V

    goto :goto_0

    :cond_d
    const-string p1, "InventoryConfiguration"

    const-string p3, "OptionalFields"

    .line 3519
    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "Field"

    .line 3520
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 3521
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->optionalFields:Ljava/util/List;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_0
    return-void
.end method

.method protected doStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    const-string p1, "InventoryConfiguration"

    .line 3457
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Destination"

    .line 3458
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3459
    new-instance p1, Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->inventoryDestination:Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

    goto :goto_0

    :cond_0
    const-string p1, "Filter"

    .line 3460
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3461
    new-instance p1, Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->filter:Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

    goto :goto_0

    :cond_1
    const-string p1, "Schedule"

    .line 3462
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3463
    new-instance p1, Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->inventorySchedule:Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

    goto :goto_0

    :cond_2
    const-string p1, "OptionalFields"

    .line 3464
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3465
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->optionalFields:Ljava/util/List;

    goto :goto_0

    :cond_3
    const-string p1, "InventoryConfiguration"

    const-string p3, "Destination"

    .line 3467
    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "S3BucketDestination"

    .line 3468
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3469
    new-instance p1, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->s3BucketDestination:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    :cond_4
    :goto_0
    return-void
.end method

.method public getResult()Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;
    .locals 2

    .line 3448
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->result:Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;->withInventoryConfiguration(Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;)Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;

    move-result-object v0

    return-object v0
.end method
