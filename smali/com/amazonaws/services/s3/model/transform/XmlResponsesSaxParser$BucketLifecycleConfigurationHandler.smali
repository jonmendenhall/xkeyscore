.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketLifecycleConfigurationHandler"
.end annotation


# instance fields
.field private abortIncompleteMultipartUpload:Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

.field private andOperandsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;",
            ">;"
        }
    .end annotation
.end field

.field private final configuration:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;

.field private currentFilter:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

.field private currentNcvTransition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

.field private currentRule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

.field private currentTagKey:Ljava/lang/String;

.field private currentTagValue:Ljava/lang/String;

.field private currentTransition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2589
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    .line 2591
    new-instance v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;

    return-void
.end method


# virtual methods
.method protected doEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string p1, "LifecycleConfiguration"

    .line 2637
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    const-string p1, "Rule"

    .line 2638
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 2639
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;->getRules()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentRule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2640
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentRule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    goto/16 :goto_0

    :cond_0
    const-string p1, "LifecycleConfiguration"

    const-string v0, "Rule"

    .line 2644
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "ID"

    .line 2645
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2646
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentRule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setId(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string p1, "Prefix"

    .line 2648
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2649
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentRule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setPrefix(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string p1, "Status"

    .line 2651
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2652
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentRule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string p1, "Transition"

    .line 2654
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2655
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentRule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentTransition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->addTransition(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 2656
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentTransition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    goto/16 :goto_0

    :cond_4
    const-string p1, "NoncurrentVersionTransition"

    .line 2658
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2659
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentRule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentNcvTransition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->addNoncurrentVersionTransition(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 2661
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentNcvTransition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    goto/16 :goto_0

    :cond_5
    const-string p1, "AbortIncompleteMultipartUpload"

    .line 2662
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2663
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentRule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->abortIncompleteMultipartUpload:Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setAbortIncompleteMultipartUpload(Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;)V

    .line 2664
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->abortIncompleteMultipartUpload:Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

    goto/16 :goto_0

    :cond_6
    const-string p1, "Filter"

    .line 2665
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 2666
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentRule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentFilter:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setFilter(Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;)V

    .line 2667
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentFilter:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

    goto/16 :goto_0

    :cond_7
    const-string p1, "LifecycleConfiguration"

    const-string v0, "Rule"

    const-string v1, "Expiration"

    .line 2671
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "Date"

    .line 2672
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2673
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentRule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setExpirationDate(Ljava/util/Date;)V

    goto/16 :goto_0

    :cond_8
    const-string p1, "Days"

    .line 2674
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2675
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentRule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setExpirationInDays(I)V

    goto/16 :goto_0

    :cond_9
    const-string p1, "ExpiredObjectDeleteMarker"

    .line 2676
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const-string p1, "true"

    .line 2677
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 2678
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentRule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setExpiredObjectDeleteMarker(Z)V

    goto/16 :goto_0

    :cond_a
    const-string p1, "LifecycleConfiguration"

    const-string v0, "Rule"

    const-string v1, "Transition"

    .line 2683
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "StorageClass"

    .line 2684
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 2685
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentTransition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->setStorageClass(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string p1, "Date"

    .line 2686
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 2687
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentTransition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    .line 2688
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    .line 2687
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->setDate(Ljava/util/Date;)V

    goto/16 :goto_0

    :cond_c
    const-string p1, "Days"

    .line 2690
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 2691
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentTransition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->setDays(I)V

    goto/16 :goto_0

    :cond_d
    const-string p1, "LifecycleConfiguration"

    const-string v0, "Rule"

    const-string v1, "NoncurrentVersionExpiration"

    .line 2695
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "NoncurrentDays"

    .line 2696
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 2697
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentRule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 2698
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 2697
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setNoncurrentVersionExpirationInDays(I)V

    goto/16 :goto_0

    :cond_e
    const-string p1, "LifecycleConfiguration"

    const-string v0, "Rule"

    const-string v1, "NoncurrentVersionTransition"

    .line 2702
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    const-string p1, "StorageClass"

    .line 2703
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 2704
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentNcvTransition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->setStorageClass(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string p1, "NoncurrentDays"

    .line 2705
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 2706
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentNcvTransition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->setDays(I)V

    goto/16 :goto_0

    :cond_10
    const-string p1, "LifecycleConfiguration"

    const-string v0, "Rule"

    const-string v1, "AbortIncompleteMultipartUpload"

    .line 2710
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "DaysAfterInitiation"

    .line 2711
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 2712
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->abortIncompleteMultipartUpload:Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

    .line 2713
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;->setDaysAfterInitiation(I)V

    goto/16 :goto_0

    :cond_11
    const-string p1, "LifecycleConfiguration"

    const-string v0, "Rule"

    const-string v1, "Filter"

    .line 2717
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    const-string p1, "Prefix"

    .line 2718
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 2719
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentFilter:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

    new-instance p2, Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePrefixPredicate;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePrefixPredicate;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;->setPredicate(Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;)V

    goto/16 :goto_0

    :cond_12
    const-string p1, "Tag"

    .line 2720
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 2721
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentFilter:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

    new-instance p2, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleTagPredicate;

    new-instance v0, Lcom/amazonaws/services/s3/model/Tag;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentTagKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentTagValue:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleTagPredicate;-><init>(Lcom/amazonaws/services/s3/model/Tag;)V

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;->setPredicate(Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;)V

    .line 2723
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentTagKey:Ljava/lang/String;

    .line 2724
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentTagValue:Ljava/lang/String;

    goto/16 :goto_0

    :cond_13
    const-string p1, "And"

    .line 2725
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 2726
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentFilter:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

    new-instance p2, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleAndOperator;

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->andOperandsList:Ljava/util/List;

    invoke-direct {p2, v0}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleAndOperator;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;->setPredicate(Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;)V

    .line 2727
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->andOperandsList:Ljava/util/List;

    goto/16 :goto_0

    :cond_14
    const-string p1, "LifecycleConfiguration"

    const-string v0, "Rule"

    const-string v1, "Filter"

    const-string v2, "Tag"

    .line 2731
    filled-new-array {p1, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    const-string p1, "Key"

    .line 2732
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 2733
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentTagKey:Ljava/lang/String;

    goto/16 :goto_0

    :cond_15
    const-string p1, "Value"

    .line 2734
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 2735
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentTagValue:Ljava/lang/String;

    goto/16 :goto_0

    :cond_16
    const-string p1, "LifecycleConfiguration"

    const-string v0, "Rule"

    const-string v1, "Filter"

    const-string v2, "And"

    .line 2739
    filled-new-array {p1, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    const-string p1, "Prefix"

    .line 2740
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 2741
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->andOperandsList:Ljava/util/List;

    new-instance p2, Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePrefixPredicate;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePrefixPredicate;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_17
    const-string p1, "Tag"

    .line 2742
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 2743
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->andOperandsList:Ljava/util/List;

    new-instance p2, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleTagPredicate;

    new-instance v0, Lcom/amazonaws/services/s3/model/Tag;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentTagKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentTagValue:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleTagPredicate;-><init>(Lcom/amazonaws/services/s3/model/Tag;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2745
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentTagKey:Ljava/lang/String;

    .line 2746
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentTagValue:Ljava/lang/String;

    goto :goto_0

    :cond_18
    const-string p1, "LifecycleConfiguration"

    const-string p3, "Rule"

    const-string v0, "Filter"

    const-string v1, "And"

    const-string v2, "Tag"

    .line 2750
    filled-new-array {p1, p3, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const-string p1, "Key"

    .line 2751
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 2752
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentTagKey:Ljava/lang/String;

    goto :goto_0

    :cond_19
    const-string p1, "Value"

    .line 2753
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 2754
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentTagValue:Ljava/lang/String;

    :cond_1a
    :goto_0
    return-void
.end method

.method protected doStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    const-string p1, "LifecycleConfiguration"

    .line 2614
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Rule"

    .line 2615
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2616
    new-instance p1, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentRule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    goto :goto_0

    :cond_0
    const-string p1, "LifecycleConfiguration"

    const-string p3, "Rule"

    .line 2618
    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Transition"

    .line 2619
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2620
    new-instance p1, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentTransition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    goto :goto_0

    :cond_1
    const-string p1, "NoncurrentVersionTransition"

    .line 2621
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2622
    new-instance p1, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentNcvTransition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    goto :goto_0

    :cond_2
    const-string p1, "AbortIncompleteMultipartUpload"

    .line 2623
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2624
    new-instance p1, Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->abortIncompleteMultipartUpload:Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

    goto :goto_0

    :cond_3
    const-string p1, "Filter"

    .line 2625
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2626
    new-instance p1, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->currentFilter:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

    goto :goto_0

    :cond_4
    const-string p1, "LifecycleConfiguration"

    const-string p3, "Rule"

    const-string p4, "Filter"

    .line 2628
    filled-new-array {p1, p3, p4}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "And"

    .line 2629
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2630
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->andOperandsList:Ljava/util/List;

    :cond_5
    :goto_0
    return-void
.end method

.method public getConfiguration()Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
    .locals 1

    .line 2604
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;

    return-object v0
.end method
