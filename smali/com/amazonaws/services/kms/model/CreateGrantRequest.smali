.class public Lcom/amazonaws/services/kms/model/CreateGrantRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CreateGrantRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private constraints:Lcom/amazonaws/services/kms/model/GrantConstraints;

.field private grantTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private granteePrincipal:Ljava/lang/String;

.field private keyId:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private operations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private retiringPrincipal:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->operations:Ljava/util/List;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->grantTokens:Ljava/util/List;

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

    .line 1098
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/CreateGrantRequest;

    if-nez v2, :cond_2

    return v1

    .line 1100
    :cond_2
    check-cast p1, Lcom/amazonaws/services/kms/model/CreateGrantRequest;

    .line 1102
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getKeyId()Ljava/lang/String;

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

    .line 1104
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 1106
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getGranteePrincipal()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getGranteePrincipal()Ljava/lang/String;

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

    .line 1108
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getGranteePrincipal()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1109
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getGranteePrincipal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getGranteePrincipal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 1111
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getRetiringPrincipal()Ljava/lang/String;

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

    .line 1113
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1114
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 1116
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getOperations()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v0

    goto :goto_6

    :cond_f
    move v2, v1

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getOperations()Ljava/util/List;

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

    .line 1118
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getOperations()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 1119
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getOperations()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getOperations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 1121
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v2

    if-nez v2, :cond_13

    move v2, v0

    goto :goto_8

    :cond_13
    move v2, v1

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;

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

    .line 1123
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 1124
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/kms/model/GrantConstraints;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 1126
    :cond_16
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_17

    move v2, v0

    goto :goto_a

    :cond_17
    move v2, v1

    :goto_a
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getGrantTokens()Ljava/util/List;

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

    .line 1128
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1129
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 1131
    :cond_1a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b

    move v2, v0

    goto :goto_c

    :cond_1b
    move v2, v1

    :goto_c
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getName()Ljava/lang/String;

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

    .line 1133
    :cond_1d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    return v1

    :cond_1e
    return v0
.end method

.method public getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->constraints:Lcom/amazonaws/services/kms/model/GrantConstraints;

    return-object v0
.end method

.method public getGrantTokens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 781
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->grantTokens:Ljava/util/List;

    return-object v0
.end method

.method public getGranteePrincipal()Ljava/lang/String;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->granteePrincipal:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 930
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOperations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->operations:Ljava/util/List;

    return-object v0
.end method

.method public getRetiringPrincipal()Ljava/lang/String;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->retiringPrincipal:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1077
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getKeyId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getKeyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 1079
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getGranteePrincipal()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getGranteePrincipal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 1081
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 1082
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getOperations()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getOperations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 1084
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/kms/model/GrantConstraints;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 1086
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 1087
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v2, v1

    return v2
.end method

.method public setConstraints(Lcom/amazonaws/services/kms/model/GrantConstraints;)V
    .locals 0

    .line 719
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->constraints:Lcom/amazonaws/services/kms/model/GrantConstraints;

    return-void
.end method

.method public setGrantTokens(Ljava/util/Collection;)V
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

    .line 807
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->grantTokens:Ljava/util/List;

    return-void

    .line 811
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->grantTokens:Ljava/util/List;

    return-void
.end method

.method public setGranteePrincipal(Ljava/lang/String;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->granteePrincipal:Ljava/lang/String;

    return-void
.end method

.method public setKeyId(Ljava/lang/String;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->keyId:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 982
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->name:Ljava/lang/String;

    return-void
.end method

.method public setOperations(Ljava/util/Collection;)V
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

    .line 610
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->operations:Ljava/util/List;

    return-void

    .line 614
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->operations:Ljava/util/List;

    return-void
.end method

.method public setRetiringPrincipal(Ljava/lang/String;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->retiringPrincipal:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 1053
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1055
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getGranteePrincipal()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1057
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GranteePrincipal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getGranteePrincipal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1059
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RetiringPrincipal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getOperations()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1061
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getOperations()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1063
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constraints: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1065
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GrantTokens: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string/jumbo v1, "}"

    .line 1068
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withConstraints(Lcom/amazonaws/services/kms/model/GrantConstraints;)Lcom/amazonaws/services/kms/model/CreateGrantRequest;
    .locals 0

    .line 755
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->constraints:Lcom/amazonaws/services/kms/model/GrantConstraints;

    return-object p0
.end method

.method public withGrantTokens(Ljava/util/Collection;)Lcom/amazonaws/services/kms/model/CreateGrantRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/kms/model/CreateGrantRequest;"
        }
    .end annotation

    .line 877
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->setGrantTokens(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withGrantTokens([Ljava/lang/String;)Lcom/amazonaws/services/kms/model/CreateGrantRequest;
    .locals 4

    .line 841
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 842
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->grantTokens:Ljava/util/List;

    .line 844
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 845
    iget-object v3, p0, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->grantTokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withGranteePrincipal(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/CreateGrantRequest;
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->granteePrincipal:Ljava/lang/String;

    return-object p0
.end method

.method public withKeyId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/CreateGrantRequest;
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->keyId:Ljava/lang/String;

    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/CreateGrantRequest;
    .locals 0

    .line 1039
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->name:Ljava/lang/String;

    return-object p0
.end method

.method public withOperations(Ljava/util/Collection;)Lcom/amazonaws/services/kms/model/CreateGrantRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/kms/model/CreateGrantRequest;"
        }
    .end annotation

    .line 656
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->setOperations(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withOperations([Ljava/lang/String;)Lcom/amazonaws/services/kms/model/CreateGrantRequest;
    .locals 4

    .line 632
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->getOperations()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 633
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->operations:Ljava/util/List;

    .line 635
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 636
    iget-object v3, p0, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->operations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withRetiringPrincipal(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/CreateGrantRequest;
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateGrantRequest;->retiringPrincipal:Ljava/lang/String;

    return-object p0
.end method
