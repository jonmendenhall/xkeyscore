.class public Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;
.super Ljava/lang/Object;
.source "WriteRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private deleteRequest:Lcom/amazonaws/services/dynamodbv2/model/DeleteRequest;

.field private putRequest:Lcom/amazonaws/services/dynamodbv2/model/PutRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/dynamodbv2/model/DeleteRequest;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;->setDeleteRequest(Lcom/amazonaws/services/dynamodbv2/model/DeleteRequest;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/dynamodbv2/model/PutRequest;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;->setPutRequest(Lcom/amazonaws/services/dynamodbv2/model/PutRequest;)V

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

    .line 205
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;

    if-nez v2, :cond_2

    return v1

    .line 207
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;

    .line 209
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;->getPutRequest()Lcom/amazonaws/services/dynamodbv2/model/PutRequest;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;->getPutRequest()Lcom/amazonaws/services/dynamodbv2/model/PutRequest;

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

    .line 211
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;->getPutRequest()Lcom/amazonaws/services/dynamodbv2/model/PutRequest;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 212
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;->getPutRequest()Lcom/amazonaws/services/dynamodbv2/model/PutRequest;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;->getPutRequest()Lcom/amazonaws/services/dynamodbv2/model/PutRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/dynamodbv2/model/PutRequest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 214
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;->getDeleteRequest()Lcom/amazonaws/services/dynamodbv2/model/DeleteRequest;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;->getDeleteRequest()Lcom/amazonaws/services/dynamodbv2/model/DeleteRequest;

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

    .line 216
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;->getDeleteRequest()Lcom/amazonaws/services/dynamodbv2/model/DeleteRequest;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 217
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;->getDeleteRequest()Lcom/amazonaws/services/dynamodbv2/model/DeleteRequest;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;->getDeleteRequest()Lcom/amazonaws/services/dynamodbv2/model/DeleteRequest;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/dynamodbv2/model/DeleteRequest;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public getDeleteRequest()Lcom/amazonaws/services/dynamodbv2/model/DeleteRequest;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;->deleteRequest:Lcom/amazonaws/services/dynamodbv2/model/DeleteRequest;

    return-object v0
.end method

.method public getPutRequest()Lcom/amazonaws/services/dynamodbv2/model/PutRequest;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;->putRequest:Lcom/amazonaws/services/dynamodbv2/model/PutRequest;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 192
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;->getPutRequest()Lcom/amazonaws/services/dynamodbv2/model/PutRequest;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;->getPutRequest()Lcom/amazonaws/services/dynamodbv2/model/PutRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodbv2/model/PutRequest;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v2, v0

    .line 194
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;->getDeleteRequest()Lcom/amazonaws/services/dynamodbv2/model/DeleteRequest;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;->getDeleteRequest()Lcom/amazonaws/services/dynamodbv2/model/DeleteRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteRequest;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    return v2
.end method

.method public setDeleteRequest(Lcom/amazonaws/services/dynamodbv2/model/DeleteRequest;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;->deleteRequest:Lcom/amazonaws/services/dynamodbv2/model/DeleteRequest;

    return-void
.end method

.method public setPutRequest(Lcom/amazonaws/services/dynamodbv2/model/PutRequest;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;->putRequest:Lcom/amazonaws/services/dynamodbv2/model/PutRequest;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;->getPutRequest()Lcom/amazonaws/services/dynamodbv2/model/PutRequest;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PutRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;->getPutRequest()Lcom/amazonaws/services/dynamodbv2/model/PutRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;->getDeleteRequest()Lcom/amazonaws/services/dynamodbv2/model/DeleteRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeleteRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;->getDeleteRequest()Lcom/amazonaws/services/dynamodbv2/model/DeleteRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, "}"

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withDeleteRequest(Lcom/amazonaws/services/dynamodbv2/model/DeleteRequest;)Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;->deleteRequest:Lcom/amazonaws/services/dynamodbv2/model/DeleteRequest;

    return-object p0
.end method

.method public withPutRequest(Lcom/amazonaws/services/dynamodbv2/model/PutRequest;)Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;->putRequest:Lcom/amazonaws/services/dynamodbv2/model/PutRequest;

    return-object p0
.end method
