.class public Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;
.super Ljava/lang/Object;
.source "GlobalSecondaryIndexDescription.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private backfilling:Ljava/lang/Boolean;

.field private indexArn:Ljava/lang/String;

.field private indexName:Ljava/lang/String;

.field private indexSizeBytes:Ljava/lang/Long;

.field private indexStatus:Ljava/lang/String;

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

.field private provisionedThroughput:Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;


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

    .line 1343
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;

    if-nez v2, :cond_2

    return v1

    .line 1345
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;

    .line 1347
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexName()Ljava/lang/String;

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

    .line 1349
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1350
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 1352
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getKeySchema()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getKeySchema()Ljava/util/List;

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

    .line 1354
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getKeySchema()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1355
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getKeySchema()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getKeySchema()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 1357
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

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

    .line 1359
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1360
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/dynamodbv2/model/Projection;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 1362
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexStatus()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v0

    goto :goto_6

    :cond_f
    move v2, v1

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexStatus()Ljava/lang/String;

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

    .line 1364
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexStatus()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 1365
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 1367
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getBackfilling()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_13

    move v2, v0

    goto :goto_8

    :cond_13
    move v2, v1

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getBackfilling()Ljava/lang/Boolean;

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

    .line 1369
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getBackfilling()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 1370
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getBackfilling()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getBackfilling()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 1372
    :cond_16
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;

    move-result-object v2

    if-nez v2, :cond_17

    move v2, v0

    goto :goto_a

    :cond_17
    move v2, v1

    :goto_a
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;

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

    .line 1374
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1375
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 1377
    :cond_1a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexSizeBytes()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_1b

    move v2, v0

    goto :goto_c

    :cond_1b
    move v2, v1

    :goto_c
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexSizeBytes()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_1c

    move v3, v0

    goto :goto_d

    :cond_1c
    move v3, v1

    :goto_d
    xor-int/2addr v2, v3

    if-eqz v2, :cond_1d

    return v1

    .line 1379
    :cond_1d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexSizeBytes()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 1380
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexSizeBytes()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexSizeBytes()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 1382
    :cond_1e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_1f

    move v2, v0

    goto :goto_e

    :cond_1f
    move v2, v1

    :goto_e
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_20

    move v3, v0

    goto :goto_f

    :cond_20
    move v3, v1

    :goto_f
    xor-int/2addr v2, v3

    if-eqz v2, :cond_21

    return v1

    .line 1384
    :cond_21
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 1385
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    return v1

    .line 1387
    :cond_22
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexArn()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_23

    move v2, v0

    goto :goto_10

    :cond_23
    move v2, v1

    :goto_10
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexArn()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_24

    move v3, v0

    goto :goto_11

    :cond_24
    move v3, v1

    :goto_11
    xor-int/2addr v2, v3

    if-eqz v2, :cond_25

    return v1

    .line 1389
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexArn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexArn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    return v1

    :cond_26
    return v0
.end method

.method public getBackfilling()Ljava/lang/Boolean;
    .locals 1

    .line 972
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->backfilling:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIndexArn()Ljava/lang/String;
    .locals 1

    .line 1244
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->indexArn:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexName()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->indexName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexSizeBytes()Ljava/lang/Long;
    .locals 1

    .line 1133
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->indexSizeBytes:Ljava/lang/Long;

    return-object v0
.end method

.method public getIndexStatus()Ljava/lang/String;
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->indexStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()Ljava/lang/Long;
    .locals 1

    .line 1190
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->itemCount:Ljava/lang/Long;

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

    .line 287
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->keySchema:Ljava/util/List;

    return-object v0
.end method

.method public getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->projection:Lcom/amazonaws/services/dynamodbv2/model/Projection;

    return-object v0
.end method

.method public getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;
    .locals 1

    .line 1075
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->provisionedThroughput:Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1319
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 1320
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getKeySchema()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getKeySchema()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 1321
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/dynamodbv2/model/Projection;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 1323
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexStatus()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 1325
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getBackfilling()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getBackfilling()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 1328
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;

    move-result-object v3

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 1330
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexSizeBytes()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexSizeBytes()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 1331
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 1332
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexArn()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexArn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v2, v1

    return v2
