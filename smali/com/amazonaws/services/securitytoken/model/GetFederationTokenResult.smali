.class public Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;
.super Ljava/lang/Object;
.source "GetFederationTokenResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private credentials:Lcom/amazonaws/services/securitytoken/model/Credentials;

.field private federatedUser:Lcom/amazonaws/services/securitytoken/model/FederatedUser;

.field private packedPolicySize:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
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

    .line 336
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;

    if-nez v2, :cond_2

    return v1

    .line 338
    :cond_2
    check-cast p1, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;

    .line 340
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

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

    .line 342
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 343
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/securitytoken/model/Credentials;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 345
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getFederatedUser()Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getFederatedUser()Lcom/amazonaws/services/securitytoken/model/FederatedUser;

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

    .line 347
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getFederatedUser()Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 348
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getFederatedUser()Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getFederatedUser()Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/securitytoken/model/FederatedUser;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 350
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getPackedPolicySize()Ljava/lang/Integer;

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

    .line 352
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 353
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->credentials:Lcom/amazonaws/services/securitytoken/model/Credentials;

    return-object v0
.end method

.method public getFederatedUser()Lcom/amazonaws/services/securitytoken/model/FederatedUser;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->federatedUser:Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    return-object v0
.end method

.method public getPackedPolicySize()Ljava/lang/Integer;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->packedPolicySize:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 321
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/Credentials;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 323
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getFederatedUser()Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getFederatedUser()Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/securitytoken/model/FederatedUser;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 325
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v2, v1

    return v2
.end method

.method public setCredentials(Lcom/amazonaws/services/securitytoken/model/Credentials;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->credentials:Lcom/amazonaws/services/securitytoken/model/Credentials;

    return-void
.end method

.method public setFederatedUser(Lcom/amazonaws/services/securitytoken/model/FederatedUser;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->federatedUser:Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    return-void
.end method

.method public setPackedPolicySize(Ljava/lang/Integer;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->packedPolicySize:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Credentials: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getFederatedUser()Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FederatedUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getFederatedUser()Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackedPolicySize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v1, "}"

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withCredentials(Lcom/amazonaws/services/securitytoken/model/Credentials;)Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->credentials:Lcom/amazonaws/services/securitytoken/model/Credentials;

    return-object p0
.end method

.method public withFederatedUser(Lcom/amazonaws/services/securitytoken/model/FederatedUser;)Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->federatedUser:Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    return-object p0
.end method

.method public withPackedPolicySize(Ljava/lang/Integer;)Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->packedPolicySize:Ljava/lang/Integer;

    return-object p0
.end method
