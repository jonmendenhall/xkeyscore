.class public Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;
.super Ljava/lang/Object;
.source "GetCallerIdentityResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private account:Ljava/lang/String;

.field private arn:Ljava/lang/String;

.field private userId:Ljava/lang/String;


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

    .line 287
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;

    if-nez v2, :cond_2

    return v1

    .line 289
    :cond_2
    check-cast p1, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;

    .line 291
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getUserId()Ljava/lang/String;

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

    .line 293
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 295
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getAccount()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getAccount()Ljava/lang/String;

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

    .line 297
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getAccount()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 299
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getArn()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getArn()Ljava/lang/String;

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

    .line 301
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getArn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getArn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getArn()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->arn:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 274
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getUserId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 275
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getAccount()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 276
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getArn()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getArn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v2, v1

    return v2
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->account:Ljava/lang/String;

    return-void
.end method

.method public setArn(Ljava/lang/String;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->arn:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->userId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getAccount()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Arn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v1, "}"

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAccount(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->account:Ljava/lang/String;

    return-object p0
.end method

.method public withArn(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->arn:Ljava/lang/String;

    return-object p0
.end method

.method public withUserId(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->userId:Ljava/lang/String;

    return-object p0
.end method
