.class public Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;
.super Ljava/lang/Object;
.source "ExpectedAttributeValue.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attributeValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;"
        }
    .end annotation
.end field

.field private comparisonOperator:Ljava/lang/String;

.field private exists:Ljava/lang/Boolean;

.field private value:Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;)V
    .locals 0

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->setValue(Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 0

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->setExists(Ljava/lang/Boolean;)V

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

    .line 3577
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;

    if-nez v2, :cond_2

    return v1

    .line 3579
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;

    .line 3581
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getValue()Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getValue()Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

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

    .line 3583
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getValue()Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getValue()Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getValue()Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 3585
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getExists()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getExists()Ljava/lang/Boolean;

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

    .line 3587
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getExists()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getExists()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getExists()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 3589
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getComparisonOperator()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getComparisonOperator()Ljava/lang/String;

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

    .line 3591
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getComparisonOperator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 3592
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getComparisonOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getComparisonOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 3594
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getAttributeValueList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v0

    goto :goto_6

    :cond_f
    move v2, v1

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getAttributeValueList()Ljava/util/List;

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

    .line 3596
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getAttributeValueList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 3597
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getAttributeValueList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getAttributeValueList()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v1

    :cond_12
    return v0
.end method

.method public getAttributeValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;"
        }
    .end annotation

    .line 3326
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->attributeValueList:Ljava/util/List;

    return-object v0
.end method

.method public getComparisonOperator()Ljava/lang/String;
    .locals 1

    .line 1422
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->comparisonOperator:Ljava/lang/String;

    return-object v0
.end method

.method public getExists()Ljava/lang/Boolean;
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->exists:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getValue()Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->value:Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 3561
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getValue()Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getValue()Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 3562
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getExists()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getExists()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 3564
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getComparisonOperator()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getComparisonOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 3566
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getAttributeValueList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getAttributeValueList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v2, v1

    return v2
.end method

.method public isExists()Ljava/lang/Boolean;
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->exists:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAttributeValueList(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3387
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->attributeValueList:Ljava/util/List;

    return-void

    .line 3391
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->attributeValueList:Ljava/util/List;

    return-void
.end method

.method public setComparisonOperator(Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;)V
    .locals 0

    .line 2802
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->comparisonOperator:Ljava/lang/String;

    return-void
.end method

.method public setComparisonOperator(Ljava/lang/String;)V
    .locals 0

    .line 1880
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->comparisonOperator:Ljava/lang/String;

    return-void
.end method

.method public setExists(Ljava/lang/Boolean;)V
    .locals 0

    .line 859
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->exists:Ljava/lang/Boolean;

    return-void
.end method

.method public setValue(Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->value:Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 3542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 3543
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3544
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getValue()Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getValue()Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3546
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getExists()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getExists()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3548
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getComparisonOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ComparisonOperator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getComparisonOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3550
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getAttributeValueList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributeValueList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getAttributeValueList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo v1, "}"

    .line 3552
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3553
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAttributeValueList(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;"
        }
    .end annotation

    .line 3529
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->setAttributeValueList(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withAttributeValueList([Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;)Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;
    .locals 4

    .line 3456
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getAttributeValueList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3457
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->attributeValueList:Ljava/util/List;

    .line 3460
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 3461
    iget-object v3, p0, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->attributeValueList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withComparisonOperator(Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;)Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;
    .locals 0

    .line 3265
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->comparisonOperator:Ljava/lang/String;

    return-object p0
.end method

.method public withComparisonOperator(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;
    .locals 0

    .line 2343
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->comparisonOperator:Ljava/lang/String;

    return-object p0
.end method

.method public withExists(Ljava/lang/Boolean;)Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;
    .locals 0

    .line 967
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->exists:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withValue(Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;)Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->value:Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    return-object p0
.end method
