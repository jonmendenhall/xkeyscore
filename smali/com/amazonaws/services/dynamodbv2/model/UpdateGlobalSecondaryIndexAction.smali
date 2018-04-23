.class public Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;
.super Ljava/lang/Object;
.source "UpdateGlobalSecondaryIndexAction.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private indexName:Ljava/lang/String;

.field private provisionedThroughput:Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;


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

    .line 242
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;

    if-nez v2, :cond_2

    return v1

    .line 244
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;

    .line 246
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;->getIndexName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;->getIndexName()Ljava/lang/String;

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

    .line 248
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;->getIndexName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 249
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;->getIndexName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;->getIndexName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 251
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

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

    .line 253
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 254
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public getIndexName()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;->indexName:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;->provisionedThroughput:Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 228
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;->getIndexName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;->getIndexName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v2, v0

    .line 231
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    return v2
.end method

.method public setIndexName(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;->indexName:Ljava/lang/String;

    return-void
.end method

.method public setProvisionedThroughput(Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;->provisionedThroughput:Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;->getIndexName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IndexName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;->getIndexName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProvisionedThroughput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, "}"

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withIndexName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;->indexName:Ljava/lang/String;

    return-object p0
.end method

.method public withProvisionedThroughput(Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;)Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;->provisionedThroughput:Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    return-object p0
.end method
