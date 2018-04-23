.class public Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;
.super Ljava/lang/Object;
.source "ProvisionedThroughputDescription.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private lastDecreaseDateTime:Ljava/util/Date;

.field private lastIncreaseDateTime:Ljava/util/Date;

.field private numberOfDecreasesToday:Ljava/lang/Long;

.field private readCapacityUnits:Ljava/lang/Long;

.field private writeCapacityUnits:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
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

    .line 457
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;

    if-nez v2, :cond_2

    return v1

    .line 459
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;

    .line 461
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getLastIncreaseDateTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getLastIncreaseDateTime()Ljava/util/Date;

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

    .line 463
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getLastIncreaseDateTime()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 464
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getLastIncreaseDateTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getLastIncreaseDateTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 466
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getLastDecreaseDateTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getLastDecreaseDateTime()Ljava/util/Date;

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

    .line 468
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getLastDecreaseDateTime()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 469
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getLastDecreaseDateTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getLastDecreaseDateTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 471
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getNumberOfDecreasesToday()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getNumberOfDecreasesToday()Ljava/lang/Long;

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

    .line 473
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getNumberOfDecreasesToday()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 474
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getNumberOfDecreasesToday()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getNumberOfDecreasesToday()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 476
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v0

    goto :goto_6

    :cond_f
    move v2, v1

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getReadCapacityUnits()Ljava/lang/Long;

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

    .line 478
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 479
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 481
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_13

    move v2, v0

    goto :goto_8

    :cond_13
    move v2, v1

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getWriteCapacityUnits()Ljava/lang/Long;

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

    .line 483
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 484
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return v1

    :cond_16
    return v0
.end method

.method public getLastDecreaseDateTime()Ljava/util/Date;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->lastDecreaseDateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getLastIncreaseDateTime()Ljava/util/Date;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->lastIncreaseDateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getNumberOfDecreasesToday()Ljava/lang/Long;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->numberOfDecreasesToday:Ljava/lang/Long;

    return-object v0
.end method

.method public getReadCapacityUnits()Ljava/lang/Long;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->readCapacityUnits:Ljava/lang/Long;

    return-object v0
.end method

.method public getWriteCapacityUnits()Ljava/lang/Long;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->writeCapacityUnits:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 436
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getLastIncreaseDateTime()Ljava/util/Date;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getLastIncreaseDateTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 438
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getLastDecreaseDateTime()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getLastDecreaseDateTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 441
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getNumberOfDecreasesToday()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getNumberOfDecreasesToday()Ljava/lang/Long;

    move-result-object v3

    .line 442
    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 444
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 446
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v2, v1

    return v2
.end method

.method public setLastDecreaseDateTime(Ljava/util/Date;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->lastDecreaseDateTime:Ljava/util/Date;

    return-void
.end method

.method public setLastIncreaseDateTime(Ljava/util/Date;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->lastIncreaseDateTime:Ljava/util/Date;

    return-void
.end method

.method public setNumberOfDecreasesToday(Ljava/lang/Long;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->numberOfDecreasesToday:Ljava/lang/Long;

    return-void
.end method

.method public setReadCapacityUnits(Ljava/lang/Long;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->readCapacityUnits:Ljava/lang/Long;

    return-void
.end method

.method public setWriteCapacityUnits(Ljava/lang/Long;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->writeCapacityUnits:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getLastIncreaseDateTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LastIncreaseDateTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getLastIncreaseDateTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getLastDecreaseDateTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LastDecreaseDateTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getLastDecreaseDateTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getNumberOfDecreasesToday()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NumberOfDecreasesToday: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getNumberOfDecreasesToday()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReadCapacityUnits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WriteCapacityUnits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string/jumbo v1, "}"

    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withLastDecreaseDateTime(Ljava/util/Date;)Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->lastDecreaseDateTime:Ljava/util/Date;

    return-object p0
.end method

.method public withLastIncreaseDateTime(Ljava/util/Date;)Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->lastIncreaseDateTime:Ljava/util/Date;

    return-object p0
.end method

.method public withNumberOfDecreasesToday(Ljava/lang/Long;)Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->numberOfDecreasesToday:Ljava/lang/Long;

    return-object p0
.end method

.method public withReadCapacityUnits(Ljava/lang/Long;)Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->readCapacityUnits:Ljava/lang/Long;

    return-object p0
.end method

.method public withWriteCapacityUnits(Ljava/lang/Long;)Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->writeCapacityUnits:Ljava/lang/Long;

    return-object p0
.end method
