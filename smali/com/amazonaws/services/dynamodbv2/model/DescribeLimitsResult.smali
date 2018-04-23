.class public Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;
.super Ljava/lang/Object;
.source "DescribeLimitsResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private accountMaxReadCapacityUnits:Ljava/lang/Long;

.field private accountMaxWriteCapacityUnits:Ljava/lang/Long;

.field private tableMaxReadCapacityUnits:Ljava/lang/Long;

.field private tableMaxWriteCapacityUnits:Ljava/lang/Long;


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

    .line 390
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;

    if-nez v2, :cond_2

    return v1

    .line 392
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;

    .line 394
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getAccountMaxReadCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    .line 395
    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getAccountMaxReadCapacityUnits()Ljava/lang/Long;

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

    .line 397
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getAccountMaxReadCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 398
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getAccountMaxReadCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    .line 399
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getAccountMaxReadCapacityUnits()Ljava/lang/Long;

    move-result-object v3

    .line 398
    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 401
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getAccountMaxWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    .line 402
    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getAccountMaxWriteCapacityUnits()Ljava/lang/Long;

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

    .line 404
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getAccountMaxWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 405
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getAccountMaxWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    .line 406
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getAccountMaxWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v3

    .line 405
    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 408
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getTableMaxReadCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    .line 409
    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getTableMaxReadCapacityUnits()Ljava/lang/Long;

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

    .line 411
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getTableMaxReadCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 412
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getTableMaxReadCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getTableMaxReadCapacityUnits()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 414
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getTableMaxWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v0

    goto :goto_6

    :cond_f
    move v2, v1

    .line 415
    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getTableMaxWriteCapacityUnits()Ljava/lang/Long;

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

    .line 417
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getTableMaxWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 418
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getTableMaxWriteCapacityUnits()Ljava/lang/Long;

    move-result-object p1

    .line 419
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getTableMaxWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    .line 418
    invoke-virtual {p1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v1

    :cond_12
    return v0
.end method

.method public getAccountMaxReadCapacityUnits()Ljava/lang/Long;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->accountMaxReadCapacityUnits:Ljava/lang/Long;

    return-object v0
.end method

.method public getAccountMaxWriteCapacityUnits()Ljava/lang/Long;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->accountMaxWriteCapacityUnits:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableMaxReadCapacityUnits()Ljava/lang/Long;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->tableMaxReadCapacityUnits:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableMaxWriteCapacityUnits()Ljava/lang/Long;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->tableMaxWriteCapacityUnits:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 366
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getAccountMaxReadCapacityUnits()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getAccountMaxReadCapacityUnits()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 370
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getAccountMaxWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    .line 371
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getAccountMaxWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 374
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getTableMaxReadCapacityUnits()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getTableMaxReadCapacityUnits()Ljava/lang/Long;

    move-result-object v3

    .line 375
    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 378
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getTableMaxWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getTableMaxWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v2, v1

    return v2
.end method

.method public setAccountMaxReadCapacityUnits(Ljava/lang/Long;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->accountMaxReadCapacityUnits:Ljava/lang/Long;

    return-void
.end method

.method public setAccountMaxWriteCapacityUnits(Ljava/lang/Long;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->accountMaxWriteCapacityUnits:Ljava/lang/Long;

    return-void
.end method

.method public setTableMaxReadCapacityUnits(Ljava/lang/Long;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->tableMaxReadCapacityUnits:Ljava/lang/Long;

    return-void
.end method

.method public setTableMaxWriteCapacityUnits(Ljava/lang/Long;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->tableMaxWriteCapacityUnits:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getAccountMaxReadCapacityUnits()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccountMaxReadCapacityUnits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getAccountMaxReadCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getAccountMaxWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccountMaxWriteCapacityUnits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getAccountMaxWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getTableMaxReadCapacityUnits()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableMaxReadCapacityUnits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getTableMaxReadCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getTableMaxWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableMaxWriteCapacityUnits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->getTableMaxWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo v1, "}"

    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAccountMaxReadCapacityUnits(Ljava/lang/Long;)Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->accountMaxReadCapacityUnits:Ljava/lang/Long;

    return-object p0
.end method

.method public withAccountMaxWriteCapacityUnits(Ljava/lang/Long;)Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->accountMaxWriteCapacityUnits:Ljava/lang/Long;

    return-object p0
.end method

.method public withTableMaxReadCapacityUnits(Ljava/lang/Long;)Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->tableMaxReadCapacityUnits:Ljava/lang/Long;

    return-object p0
.end method

.method public withTableMaxWriteCapacityUnits(Ljava/lang/Long;)Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DescribeLimitsResult;->tableMaxWriteCapacityUnits:Ljava/lang/Long;

    return-object p0
.end method
