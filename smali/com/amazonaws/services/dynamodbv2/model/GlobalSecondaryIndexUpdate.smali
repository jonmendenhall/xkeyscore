.class public Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;
.super Ljava/lang/Object;
.source "GlobalSecondaryIndexUpdate.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private create:Lcom/amazonaws/services/dynamodbv2/model/CreateGlobalSecondaryIndexAction;

.field private delete:Lcom/amazonaws/services/dynamodbv2/model/DeleteGlobalSecondaryIndexAction;

.field private update:Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
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

    .line 441
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;

    if-nez v2, :cond_2

    return v1

    .line 443
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;

    .line 445
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->getUpdate()Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->getUpdate()Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;

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

    .line 447
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->getUpdate()Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->getUpdate()Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->getUpdate()Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 449
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->getCreate()Lcom/amazonaws/services/dynamodbv2/model/CreateGlobalSecondaryIndexAction;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->getCreate()Lcom/amazonaws/services/dynamodbv2/model/CreateGlobalSecondaryIndexAction;

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

    .line 451
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->getCreate()Lcom/amazonaws/services/dynamodbv2/model/CreateGlobalSecondaryIndexAction;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->getCreate()Lcom/amazonaws/services/dynamodbv2/model/CreateGlobalSecondaryIndexAction;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->getCreate()Lcom/amazonaws/services/dynamodbv2/model/CreateGlobalSecondaryIndexAction;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/dynamodbv2/model/CreateGlobalSecondaryIndexAction;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 453
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->getDelete()Lcom/amazonaws/services/dynamodbv2/model/DeleteGlobalSecondaryIndexAction;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->getDelete()Lcom/amazonaws/services/dynamodbv2/model/DeleteGlobalSecondaryIndexAction;

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

    .line 455
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->getDelete()Lcom/amazonaws/services/dynamodbv2/model/DeleteGlobalSecondaryIndexAction;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->getDelete()Lcom/amazonaws/services/dynamodbv2/model/DeleteGlobalSecondaryIndexAction;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->getDelete()Lcom/amazonaws/services/dynamodbv2/model/DeleteGlobalSecondaryIndexAction;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/dynamodbv2/model/DeleteGlobalSecondaryIndexAction;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getCreate()Lcom/amazonaws/services/dynamodbv2/model/CreateGlobalSecondaryIndexAction;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->create:Lcom/amazonaws/services/dynamodbv2/model/CreateGlobalSecondaryIndexAction;

    return-object v0
.end method

.method public getDelete()Lcom/amazonaws/services/dynamodbv2/model/DeleteGlobalSecondaryIndexAction;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->delete:Lcom/amazonaws/services/dynamodbv2/model/DeleteGlobalSecondaryIndexAction;

    return-object v0
.end method

.method public getUpdate()Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->update:Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 428
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->getUpdate()Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->getUpdate()Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 429
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->getCreate()Lcom/amazonaws/services/dynamodbv2/model/CreateGlobalSecondaryIndexAction;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->getCreate()Lcom/amazonaws/services/dynamodbv2/model/CreateGlobalSecondaryIndexAction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/dynamodbv2/model/CreateGlobalSecondaryIndexAction;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 430
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->getDelete()Lcom/amazonaws/services/dynamodbv2/model/DeleteGlobalSecondaryIndexAction;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->getDelete()Lcom/amazonaws/services/dynamodbv2/model/DeleteGlobalSecondaryIndexAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteGlobalSecondaryIndexAction;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v2, v1

    return v2
.end method

.method public setCreate(Lcom/amazonaws/services/dynamodbv2/model/CreateGlobalSecondaryIndexAction;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->create:Lcom/amazonaws/services/dynamodbv2/model/CreateGlobalSecondaryIndexAction;

    return-void
.end method

.method public setDelete(Lcom/amazonaws/services/dynamodbv2/model/DeleteGlobalSecondaryIndexAction;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->delete:Lcom/amazonaws/services/dynamodbv2/model/DeleteGlobalSecondaryIndexAction;

    return-void
.end method

.method public setUpdate(Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->update:Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->getUpdate()Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->getUpdate()Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->getCreate()Lcom/amazonaws/services/dynamodbv2/model/CreateGlobalSecondaryIndexAction;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->getCreate()Lcom/amazonaws/services/dynamodbv2/model/CreateGlobalSecondaryIndexAction;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->getDelete()Lcom/amazonaws/services/dynamodbv2/model/DeleteGlobalSecondaryIndexAction;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->getDelete()Lcom/amazonaws/services/dynamodbv2/model/DeleteGlobalSecondaryIndexAction;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v1, "}"

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withCreate(Lcom/amazonaws/services/dynamodbv2/model/CreateGlobalSecondaryIndexAction;)Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->create:Lcom/amazonaws/services/dynamodbv2/model/CreateGlobalSecondaryIndexAction;

    return-object p0
.end method

.method public withDelete(Lcom/amazonaws/services/dynamodbv2/model/DeleteGlobalSecondaryIndexAction;)Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->delete:Lcom/amazonaws/services/dynamodbv2/model/DeleteGlobalSecondaryIndexAction;

    return-object p0
.end method

.method public withUpdate(Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;)Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->update:Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;

    return-object p0
.end method
