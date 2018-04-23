.class public Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;
.super Ljava/lang/Object;
.source "LocalSecondaryIndexDescription.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private indexArn:Ljava/lang/String;

.field private indexName:Ljava/lang/String;

.field private indexSizeBytes:Ljava/lang/Long;

.field private itemCount:Ljava/lang/Long;

.field private keySchema:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;",
            ">;"
        }
    .end annotation
.end field

.field private projection:Lcom/amazonaws/services/dynamodbv2/model/Projection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 730
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;

    if-nez v2, :cond_2

    return v1

    .line 732
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;

    .line 734
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getIndexName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getIndexName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v0

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    xor-int/2addr v2, v3

    if-eqz v2, :cond_5

    return v1

    .line 736
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getIndexName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 737
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getIndexName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getIndexName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 739
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getKeySchema()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getKeySchema()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_8

    move v3, v0

    goto :goto_3

    :cond_8
    move v3, v1

    :goto_3
    xor-int/2addr v2, v3

    if-eqz v2, :cond_9

    return v1

    .line 741
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getKeySchema()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 742
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getKeySchema()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getKeySchema()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 744
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object v3

    if-nez v3, :cond_c

    move v3, v0

    goto :goto_5

    :cond_c
    move v3, v1

    :goto_5
    xor-int/2addr v2, v3

    if-eqz v2, :cond_d

    return v1

    .line 746
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 747
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/dynamodbv2/model/Projection;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 749
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getIndexSizeBytes()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v0

    goto :goto_6

    :cond_f
    move v2, v1

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getIndexSizeBytes()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_10

    move v3, v0

    goto :goto_7

    :cond_10
    move v3, v1

    :goto_7
    xor-int/2addr v2, v3

    if-eqz v2, :cond_11

    return v1

    .line 751
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getIndexSizeBytes()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 752
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getIndexSizeBytes()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getIndexSizeBytes()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 754
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_13

    move v2, v0

    goto :goto_8

    :cond_13
    move v2, v1

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_14

    move v3, v0

    goto :goto_9

    :cond_14
    move v3, v1

    :goto_9
    xor-int/2addr v2, v3

    if-eqz v2, :cond_15

    return v1

    .line 756
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 757
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 759
    :cond_16
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getIndexArn()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    move v2, v0

    goto :goto_a

    :cond_17
    move v2, v1

    :goto_a
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getIndexArn()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_18

    move v3, v0

    goto :goto_b

    :cond_18
    move v3, v1

    :goto_b
    xor-int/2addr v2, v3

    if-eqz v2, :cond_19

    return v1

    .line 761
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getIndexArn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getIndexArn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getIndexArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    return v1

    :cond_1a
    return v0
.end method

.method public getIndexArn()Ljava/lang/String;
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->indexArn:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexName()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->indexName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexSizeBytes()Ljava/lang/Long;
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->indexSizeBytes:Ljava/lang/Long;

    return-object v0
.end method

.method public getItemCount()Ljava/lang/Long;
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->itemCount:Ljava/lang/Long;

    return-object v0
.end method

.method public getKeySchema()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;",
            ">;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->keySchema:Ljava/util/List;

    return-object v0
.end method

.method public getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->projection:Lcom/amazonaws/services/dynamodbv2/model/Projection;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 713
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getIndexName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getIndexName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 714
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getKeySchema()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getKeySchema()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 715
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/dynamodbv2/model/Projection;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 717
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getIndexSizeBytes()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getIndexSizeBytes()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 718
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 719
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getIndexArn()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getIndexArn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v2, v1

    return v2
.end method

.method public setIndexArn(Ljava/lang/String;)V
    .locals 0

    .line 658
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->indexArn:Ljava/lang/String;

    return-void
.end method

.method public setIndexName(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->indexName:Ljava/lang/String;

    return-void
.end method

.method public setIndexSizeBytes(Ljava/lang/Long;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->indexSizeBytes:Ljava/lang/Long;

    return-void
.end method

.method public setItemCount(Ljava/lang/Long;)V
    .locals 0

    .line 607
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->itemCount:Ljava/lang/Long;

    return-void
.end method

.method public setKeySchema(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 296
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->keySchema:Ljava/util/List;

    return-void

    .line 300
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->keySchema:Ljava/util/List;

    return-void
.end method

.method public setProjection(Lcom/amazonaws/services/dynamodbv2/model/Projection;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->projection:Lcom/amazonaws/services/dynamodbv2/model/Projection;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 691
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getIndexName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IndexName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getIndexName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getKeySchema()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeySchema: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getKeySchema()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Projection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getIndexSizeBytes()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IndexSizeBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getIndexSizeBytes()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 701
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ItemCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getIndexArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IndexArn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getIndexArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string/jumbo v1, "}"

    .line 704
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withIndexArn(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;
    .locals 0

    .line 677
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->indexArn:Ljava/lang/String;

    return-object p0
.end method

.method public withIndexName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->indexName:Ljava/lang/String;

    return-object p0
.end method

.method public withIndexSizeBytes(Ljava/lang/Long;)Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->indexSizeBytes:Ljava/lang/Long;

    return-object p0
.end method

.method public withItemCount(Ljava/lang/Long;)Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;
    .locals 0

    .line 629
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->itemCount:Ljava/lang/Long;

    return-object p0
.end method

.method public withKeySchema(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;"
        }
    .end annotation

    .line 455
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->setKeySchema(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withKeySchema([Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;)Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;
    .locals 4

    .line 374
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->getKeySchema()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->keySchema:Ljava/util/List;

    .line 377
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 378
    iget-object v3, p0, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->keySchema:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withProjection(Lcom/amazonaws/services/dynamodbv2/model/Projection;)Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->projection:Lcom/amazonaws/services/dynamodbv2/model/Projection;

    return-object p0
.end method
