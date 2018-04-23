.class public Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;
.super Ljava/lang/Object;
.source "KeysAndAttributes.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attributesToGet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private consistentRead:Ljava/lang/Boolean;

.field private expressionAttributeNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private projectionExpression:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addExpressionAttributeNamesEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;
    .locals 2

    .line 1156
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->expressionAttributeNames:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->expressionAttributeNames:Ljava/util/Map;

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->expressionAttributeNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1160
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicated keys ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") are provided."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1162
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->expressionAttributeNames:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public clearExpressionAttributeNamesEntries()Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;
    .locals 1

    const/4 v0, 0x0

    .line 1173
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->expressionAttributeNames:Ljava/util/Map;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1228
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;

    if-nez v2, :cond_2

    return v1

    .line 1230
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;

    .line 1232
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getKeys()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getKeys()Ljava/util/List;

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

    .line 1234
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getKeys()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 1236
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getAttributesToGet()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getAttributesToGet()Ljava/util/List;

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

    .line 1238
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getAttributesToGet()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1239
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getAttributesToGet()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getAttributesToGet()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 1241
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getConsistentRead()Ljava/lang/Boolean;

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

    .line 1243
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1244
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 1246
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getProjectionExpression()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v0

    goto :goto_6

    :cond_f
    move v2, v1

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getProjectionExpression()Ljava/lang/String;

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

    .line 1248
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getProjectionExpression()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 1249
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getProjectionExpression()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getProjectionExpression()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 1251
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_13

    move v2, v0

    goto :goto_8

    :cond_13
    move v2, v1

    .line 1252
    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getExpressionAttributeNames()Ljava/util/Map;

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

    .line 1254
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 1255
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return v1

    :cond_16
    return v0
.end method

.method public getAttributesToGet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->attributesToGet:Ljava/util/List;

    return-object v0
.end method

.method public getConsistentRead()Ljava/lang/Boolean;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->consistentRead:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getExpressionAttributeNames()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 740
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->expressionAttributeNames:Ljava/util/Map;

    return-object v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;>;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->keys:Ljava/util/List;

    return-object v0
.end method

.method public getProjectionExpression()Ljava/lang/String;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->projectionExpression:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1207
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getKeys()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 1209
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getAttributesToGet()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getAttributesToGet()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 1211
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 1213
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getProjectionExpression()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getProjectionExpression()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 1216
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v0

    .line 1217
    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v2, v1

    return v2
.end method

.method public isConsistentRead()Ljava/lang/Boolean;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->consistentRead:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAttributesToGet(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 284
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->attributesToGet:Ljava/util/List;

    return-void

    .line 288
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->attributesToGet:Ljava/util/List;

    return-void
.end method

.method public setConsistentRead(Ljava/lang/Boolean;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->consistentRead:Ljava/lang/Boolean;

    return-void
.end method

.method public setExpressionAttributeNames(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 899
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->expressionAttributeNames:Ljava/util/Map;

    return-void
.end method

.method public setKeys(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 193
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->keys:Ljava/util/List;

    return-void

    .line 197
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->keys:Ljava/util/List;

    return-void
.end method

.method public setProjectionExpression(Ljava/lang/String;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->projectionExpression:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 1187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getKeys()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getAttributesToGet()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributesToGet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getAttributesToGet()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConsistentRead: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getProjectionExpression()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProjectionExpression: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getProjectionExpression()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExpressionAttributeNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string/jumbo v1, "}"

    .line 1198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAttributesToGet(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;"
        }
    .end annotation

    .line 342
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->setAttributesToGet(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withAttributesToGet([Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;
    .locals 4

    .line 312
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getAttributesToGet()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->attributesToGet:Ljava/util/List;

    .line 315
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 316
    iget-object v3, p0, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->attributesToGet:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withConsistentRead(Ljava/lang/Boolean;)Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->consistentRead:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withExpressionAttributeNames(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;"
        }
    .end annotation

    .line 1064
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->expressionAttributeNames:Ljava/util/Map;

    return-object p0
.end method

.method public withKeys(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;>;)",
            "Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;"
        }
    .end annotation

    .line 244
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->setKeys(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withKeys([Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;"
        }
    .end annotation

    .line 217
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getKeys()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->keys:Ljava/util/List;

    .line 220
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 221
    iget-object v3, p0, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->keys:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withProjectionExpression(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->projectionExpression:Ljava/lang/String;

    return-object p0
.end method
