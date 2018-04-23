.class public Lcom/amazonaws/services/kms/model/GrantListEntry;
.super Ljava/lang/Object;
.source "GrantListEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private constraints:Lcom/amazonaws/services/kms/model/GrantConstraints;

.field private creationDate:Ljava/util/Date;

.field private grantId:Ljava/lang/String;

.field private granteePrincipal:Ljava/lang/String;

.field private issuingAccount:Ljava/lang/String;

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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->operations:Ljava/util/List;

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

    .line 682
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/GrantListEntry;

    if-nez v2, :cond_2

    return v1

    .line 684
    :cond_2
    check-cast p1, Lcom/amazonaws/services/kms/model/GrantListEntry;

    .line 686
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getKeyId()Ljava/lang/String;

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

    .line 688
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 690
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGrantId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGrantId()Ljava/lang/String;

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

    .line 692
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGrantId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGrantId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGrantId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 694
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getName()Ljava/lang/String;

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

    .line 696
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 698
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getCreationDate()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v0

    goto :goto_6

    :cond_f
    move v2, v1

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getCreationDate()Ljava/util/Date;

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

    .line 700
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getCreationDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 701
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getCreationDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getCreationDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 703
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGranteePrincipal()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    move v2, v0

    goto :goto_8

    :cond_13
    move v2, v1

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGranteePrincipal()Ljava/lang/String;

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

    .line 705
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGranteePrincipal()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 706
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGranteePrincipal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGranteePrincipal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 708
    :cond_16
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    move v2, v0

    goto :goto_a

    :cond_17
    move v2, v1

    :goto_a
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getRetiringPrincipal()Ljava/lang/String;

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

    .line 710
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 711
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 713
    :cond_1a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getIssuingAccount()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b

    move v2, v0

    goto :goto_c

    :cond_1b
    move v2, v1

    :goto_c
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getIssuingAccount()Ljava/lang/String;

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

    .line 715
    :cond_1d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getIssuingAccount()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 716
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getIssuingAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getIssuingAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 718
    :cond_1e
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getOperations()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1f

    move v2, v0

    goto :goto_e

    :cond_1f
    move v2, v1

    :goto_e
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getOperations()Ljava/util/List;

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

    .line 720
    :cond_21
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getOperations()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 721
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getOperations()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getOperations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    return v1

    .line 723
    :cond_22
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v2

    if-nez v2, :cond_23

    move v2, v0

    goto :goto_10

    :cond_23
    move v2, v1

    :goto_10
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;

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

    .line 725
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 726
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/kms/model/GrantConstraints;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    return v1

    :cond_26
    return v0
.end method

.method public getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->constraints:Lcom/amazonaws/services/kms/model/GrantConstraints;

    return-object v0
.end method

.method public getCreationDate()Ljava/util/Date;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->creationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getGrantId()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->grantId:Ljava/lang/String;

    return-object v0
.end method

.method public getGranteePrincipal()Ljava/lang/String;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->granteePrincipal:Ljava/lang/String;

    return-object v0
.end method

.method public getIssuingAccount()Ljava/lang/String;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->issuingAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->name:Ljava/lang/String;

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

    .line 511
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->operations:Ljava/util/List;

    return-object v0
.end method

.method public getRetiringPrincipal()Ljava/lang/String;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->retiringPrincipal:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 658
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getKeyId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getKeyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 659
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGrantId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGrantId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 660
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 662
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getCreationDate()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getCreationDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 664
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGranteePrincipal()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGranteePrincipal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 666
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 668
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getIssuingAccount()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getIssuingAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 669
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getOperations()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getOperations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 671
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/kms/model/GrantConstraints;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v2, v1

    return v2
.end method

.method public setConstraints(Lcom/amazonaws/services/kms/model/GrantConstraints;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->constraints:Lcom/amazonaws/services/kms/model/GrantConstraints;

    return-void
.end method

.method public setCreationDate(Ljava/util/Date;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->creationDate:Ljava/util/Date;

    return-void
.end method

.method public setGrantId(Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->grantId:Ljava/lang/String;

    return-void
.end method

.method public setGranteePrincipal(Ljava/lang/String;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->granteePrincipal:Ljava/lang/String;

    return-void
.end method

.method public setIssuingAccount(Ljava/lang/String;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->issuingAccount:Ljava/lang/String;

    return-void
.end method

.method public setKeyId(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->keyId:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->name:Ljava/lang/String;

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

    .line 525
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->operations:Ljava/util/List;

    return-void

    .line 529
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->operations:Ljava/util/List;

    return-void
.end method

.method public setRetiringPrincipal(Ljava/lang/String;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->retiringPrincipal:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 630
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGrantId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GrantId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGrantId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getCreationDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreationDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getCreationDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGranteePrincipal()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GranteePrincipal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGranteePrincipal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RetiringPrincipal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getIssuingAccount()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IssuingAccount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getIssuingAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getOperations()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getOperations()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constraints: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string/jumbo v1, "}"

    .line 649
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withConstraints(Lcom/amazonaws/services/kms/model/GrantConstraints;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->constraints:Lcom/amazonaws/services/kms/model/GrantConstraints;

    return-object p0
.end method

.method public withCreationDate(Ljava/util/Date;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->creationDate:Ljava/util/Date;

    return-object p0
.end method

.method public withGrantId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->grantId:Ljava/lang/String;

    return-object p0
.end method

.method public withGranteePrincipal(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->granteePrincipal:Ljava/lang/String;

    return-object p0
.end method

.method public withIssuingAccount(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->issuingAccount:Ljava/lang/String;

    return-object p0
.end method

.method public withKeyId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->keyId:Ljava/lang/String;

    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->name:Ljava/lang/String;

    return-object p0
.end method

.method public withOperations(Ljava/util/Collection;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/kms/model/GrantListEntry;"
        }
    .end annotation

    .line 571
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->setOperations(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withOperations([Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .locals 4

    .line 547
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getOperations()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 548
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->operations:Ljava/util/List;

    .line 550
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 551
    iget-object v3, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->operations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withRetiringPrincipal(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->retiringPrincipal:Ljava/lang/String;

    return-object p0
.end method
