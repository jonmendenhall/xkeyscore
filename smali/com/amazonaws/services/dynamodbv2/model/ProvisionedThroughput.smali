.class public Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;
.super Ljava/lang/Object;
.source "ProvisionedThroughput.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private readCapacityUnits:Ljava/lang/Long;

.field private writeCapacityUnits:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->setReadCapacityUnits(Ljava/lang/Long;)V

    .line 93
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->setWriteCapacityUnits(Ljava/lang/Long;)V

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

    .line 299
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    if-nez v2, :cond_2

    return v1

    .line 301
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    .line 303
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->getReadCapacityUnits()Ljava/lang/Long;

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

    .line 305
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 306
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 308
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->getWriteCapacityUnits()Ljava/lang/Long;

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

    .line 310
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 311
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public getReadCapacityUnits()Ljava/lang/Long;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->readCapacityUnits:Ljava/lang/Long;

    return-object v0
.end method

.method public getWriteCapacityUnits()Ljava/lang/Long;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->writeCapacityUnits:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 286
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v2, v0

    .line 288
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    return v2
.end method

.method public setReadCapacityUnits(Ljava/lang/Long;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->readCapacityUnits:Ljava/lang/Long;

    return-void
.end method

.method public setWriteCapacityUnits(Ljava/lang/Long;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->writeCapacityUnits:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReadCapacityUnits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WriteCapacityUnits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, "}"

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withReadCapacityUnits(Ljava/lang/Long;)Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->readCapacityUnits:Ljava/lang/Long;

    return-object p0
.end method

.method public withWriteCapacityUnits(Ljava/lang/Long;)Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->writeCapacityUnits:Ljava/lang/Long;

    return-object p0
.end method
