.class public Lcom/amazonaws/services/kms/model/CreateKeyRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CreateKeyRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bypassPolicyLockoutSafetyCheck:Ljava/lang/Boolean;

.field private description:Ljava/lang/String;

.field private keyUsage:Ljava/lang/String;

.field private origin:Ljava/lang/String;

.field private policy:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

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

    .line 1205
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/CreateKeyRequest;

    if-nez v2, :cond_2

    return v1

    .line 1207
    :cond_2
    check-cast p1, Lcom/amazonaws/services/kms/model/CreateKeyRequest;

    .line 1209
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getPolicy()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getPolicy()Ljava/lang/String;

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

    .line 1211
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getPolicy()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 1213
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getDescription()Ljava/lang/String;

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

    .line 1215
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1216
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 1218
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getKeyUsage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getKeyUsage()Ljava/lang/String;

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

    .line 1220
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getKeyUsage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getKeyUsage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getKeyUsage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 1222
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getOrigin()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v0

    goto :goto_6

    :cond_f
    move v2, v1

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getOrigin()Ljava/lang/String;

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

    .line 1224
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getOrigin()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getOrigin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getOrigin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 1226
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getBypassPolicyLockoutSafetyCheck()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_13

    move v2, v0

    goto :goto_8

    :cond_13
    move v2, v1

    .line 1227
    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getBypassPolicyLockoutSafetyCheck()Ljava/lang/Boolean;

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

    .line 1229
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getBypassPolicyLockoutSafetyCheck()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 1230
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getBypassPolicyLockoutSafetyCheck()Ljava/lang/Boolean;

    move-result-object p1

    .line 1231
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getBypassPolicyLockoutSafetyCheck()Ljava/lang/Boolean;

    move-result-object v2

    .line 1230
    invoke-virtual {p1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return v1

    :cond_16
    return v0
.end method

.method public getBypassPolicyLockoutSafetyCheck()Ljava/lang/Boolean;
    .locals 1

    .line 1034
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->bypassPolicyLockoutSafetyCheck:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyUsage()Ljava/lang/String;
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->keyUsage:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicy()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->policy:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1186
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getPolicy()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getPolicy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 1188
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 1189
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getKeyUsage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getKeyUsage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 1190
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getOrigin()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getOrigin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 1193
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getBypassPolicyLockoutSafetyCheck()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_4

    .line 1194
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getBypassPolicyLockoutSafetyCheck()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v2, v1

    return v2
.end method

.method public isBypassPolicyLockoutSafetyCheck()Ljava/lang/Boolean;
    .locals 1

    .line 979
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->bypassPolicyLockoutSafetyCheck:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setBypassPolicyLockoutSafetyCheck(Ljava/lang/Boolean;)V
    .locals 0

    .line 1090
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->bypassPolicyLockoutSafetyCheck:Ljava/lang/Boolean;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->description:Ljava/lang/String;

    return-void
.end method

.method public setKeyUsage(Lcom/amazonaws/services/kms/model/KeyUsageType;)V
    .locals 0

    .line 653
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyUsageType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->keyUsage:Ljava/lang/String;

    return-void
.end method

.method public setKeyUsage(Ljava/lang/String;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->keyUsage:Ljava/lang/String;

    return-void
.end method

.method public setOrigin(Lcom/amazonaws/services/kms/model/OriginType;)V
    .locals 0

    .line 872
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/OriginType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->origin:Ljava/lang/String;

    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .locals 0

    .line 774
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->origin:Ljava/lang/String;

    return-void
.end method

.method public setPolicy(Ljava/lang/String;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->policy:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 1166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getPolicy()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getKeyUsage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyUsage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getKeyUsage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getOrigin()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Origin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getOrigin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getBypassPolicyLockoutSafetyCheck()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BypassPolicyLockoutSafetyCheck: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getBypassPolicyLockoutSafetyCheck()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string/jumbo v1, "}"

    .line 1177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withBypassPolicyLockoutSafetyCheck(Ljava/lang/Boolean;)Lcom/amazonaws/services/kms/model/CreateKeyRequest;
    .locals 0

    .line 1152
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->bypassPolicyLockoutSafetyCheck:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/CreateKeyRequest;
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->description:Ljava/lang/String;

    return-object p0
.end method

.method public withKeyUsage(Lcom/amazonaws/services/kms/model/KeyUsageType;)Lcom/amazonaws/services/kms/model/CreateKeyRequest;
    .locals 0

    .line 681
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyUsageType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->keyUsage:Ljava/lang/String;

    return-object p0
.end method

.method public withKeyUsage(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/CreateKeyRequest;
    .locals 0

    .line 629
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->keyUsage:Ljava/lang/String;

    return-object p0
.end method

.method public withOrigin(Lcom/amazonaws/services/kms/model/OriginType;)Lcom/amazonaws/services/kms/model/CreateKeyRequest;
    .locals 0

    .line 923
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/OriginType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->origin:Ljava/lang/String;

    return-object p0
.end method

.method public withOrigin(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/CreateKeyRequest;
    .locals 0

    .line 825
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->origin:Ljava/lang/String;

    return-object p0
.end method

.method public withPolicy(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/CreateKeyRequest;
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->policy:Ljava/lang/String;

    return-object p0
.end method
