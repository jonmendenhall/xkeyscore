.class public Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;
.super Ljava/lang/Object;
.source "AttributeValueUpdate.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private action:Ljava/lang/String;

.field private value:Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;Lcom/amazonaws/services/dynamodbv2/model/AttributeAction;)V
    .locals 0

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->setValue(Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;)V

    .line 464
    invoke-virtual {p2}, Lcom/amazonaws/services/dynamodbv2/model/AttributeAction;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->setAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;Ljava/lang/String;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->setValue(Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;)V

    .line 321
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->setAction(Ljava/lang/String;)V

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

    .line 1819
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;

    if-nez v2, :cond_2

    return v1

    .line 1821
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;

    .line 1823
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->getValue()Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->getValue()Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

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

    .line 1825
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->getValue()Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->getValue()Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->getValue()Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 1827
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->getAction()Ljava/lang/String;

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

    .line 1829
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->value:Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1807
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->getValue()Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->getValue()Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v2, v0

    .line 1808
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    return v2
.end method

.method public setAction(Lcom/amazonaws/services/dynamodbv2/model/AttributeAction;)V
    .locals 0

    .line 1531
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeAction;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->action:Ljava/lang/String;

    return-void
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 1039
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->action:Ljava/lang/String;

    return-void
.end method

.method public setValue(Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->value:Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 1793
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1794
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->getValue()Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->getValue()Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1796
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1797
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, "}"

    .line 1798
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1799
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAction(Lcom/amazonaws/services/dynamodbv2/model/AttributeAction;)Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;
    .locals 0

    .line 1779
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeAction;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->action:Ljava/lang/String;

    return-object p0
.end method

.method public withAction(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;
    .locals 0

    .line 1287
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->action:Ljava/lang/String;

    return-object p0
.end method

.method public withValue(Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;)Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->value:Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    return-object p0
.end method
