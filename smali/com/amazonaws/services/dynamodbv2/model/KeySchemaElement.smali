.class public Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;
.super Ljava/lang/Object;
.source "KeySchemaElement.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attributeName:Ljava/lang/String;

.field private keyType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/dynamodbv2/model/KeyType;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;->setAttributeName(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Lcom/amazonaws/services/dynamodbv2/model/KeyType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;->setKeyType(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;->setAttributeName(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;->setKeyType(Ljava/lang/String;)V

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

    .line 634
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;

    if-nez v2, :cond_2

    return v1

    .line 636
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;

    .line 638
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;->getAttributeName()Ljava/lang/String;

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

    .line 640
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 641
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 643
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;->getKeyType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;->getKeyType()Ljava/lang/String;

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

    .line 645
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;->getKeyType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;->getKeyType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;->getKeyType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public getAttributeName()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;->attributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyType()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;->keyType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 622
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v2, v0

    .line 623
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;->getKeyType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;->getKeyType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    return v2
.end method

.method public setAttributeName(Ljava/lang/String;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;->attributeName:Ljava/lang/String;

    return-void
.end method

.method public setKeyType(Lcom/amazonaws/services/dynamodbv2/model/KeyType;)V
    .locals 0

    .line 518
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeyType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;->keyType:Ljava/lang/String;

    return-void
.end method

.method public setKeyType(Ljava/lang/String;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;->keyType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 607
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributeName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;->getKeyType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;->getKeyType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, "}"

    .line 612
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAttributeName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;->attributeName:Ljava/lang/String;

    return-object p0
.end method

.method public withKeyType(Lcom/amazonaws/services/dynamodbv2/model/KeyType;)Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;
    .locals 0

    .line 593
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeyType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;->keyType:Ljava/lang/String;

    return-object p0
.end method

.method public withKeyType(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;->keyType:Ljava/lang/String;

    return-object p0
.end method