.end method

.method public isBackfilling()Ljava/lang/Boolean;
    .locals 1

    .line 933
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->backfilling:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setBackfilling(Ljava/lang/Boolean;)V
    .locals 0

    .line 1012
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->backfilling:Ljava/lang/Boolean;

    return-void
.end method

.method public setIndexArn(Ljava/lang/String;)V
    .locals 0

    .line 1258
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->indexArn:Ljava/lang/String;

    return-void
.end method

.method public setIndexName(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->indexName:Ljava/lang/String;

    return-void
.end method

.method public setIndexSizeBytes(Ljava/lang/Long;)V
    .locals 0

    .line 1150
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->indexSizeBytes:Ljava/lang/Long;

    return-void
.end method

.method public setIndexStatus(Lcom/amazonaws/services/dynamodbv2/model/IndexStatus;)V
    .locals 0

    .line 827
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/IndexStatus;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->indexStatus:Ljava/lang/String;

    return-void
.end method

.method public setIndexStatus(Ljava/lang/String;)V
    .locals 0

    .line 699
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->indexStatus:Ljava/lang/String;

    return-void
.end method

.method public setItemCount(Ljava/lang/Long;)V
    .locals 0

    .line 1207
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->itemCount:Ljava/lang/Long;

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

    .line 357
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->keySchema:Ljava/util/List;

    return-void

    .line 361
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->keySchema:Ljava/util/List;

    return-void
.end method

.method public setProjection(Lcom/amazonaws/services/dynamodbv2/model/Projection;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->projection:Lcom/amazonaws/services/dynamodbv2/model/Projection;

    return-void
.end method

.method public setProvisionedThroughput(Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;)V
    .locals 0

    .line 1092
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->provisionedThroughput:Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 1291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IndexName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getKeySchema()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeySchema: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getKeySchema()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Projection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IndexStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getBackfilling()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backfilling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getBackfilling()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProvisionedThroughput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexSizeBytes()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IndexSizeBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexSizeBytes()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ItemCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IndexArn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getIndexArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string/jumbo v1, "}"

    .line 1310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withBackfilling(Ljava/lang/Boolean;)Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;
    .locals 0

    .line 1057
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->backfilling:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withIndexArn(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;
    .locals 0

    .line 1277
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->indexArn:Ljava/lang/String;

    return-object p0
.end method

.method public withIndexName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->indexName:Ljava/lang/String;

    return-object p0
.end method

.method public withIndexSizeBytes(Ljava/lang/Long;)Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;
    .locals 0

    .line 1172
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->indexSizeBytes:Ljava/lang/Long;

    return-object p0
.end method

.method public withIndexStatus(Lcom/amazonaws/services/dynamodbv2/model/IndexStatus;)Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;
    .locals 0

    .line 893
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/IndexStatus;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->indexStatus:Ljava/lang/String;

    return-object p0
.end method

.method public withIndexStatus(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;
    .locals 0

    .line 765
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->indexStatus:Ljava/lang/String;

    return-object p0
.end method

.method public withItemCount(Ljava/lang/Long;)Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;
    .locals 0

    .line 1229
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->itemCount:Ljava/lang/Long;

    return-object p0
.end method

.method public withKeySchema(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;"
        }
    .end annotation

    .line 516
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->setKeySchema(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withKeySchema([Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;)Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;
    .locals 4

    .line 435
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->getKeySchema()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->keySchema:Ljava/util/List;

    .line 438
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 439
    iget-object v3, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->keySchema:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withProjection(Lcom/amazonaws/services/dynamodbv2/model/Projection;)Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->projection:Lcom/amazonaws/services/dynamodbv2/model/Projection;

    return-object p0
.end method

.method public withProvisionedThroughput(Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;)Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;
    .locals 0

    .line 1115
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->provisionedThroughput:Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;

    return-object p0
.end method
