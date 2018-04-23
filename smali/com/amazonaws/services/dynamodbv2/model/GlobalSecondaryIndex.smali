.class public Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;
.super Ljava/lang/Object;
.source "GlobalSecondaryIndex.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private indexName:Ljava/lang/String;

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

.field private provisionedThroughput:Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;


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

    .line 653
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;

    if-nez v2, :cond_2

    return v1

    .line 655
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;

    .line 657
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getIndexName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getIndexName()Ljava/lang/String;

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

    .line 659
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getIndexName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 660
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getIndexName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getIndexName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 662
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getKeySchema()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getKeySchema()Ljava/util/List;

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

    .line 664
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getKeySchema()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 665
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getKeySchema()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getKeySchema()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 667
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

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

    .line 669
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 670
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/dynamodbv2/model/Projection;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 672
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v0

    goto :goto_6

    :cond_f
    move v2, v1

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

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

    .line 674
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 675
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v1

    :cond_12
    return v0
.end method

.method public getIndexName()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->indexName:Ljava/lang/String;

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

    .line 223
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->keySchema:Ljava/util/List;

    return-object v0
.end method

.method public getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->projection:Lcom/amazonaws/services/dynamodbv2/model/Projection;

    return-object v0
.end method

.method public getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->provisionedThroughput:Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 637
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getIndexName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getIndexName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 638
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getKeySchema()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getKeySchema()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 639
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/dynamodbv2/model/Projection;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 642
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v2, v1

    return v2
.end method

.method public setIndexName(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->indexName:Ljava/lang/String;

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

    .line 293
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->keySchema:Ljava/util/List;

    return-void

    .line 297
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->keySchema:Ljava/util/List;

    return-void
.end method

.method public setProjection(Lcom/amazonaws/services/dynamodbv2/model/Projection;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->projection:Lcom/amazonaws/services/dynamodbv2/model/Projection;

    return-void
.end method

.method public setProvisionedThroughput(Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->provisionedThroughput:Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 619
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getIndexName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IndexName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getIndexName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getKeySchema()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeySchema: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getKeySchema()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Projection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProvisionedThroughput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo v1, "}"

    .line 628
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withIndexName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->indexName:Ljava/lang/String;

    return-object p0
.end method

.method public withKeySchema(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;"
        }
    .end annotation

    .line 451
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->setKeySchema(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withKeySchema([Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;)Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;
    .locals 4

    .line 371
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->getKeySchema()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->keySchema:Ljava/util/List;

    .line 374
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 375
    iget-object v3, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->keySchema:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withProjection(Lcom/amazonaws/services/dynamodbv2/model/Projection;)Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->projection:Lcom/amazonaws/services/dynamodbv2/model/Projection;

    return-object p0
.end method

.method public withProvisionedThroughput(Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;)Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;->provisionedThroughput:Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    return-object p0
.end method
