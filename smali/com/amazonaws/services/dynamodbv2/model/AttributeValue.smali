.class public Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;
.super Ljava/lang/Object;
.source "AttributeValue.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private b:Ljava/nio/ByteBuffer;

.field private bOOL:Ljava/lang/Boolean;

.field private bS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/String;

.field private nS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nULL:Ljava/lang/Boolean;

.field private s:Ljava/lang/String;

.field private sS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->setS(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->setSS(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public addMEntry(Ljava/lang/String;Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;)Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->m:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 554
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->m:Ljava/util/Map;

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
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

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->m:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public clearMEntries()Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;
    .locals 1

    const/4 v0, 0x0

    .line 570
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->m:Ljava/util/Map;

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

    .line 824
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    if-nez v2, :cond_2

    return v1

    .line 826
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    .line 828
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getS()Ljava/lang/String;

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

    .line 830
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 832
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getN()Ljava/lang/String;

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

    .line 834
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 836
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

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

    .line 838
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 840
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v0

    goto :goto_6

    :cond_f
    move v2, v1

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getSS()Ljava/util/List;

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

    .line 842
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 844
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_13

    move v2, v0

    goto :goto_8

    :cond_13
    move v2, v1

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getNS()Ljava/util/List;

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

    .line 846
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 848
    :cond_16
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_17

    move v2, v0

    goto :goto_a

    :cond_17
    move v2, v1

    :goto_a
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_18

    move v3, v0

    goto :goto_b

    :cond_18
    move v3, v1

    :goto_b
    xor-int/2addr v2, v3

    if-eqz v2, :cond_19

    return v1

    .line 850
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 852
    :cond_1a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getM()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_1b

    move v2, v0

    goto :goto_c

    :cond_1b
    move v2, v1

    :goto_c
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getM()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_1c

    move v3, v0

    goto :goto_d

    :cond_1c
    move v3, v1

    :goto_d
    xor-int/2addr v2, v3

    if-eqz v2, :cond_1d

    return v1

    .line 854
    :cond_1d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getM()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getM()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getM()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 856
    :cond_1e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getL()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1f

    move v2, v0

    goto :goto_e

    :cond_1f
    move v2, v1

    :goto_e
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getL()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_20

    move v3, v0

    goto :goto_f

    :cond_20
    move v3, v1

    :goto_f
    xor-int/2addr v2, v3

    if-eqz v2, :cond_21

    return v1

    .line 858
    :cond_21
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getL()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getL()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getL()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    return v1

    .line 860
    :cond_22
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getNULL()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_23

    move v2, v0

    goto :goto_10

    :cond_23
    move v2, v1

    :goto_10
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getNULL()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_24

    move v3, v0

    goto :goto_11

    :cond_24
    move v3, v1

    :goto_11
    xor-int/2addr v2, v3

    if-eqz v2, :cond_25

    return v1

    .line 862
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getNULL()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getNULL()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getNULL()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    return v1

    .line 864
    :cond_26
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getBOOL()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_27

    move v2, v0

    goto :goto_12

    :cond_27
    move v2, v1

    :goto_12
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getBOOL()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_28

    move v3, v0

    goto :goto_13

    :cond_28
    move v3, v1

    :goto_13
    xor-int/2addr v2, v3

    if-eqz v2, :cond_29

    return v1

    .line 866
    :cond_29
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getBOOL()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_2a

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getBOOL()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getBOOL()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    return v1

    :cond_2a
    return v0
.end method

.method public getB()Ljava/nio/ByteBuffer;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->b:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getBOOL()Ljava/lang/Boolean;
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->bOOL:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getBS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->bS:Ljava/util/List;

    return-object v0
.end method

.method public getL()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;"
        }
    .end annotation

    .line 584
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->l:Ljava/util/List;

    return-object v0
.end method

.method public getM()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;"
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->m:Ljava/util/Map;

    return-object v0
.end method

.method public getN()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getNS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->nS:Ljava/util/List;

    return-object v0
.end method

.method public getNULL()Ljava/lang/Boolean;
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->nULL:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getS()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getSS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->sS:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 804
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 805
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 806
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 807
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 808
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 809
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 810
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getM()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getM()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 811
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getL()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getL()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 812
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getNULL()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_8

    move v3, v1

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getNULL()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 813
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getBOOL()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getBOOL()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v2, v1

    return v2
.end method

.method public isBOOL()Ljava/lang/Boolean;
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->bOOL:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isNULL()Ljava/lang/Boolean;
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->nULL:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setB(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->b:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setBOOL(Ljava/lang/Boolean;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->bOOL:Ljava/lang/Boolean;

    return-void
.end method

.method public setBS(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 444
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->bS:Ljava/util/List;

    return-void

    .line 448
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->bS:Ljava/util/List;

    return-void
.end method

.method public setL(Ljava/util/Collection;)V
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

    .line 598
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->l:Ljava/util/List;

    return-void

    .line 602
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->l:Ljava/util/List;

    return-void
.end method

.method public setM(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;)V"
        }
    .end annotation

    .line 517
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->m:Ljava/util/Map;

    return-void
.end method

.method public setN(Ljava/lang/String;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->n:Ljava/lang/String;

    return-void
.end method

.method public setNS(Ljava/util/Collection;)V
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

    .line 370
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->nS:Ljava/util/List;

    return-void

    .line 374
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->nS:Ljava/util/List;

    return-void
.end method

.method public setNULL(Ljava/lang/Boolean;)V
    .locals 0

    .line 684
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->nULL:Ljava/lang/Boolean;

    return-void
.end method

.method public setS(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->s:Ljava/lang/String;

    return-void
.end method

.method public setSS(Ljava/util/Collection;)V
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

    .line 296
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->sS:Ljava/util/List;

    return-void

    .line 300
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->sS:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 774
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "N: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "B: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 784
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getM()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 788
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "M: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getM()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getL()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getL()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getNULL()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 792
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NULL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getNULL()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getBOOL()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getBOOL()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string/jumbo v1, "}"

    .line 795
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withB(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->b:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public withBOOL(Ljava/lang/Boolean;)Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;
    .locals 0

    .line 760
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->bOOL:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withBS(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;"
        }
    .end annotation

    .line 490
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->setBS(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withBS([Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;
    .locals 4

    .line 466
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 467
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->bS:Ljava/util/List;

    .line 469
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 470
    iget-object v3, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->bS:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withL(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;"
        }
    .end annotation

    .line 644
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->setL(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withL([Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;)Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;
    .locals 4

    .line 620
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getL()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 621
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->l:Ljava/util/List;

    .line 623
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 624
    iget-object v3, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withM(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;"
        }
    .end annotation

    .line 535
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->m:Ljava/util/Map;

    return-object p0
.end method

.method public withN(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->n:Ljava/lang/String;

    return-object p0
.end method

.method public withNS(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;"
        }
    .end annotation

    .line 416
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->setNS(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withNS([Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;
    .locals 4

    .line 392
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->nS:Ljava/util/List;

    .line 395
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 396
    iget-object v3, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->nS:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withNULL(Ljava/lang/Boolean;)Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;
    .locals 0

    .line 702
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->nULL:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withS(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->s:Ljava/lang/String;

    return-object p0
.end method

.method public withSS(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;"
        }
    .end annotation

    .line 342
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->setSS(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withSS([Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;
    .locals 4

    .line 318
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->sS:Ljava/util/List;

    .line 321
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 322
    iget-object v3, p0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->sS:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
